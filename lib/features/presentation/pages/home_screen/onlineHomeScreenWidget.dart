import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:ostello_design/core/config/localization.dart';
import 'package:ostello_design/core/utils/constants.dart';

class OnlineHomeScreenWidget extends StatelessWidget {
  const OnlineHomeScreenWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: navigationButtonRow(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ToppersSectionWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: popularCoursesListingSection(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: allCoursesListingSection(),
        ),
        SizedBox(
          height: 20,
        ),
        inviteGetRewardSection(),
        SizedBox(
          height: 55,
        ),
      ],
    );
  }

  Widget inviteGetRewardSection() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        color: Color.fromRGBO(255, 237, 237, 1),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Refer & Earn",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Cashback & Rewards",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Invite Your Friends & Get Up \n to ₹500 After Registration",
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.fromLTRB(40, 8, 40, 8),
                    child: Text(
                      "Invite",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            ClipRRect(
              child: Image.asset(
                ImageConstants.rewardLogo,
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget allCoursesListingSection() {
    return Column(
      children: [
        courseListingHeading("All Courses"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CourseCardWidget(
                language: "Hinglish",
                courseImage: ImageConstants.icClassroom,
                status: "LIVE",
                teacherName: "Mr. Sampath",
                courseDetails: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "ARAMBH - NEET DROPPER BATCH",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ))),
              ),
              CourseCardWidget(
                language: "Hinglish",
                courseImage: ImageConstants.icClassroom,
                status: "LIVE",
                teacherName: "Mr. Sampath",
                courseDetails: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "ARAMBH - JEE DROPPER BATCH",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget popularCoursesListingSection() {
    return Column(
      children: [
        courseListingHeading("Popular Courses"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CourseCardWidget(
                language: "Hinglish",
                courseImage: ImageConstants.icClassroom,
                status: "LIVE",
                teacherName: "Mr. Sampath",
                courseDetails: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Class 10th - Mathematics",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ))),
              ),
              CourseCardWidget(
                language: "Hinglish",
                courseImage: ImageConstants.icClassroom,
                status: "LIVE",
                teacherName: "Mr. Sampath",
                courseDetails: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Class 10th - Mathematics",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget courseListingHeading(String listName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          listName,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View All",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 15, color: Colors.red),
          ),
        ),
      ],
    );
  }

  // Function to build a button like "Live Sections on JEE Exams"
  Widget buildSectionButton(String title, Color bgColor, String image) {
    return ElevatedButton(
      onPressed: () {},
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
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
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

  Widget navigationButtonRow() {
    return Padding(
      padding: EdgeInsets.all(5),
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
          navigationButtonCard(ImageConstants.storeLogo, "Store", () {}),
          SizedBox(
            width: 12,
          ),
          navigationButtonCard(
              ImageConstants.assessmentLogo, "Assessment", () {}),
        ],
      ),
    );
  }

// widget for navigationButtonCard
  Widget navigationButtonCard(String image, String text, Function onPressed) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: Container(
        height: 130,
        width: 80,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              height: 90,
              width: 90,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCardWidget extends StatelessWidget {
  final String language;
  final String courseImage;
  final String status;
  final Widget courseDetails;
  final String teacherName;

  CourseCardWidget({
    required this.language,
    required this.courseImage,
    required this.status,
    required this.courseDetails,
    required this.teacherName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(3, 3),
              blurStyle: BlurStyle.outer,
            ),
          ],
          border: Border.all(
            style: BorderStyle.solid,
            width: 0.2,
            color: Color.fromARGB(255, 242, 226, 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(teacherName),
                SizedBox(width: 5),
                Icon(Icons.verified, color: Colors.green, size: 20),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    courseImage,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 200,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(language),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 15,
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ),
                      SizedBox(width: 5),
                      Text(
                        status,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(child: courseDetails),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(119, 116, 213, 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Join",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
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

class ToppersSectionWidget extends StatelessWidget {
  const ToppersSectionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Toppers of ABC",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  toppersListOfInstitute(
                      "NEET Toppers of Rajbir Institute", Colors.white),
                  SizedBox(
                    width: 15,
                  ),
                  toppersListOfInstitute("10th Class Toppers",
                      const Color.fromRGBO(255, 242, 226, 1)),
                ],
              )),
        ]);
  }

  Widget toppersListOfInstitute(String institute, Color bgColor) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [BoxShadow()],
            border: Border.all(
                style: BorderStyle.solid,
                width: 0.2,
                color: Color.fromARGB(255, 242, 226, 1))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              institute,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              studentDataLogo(
                  ImageConstants.neetToppersLogo1, "Shree", "720/720"),
              SizedBox(
                width: 15,
              ),
              studentDataLogo(
                  ImageConstants.neetToppersLogo2, "Shree", "720/720"),
              SizedBox(
                width: 15,
              ),
              studentDataLogo(
                  ImageConstants.neetToppersLogo3, "Shree", "720/720"),
              SizedBox(
                width: 15,
              ),
              studentDataLogo(
                  ImageConstants.neetToppersLogo4, "Shree", "720/720"),
            ])
          ],
        ),
      ),
    );
  }

  Widget studentDataLogo(String image, String name, String marks) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        Text(
          marks,
          style: TextStyle(
            color: Color.fromRGBO(2, 156, 66, 1),
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
