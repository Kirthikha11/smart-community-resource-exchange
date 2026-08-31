import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'resources_screen.dart';
import 'add_resource_screen.dart';
import 'chatbot_screen.dart';
import 'document_analyzer_screen.dart';

void main() {
  runApp(const SmartCommunityApp());
}

class SmartCommunityApp extends StatelessWidget {
  const SmartCommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Community',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Community'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome 👋',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Share, discover and request community resources.',
            ),

            const SizedBox(height: 20),

            _button(
              context,
              'Login / Register',
              Icons.person,
              const LoginScreen(),
            ),

            _button(
              context,
              'View Resources',
              Icons.inventory_2,
              const ResourcesScreen(),
            ),

            _button(
              context,
              'Add Resource',
              Icons.add,
              const AddResourceScreen(),
            ),

            _button(
              context,
              'Community Chatbot',
              Icons.chat,
              const ChatbotScreen(),
            ),

            _button(
              context,
              'Document Analyzer',
              Icons.description,
              const DocumentAnalyzerScreen(),
            ),

            const SizedBox(height: 20),

            const Text(
              'Search Resources',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search resources...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(
    BuildContext context,
    String title,
    IconData icon,
    Widget screen,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ),
            );
          },
          icon: Icon(icon),
          label: Text(title),
        ),
      ),
    );
  }
}