import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Resources'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          resourceCard(
            context,
            'Engineering Books',
            'Books',
            'Chennai',
          ),
          resourceCard(
            context,
            'Study Materials',
            'Education',
            'Coimbatore',
          ),
          resourceCard(
            context,
            'Laptop',
            'Electronics',
            'Chennai',
          ),
          resourceCard(
            context,
            'Office Chair',
            'Furniture',
            'Madurai',
          ),
        ],
      ),
    );
  }

  Widget resourceCard(
    BuildContext context,
    String name,
    String category,
    String location,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.inventory_2),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('$category • $location\nAvailable'),
        isThreeLine: true,
        trailing: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Request sent for $name'),
              ),
            );
          },
          child: const Text('Request'),
        ),
      ),
    );
  }
}