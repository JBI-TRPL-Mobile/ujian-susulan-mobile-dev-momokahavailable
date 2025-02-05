import 'package:flutter/material.dart';
import 'confirmation_screen.dart'; // Import ConfirmationScreen

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Our Website!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfirmationScreen(),
                        ),
                      );
                    },
                    child: _buildFeatureCard('Profile', Icons.person, Colors.blue),
                  ),
                  _buildFeatureCard('Settings', Icons.settings, Colors.green),
                  _buildFeatureCard('Help', Icons.help_outline, Colors.orange),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore Our Features',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.purple),
                title: const Text('Shop Products'),
                subtitle: const Text('Discover a variety of amazing items.'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.message, color: Colors.red),
                title: const Text('Contact Us'),
                subtitle: const Text('Get in touch with our team.'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.blue),
                title: const Text('About Us'),
                subtitle: const Text('Learn more about what we do.'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, size: 30, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
