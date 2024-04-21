import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Профиль"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Save"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.green,
                ),
                height: 80,
                width: 80,
                child: Center(
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text("Мои награды"),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("🥇", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥇", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥉", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥈", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥉", style: TextStyle(fontSize: 32)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
