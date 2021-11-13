import 'package:flutter/material.dart';
import 'package:sidehustle_task_3/src/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: kGeneralColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: kOutlineBorder, width: 1.5),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/images/fineboy.jpg',
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                'Raphael Ezekiel',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SubDetails(
                              content: 'etiabasiezekiel@ymail.com',
                            ),
                            SubDetails(content: 'Graduate 🌚')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'General',
                  style:
                      kGeneralTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ReusableListile(
                leadingIcon: Icons.person,
                title: 'Edit Profile',
              ),
              const ReusableListile(
                leadingIcon: Icons.badge_rounded,
                title: 'Badges',
              ),
              const ReusableListile(
                leadingIcon: Icons.add_circle_outline_rounded,
                title: 'Study Goals',
              ),
              const ReusableListile(
                leadingIcon: Icons.notifications_off_rounded,
                title: 'Focus Mode',
              ),
              const ReusableListile(
                leadingIcon: Icons.next_plan_rounded,
                title: 'School Schedule',
              ),
              const ReusableListile(
                leadingIcon: Icons.group,
                title: 'Invite Friends',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubDetails extends StatelessWidget {
  final String content;
  const SubDetails({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Text(
        content,
        style: kGeneralTextStyle,
      ),
    );
  }
}

class ReusableListile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;

  const ReusableListile({
    Key? key,
    required this.leadingIcon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: kOutlineBorder, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: ListTile(
          leading: Icon(
            leadingIcon,
            color: kGeneralColor,
          ),
          title: Text(
            title,
            style: kGeneralTextStyle,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: kOutlineBorder,
          ),
        ),
      ),
    );
  }
}
