import 'package:flutter/material.dart';
import 'package:kammoun_amin/pages/langague.page.dart';
import 'package:kammoun_amin/pages/home.page.dart';
import 'package:provider/provider.dart';
import 'package:kammoun_amin/theme/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParametersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text( AppLocalizations.of(context)!.langauge),
            trailing: Icon(Icons.language),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
              );
            },
          ),

          ListTile(
            title: Text(Theme.of(context).brightness == Brightness.dark ? AppLocalizations.of(context)!.light : AppLocalizations.of(context)!.dark), // Display "Dark Mode" if dark theme, else display "Light Mode"
            trailing: Switch(
              value: Theme.of(context).brightness == Brightness.dark, // Determine current theme mode
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
