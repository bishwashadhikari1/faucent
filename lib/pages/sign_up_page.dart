import 'package:algorand_dart/algorand_dart.dart';
import 'package:flutter/material.dart';
import 'account_selection_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Future<void> _createWallet() async {
    try {
      // Create an Algorand account
      final account = await Account.random();

      // Save the account's seed phrase
      final seedPhrase = await account.seedPhrase;

      // TODO: Save the seed phrase securely

      // Display the seed phrase to the user
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Seed Phrase'),
            content: Text(seedPhrase.join(' ')),
            actions: <Widget>[
              MaterialButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );

      // Navigate to Account Selection page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccountSelectionPage()),
      );
    } catch (error) {
      // Handle wallet creation error
      print('Wallet creation failed: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Wallet'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              await _createWallet();
            },
            child: Text('Create Wallet'),
          ),
        ),
      ),
    );
  }
}