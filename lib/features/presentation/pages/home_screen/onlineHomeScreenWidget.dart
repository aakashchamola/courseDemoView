import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostello_design/core/config/localization.dart';
import 'package:ostello_design/core/utils/constants.dart';

// This is your main content widget for Online Option Content
class OnlineHomeScreenWidget extends StatelessWidget {
  const OnlineHomeScreenWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.all(16.0), // General padding for the entire layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Live Sections and Free Courses buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSectionButton(
                      MyLocalizations.of(context)
                          .getString("live_sections_jee"),
                      const Color.fromRGBO(247, 226, 165, 1),
                      ImageConstants.studentLogo1),
                  buildSectionButton(
                      MyLocalizations.of(context).getString("free_courses"),
                      const Color.fromRGBO(254, 209, 186, 1),
                      ImageConstants.studentLogo1),
                ],
              ),
            ),
            SizedBox(height: 20),
            //Section 2: Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navigationButtonCard(ImageConstants.freeCourseLogo,
                    MyLocalizations.of(context).getString("free_courses")),
                navigationButtonCard(ImageConstants.attendanceLogo,
                    MyLocalizations.of(context).getString("attendance")),
                navigationButtonCard(ImageConstants.storeLogo,
                    MyLocalizations.of(context).getString("store")),
                navigationButtonCard(ImageConstants.assessmentLogo,
                    MyLocalizations.of(context).getString("assessment")),
              ],
            )

            // Section 2: NEET Toppers of Rajbir Institute
            // Text(
            //   'NEET Toppers of Rajbir Institute',
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            // ),
            // SizedBox(height: 10),
            // buildToppersSection(),

            // SizedBox(height: 20),
            // // Class 10th - Mathematics Card
            // buildClassCard('Class 10th - Mathematics', 'Mr. Sampath'),
            // SizedBox(height: 20),
            // // ARAMBH - NEET Dropper Batch Card
            // buildClassCard('ARAMBH - NEET DROPPER BATCH', 'Mr. Sampath',
            //     price: '₹5000', discount: '50% OFF'),
          ],
        ),
      ),
    );
  }

  // Function to build a button like "Live Sections on JEE Exams"
  Widget buildSectionButton(String title, Color color, String image) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Container(
        padding: EdgeInsets.all(16), // Padding inside the card
        decoration: BoxDecoration(
          color: Color(0xFFFEE8A6), // Background color (light yellowish)
          borderRadius: BorderRadius.circular(12), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            // Subtitle
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 8),
            // Row containing the image and the "Join" button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image
                SvgPicture.asset(
                  image,
                  height: 40, // Adjust height/width accordingly
                  width: 40,
                ),
                // Join Button
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Join',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// widget for navigationButtonCard
  Widget navigationButtonCard(String image, String text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        alignment: Alignment.center,
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 209, 208, 208)),
        child: Column(
          children: [
            SvgPicture.asset(
              image,
              height: 20,
              width: 20,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }

  // Function to build a card like "Class 10th - Mathematics"
  Widget buildClassCard(String className, String teacher,
      {String? price, String? discount}) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              className,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Teacher: $teacher'),
            if (price != null) ...[
              Text('Price: $price', style: TextStyle(color: Colors.red)),
              Text('Discount: $discount'),
            ],
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Join'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the toppers section
  Widget buildToppersSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildTopperCard('Shree', '720/720'),
        buildTopperCard('Shree', '720/720'),
        buildTopperCard('Shree', '720/720'),
      ],
    );
  }

  // Function to build a topper card
  Widget buildTopperCard(String name, String score) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: Text(name[0]), // Placeholder avatar
        ),
        Text(name),
        Text(score),
      ],
    );
  }
}
