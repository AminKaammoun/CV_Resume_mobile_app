import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kammoun_amin/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.select),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.english),
            onTap: ()=> {
              Navigator.pop(context),


              MyApp.of(context)?.setLocale(Locale.fromSubtags(languageCode: 'en')),
              // Close the language selection page
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.french),
            onTap: () {
              // Set language to French
              // Example: LanguageService.setLanguage('fr');
              Navigator.pop(context);
              MyApp.of(context)?.setLocale(Locale.fromSubtags(languageCode: 'fr'));// Close the language selection page
            },
          ),
          // Add more list tiles for other languages as needed
        ],
      ),
    );
  }
}
