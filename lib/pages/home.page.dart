import 'package:flutter/material.dart';
import 'package:kammoun_amin/theme/theme_provider.dart';

import 'package:kammoun_amin/theme/theme.image.dart';
import 'package:kammoun_amin/pages/parametre.page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kammoun_amin/pages/maps.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text( AppLocalizations.of(context)!.profile),

     ),

      body: SingleChildScrollView(

        child:

        Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 20), // Add spacing between app bar and avatar


              Container(

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, // Contour color
                    width: 7.0, // Contour width
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/profil.png"),
                  radius: 60,
                ),
              ),
              SizedBox(height: 20), // Add spacing between avatar and text
              Text(
                'Kammoun Amine',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.student,

                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.secondary, // Change the color here
                ),
              ),
              SizedBox(height: 20), // Add spacing between text and text area

              Container(
                padding: EdgeInsets.all(20), // Add padding to the container
                width: 350, // Set the width of the container
                height: 90, // Set the height of the container
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary, // Set the background color of the container
                  borderRadius: BorderRadius.circular(20.0), // Set border radius
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.desc,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/education.png',
                        darkImagePath: 'images/education_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Education',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 140,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.date1,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Image.asset(
                          'images/iit-logo.png',
                          width: 90,
                          height: 60,
                        ),
                      ],
                    ),
                    Text(
                      AppLocalizations.of(context)!.text1,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 140,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '2019 - 2022    ISIMS SFAX',
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Image.asset(
                          'images/isims.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),

                    Text(
                      AppLocalizations.of(context)!.text2,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 140,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.date3,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context)!.text3,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/work.png',
                        darkImagePath: 'images/work_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        AppLocalizations.of(context)!.experience,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.exp1,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'images/iit-logo.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp1date,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp1text,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.exp2,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'images/intellitech.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp2date,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp2text,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.exp3,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'images/intellitech.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp3date,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp3text,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.exp4,
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'images/djagora.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp4date,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.exp4text,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/competence.png',
                        darkImagePath: 'images/competence_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        AppLocalizations.of(context)!.skill,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Add your horizontally scrollable content here
                      // Example:
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Color(0xFFF16529), // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/html.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'HTML', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Add more containers as needed
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.blue, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/css.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'CSS', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Color(0xFFFffce00), // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/javascript.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'JavaScript', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Color(0xFFFff3f3f), // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Angularr.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Angular', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.green, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/spring-boot.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Angular', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.grey, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/java-logo.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Java', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.blueGrey, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/python.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Python', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.deepPurple, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/C#.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'C#', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.grey, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/unity.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Unity', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Color(0xFFFa5a9d9), // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/php.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Php', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 120, // Set the width of your horizontally scrollable content
                        height: 150, // Set the height of your horizontally scrollable content
                        decoration: BoxDecoration(
                          color: Colors.blueGrey, // Example color
                          borderRadius: BorderRadius.circular(20.0), // Border radius
                        ),
                        margin: EdgeInsets.only(right: 10), // Add margin between items if needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/sql.png', // Replace 'your_image_path_here' with your image path
                              width: 70, // Set the width of the image
                              height: 70, // Set the height of the image
                            ),
                            SizedBox(height: 10),
                            Text(
                              'MySql', // Replace 'Your Text Here' with your text
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/certification.png',
                        darkImagePath: 'images/certification_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Certifications',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(10),
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Scrum Fundamentals Certified',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Image.asset(
                          'images/scrumm.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),

                    Text(
                      'Nov 2023',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.cert2,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Image.asset(
                          'images/france.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),

                    Text(
                      AppLocalizations.of(context)!.cert2date,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "CCNA : Introduction to networks",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Image.asset(
                          'images/neural.png',
                          width: 90,
                          height: 50,
                        ),
                      ],
                    ),

                    Text(
                      AppLocalizations.of(context)!.cert3date,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/earth.png',
                        darkImagePath: 'images/earth_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        AppLocalizations.of(context)!.langauge + 's',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocalizations.of(context)!.arabic,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(), // Add Spacer to distribute space evenly
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocalizations.of(context)!.french,
                            style: TextStyle(
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(), // Add Spacer to distribute space evenly
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocalizations.of(context)!.english,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Add vertical space between rows
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocalizations.of(context)!.native,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(), // Add Spacer to distribute space evenly
                        Expanded(
                          flex: 1,
                          child: Text(
                            'DELF B2',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(), // Add Spacer to distribute space evenly
                        Expanded(
                          flex: 1,
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25), // Add padding only to the right
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      ThemeDependentImage(
                        lightImagePath: 'images/contact.png',
                        darkImagePath: 'images/contact_white.png',
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Contacts',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MapsPage()),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.address,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Route Tunis km 7.5, Rue Mokhtar ziadi, sakiete ezzit sfax 3021',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.indigo, // Change text color to indicate it's clickable
                                    decoration: TextDecoration.underline, // Add underline for visual indication
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20), // Add vertical space between blocks
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.email,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'amine.kammoon@gmail.com',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.phone,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '+216 29 528 193',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.cake,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.birthday,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                AppLocalizations.of(context)!.dateBirth,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


            ],


          ),
        ),
      ),
    );
  }
}
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(AppLocalizations.of(context)!.home),
            onTap: () {
              // Add navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(AppLocalizations.of(context)!.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParametersPage()),
              );
            },
          ),
          // Add more ListTile widgets for additional items
        ],
      ),
    );
  }
}
