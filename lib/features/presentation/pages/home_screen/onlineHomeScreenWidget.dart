import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:ostello_design/core/config/localization.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildSectionButton(
                        // MyLocalizations.of(context)
                        //     .getString("live_sections_jee"),
                        "Live Sections Jee",
                        const Color.fromRGBO(247, 226, 165, 1),
                        ImageConstants.studentLogo1),
                    SizedBox(
                      width: 20,
                    ),
                    buildSectionButton(
                        // MyLocalizations.of(context).getString("free_courses"),
                        "Free Courses",
                        const Color.fromRGBO(254, 209, 186, 1),
                        ImageConstants.studentLogo2),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            //Section 2: Navigation Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  navigationButtonCard(
                      ImageConstants.freeCourseLogo, "Free Courses", () {}),
                  SizedBox(
                    width: 12,
                  ),
                  navigationButtonCard(
                      ImageConstants.attendanceLogo, "Attendance", () {}),
                  SizedBox(
                    width: 12,
                  ),
                  navigationButtonCard(
                      ImageConstants.storeLogo, "Store", () {}),
                  SizedBox(
                    width: 12,
                  ),
                  navigationButtonCard(
                      ImageConstants.assessmentLogo, "Assessment", () {}),
                ],
              ),
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
  Widget buildSectionButton(String title, Color bgColor, String image) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: Container(
        width: 235,
        height: 140,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: bgColor, // Dynamic background color
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            // Image positioned at the bottom right
            Positioned(
              bottom: -15,
              right: -10,
              child: Image.asset(
                fit: BoxFit.contain,
                image,
                height: 120,
                width: 120,
              ),
            ),
            // Column for text and button
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                // Join Button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
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
  Widget navigationButtonCard(String image, String text, Function onPressed) {
    return ElevatedButton(
      onPressed: () => onPressed(image),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures minimal height
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
              height: 80,
              width: 80,
            ),
            SizedBox(height: 8), // Adjusted spacing
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // // Function to build a card like "Class 10th - Mathematics"
  // Widget buildClassCard(String className, String teacher,
  //     {String? price, String? discount}) {
  //   return Card(
  //     elevation: 3,
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             className,
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //           Text('Teacher: $teacher'),
  //           if (price != null) ...[
  //             Text('Price: $price', style: TextStyle(color: Colors.red)),
  //             Text('Discount: $discount'),
  //           ],
  //           SizedBox(height: 10),
  //           ElevatedButton(
  //             onPressed: () {},
  //             child: Text('Join'),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // // Function to build the toppers section
  // Widget buildToppersSection() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: [
  //       buildTopperCard('Shree', '720/720'),
  //       buildTopperCard('Shree', '720/720'),
  //       buildTopperCard('Shree', '720/720'),
  //     ],
  //   );
  // }

  // // Function to build a topper card
  // Widget buildTopperCard(String name, String score) {
  //   return Column(
  //     children: [
  //       CircleAvatar(
  //         radius: 30,
  //         backgroundColor: Colors.blue,
  //         child: Text(name[0]), // Placeholder avatar
  //       ),
  //       Text(name),
  //       Text(score),
  //     ],
  //   );
  // }
}
