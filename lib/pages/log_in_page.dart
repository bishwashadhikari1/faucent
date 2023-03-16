import 'package:flutter/material.dart';
import 'account_selection_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Import Wallet'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Seed Phrase'),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // TODO: Implement wallet import logic

                  // Navigate to Account Selection page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountSelectionPage()),
                  );
                },
                child: Text('Import Wallet'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}