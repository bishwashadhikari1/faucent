import 'package:faucent/pages/employee_profile_page.dart';
import 'package:faucent/pages/employer_dashboard_page.dart';
import 'package:flutter/material.dart';
 

class AccountSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Account Type'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to Employer dashboard
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmployerDashboardPage()),
                );
              },
              child: Text('Employer'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Employee profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmployeeProfilePage()),
                );
              },
              child: Text('Employee'),
            ),
          ],
        ),
      ),
    );
  }
}