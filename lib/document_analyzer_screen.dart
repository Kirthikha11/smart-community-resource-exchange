import 'package:flutter/material.dart';

class DocumentAnalyzerScreen extends StatefulWidget {
  const DocumentAnalyzerScreen({super.key});

  @override
  State<DocumentAnalyzerScreen> createState() =>
      _DocumentAnalyzerScreenState();
}

class _DocumentAnalyzerScreenState
    extends State<DocumentAnalyzerScreen> {
  String result = '';

  void analyzeDocument() {
    setState(() {
      result =
          'Document analyzed successfully!\n\n'
          'Summary:\n'
          'This document contains important community resource information.\n\n'
          'Key Points:\n'
          '• Resources can be shared\n'
          '• Users can request resources\n'
          '• Community members can help each other';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Analyzer'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.description,
              size: 80,
            ),

            const SizedBox(height: 20),

            const Text(
              'Analyze a Document',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Upload a document and get a simple summary.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: analyzeDocument,
                icon: const Icon(Icons.upload_file),
                label: const Text('Analyze Document'),
              ),
            ),

            const SizedBox(height: 25),

            if (result.isNotEmpty)
              Expanded(
                child: SingleChildScrollView(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        result,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}