import 'package:flutter/material.dart';
import 'package:my_first_app/components/password_field.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key, required this.title});

  final String title;

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ganti Sandi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text('Sandi Saat Ini'),
              SizedBox(height: 10),
              PasswordField(),
              SizedBox(height: 20),
              Text('Sandi Baru'),
              SizedBox(height: 10),
              PasswordField(),
              SizedBox(height: 20),
              Text('Konfirmasi Sandi Baru'),
              SizedBox(height: 10),
              PasswordField(),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
