import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snedson_dued/presentation/blocs/auth/auth_provider.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DuedHeader(title: 'Профиль'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: const AssetImage('assets/images/urfu_logo_white.png'),
                    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  const SizedBox(height: 16),
                  Consumer<AuthProvider>(
                    builder: (context, provider, child) {
                      return Text(
                        provider.userEmail ?? '',
                        style: Theme.of(context).textTheme.bodyLarge,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary),
                    title: const Text('Настройки'),
                    onTap: () {},
                  ),
                  const Spacer(),
                  if (isLoading)
                    const Center(child: CircularProgressIndicator())
                  else
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() => isLoading = true);
                        await context.read<AuthProvider>().logout();
                      },
                      icon: Icon(Icons.logout, color: Theme.of(context).colorScheme.onError),
                      label: const Text('Выйти из аккаунта'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.error,
                        foregroundColor: Theme.of(context).colorScheme.onError,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
