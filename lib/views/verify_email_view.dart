// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:nishamnotes/constants/routes.dart';
import 'package:nishamnotes/constants/services/auth/auth_services.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Email"),
      ),
      body: Column(
        children: [
          const Text(
              "We've sent you an email verification. Plesase verify it."),
          const Text(
              "If you haven't received it, please click the button below."),
          ElevatedButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text("Send Email verification"),
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().logOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (route) => false,
              );
            },
            child: const Text("Restart"),
          )
        ],
      ),
    );
  }
}
