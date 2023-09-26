import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Profile(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Color textColor =  Color.fromARGB(255, 107, 107, 107);
  Color back = Colors.white;

  Color ButtonColor1 = Colors.white;
  Color ButtonColor2 = Colors.white;
  Color ButtonColor3 = Colors.white;

  Color TextColor1 = Colors.blue;
  Color TextColor2 = Colors.blue;
  Color TextColor3 = Colors.blue;

  Color myCustomColor = const Color.fromRGBO(210, 237, 252, 1.0);

  void changeButtonColor(int p) {
    setState(() {
      if (p == 1) {
        ButtonColor1 = Colors.blue;
        TextColor1 = Colors.white;

        ButtonColor2 = ButtonColor3 = Colors.white;
        TextColor2 = TextColor3 = Colors.blue;
      } else if (p == 2) {
        ButtonColor2 = Colors.blue;
        TextColor2 = Colors.white;

        ButtonColor1 = ButtonColor3 = Colors.white;
        TextColor1 = TextColor3 = Colors.blue;
      } else {
        ButtonColor3 = Colors.blue;
        TextColor3 = Colors.white;

        ButtonColor2 = ButtonColor1 = Colors.white;
        TextColor2 = TextColor1 = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myCustomColor,
      body: Column(
        children: [
          Container(
            height: 240.0,
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12.0),
                        Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          'Name:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Muhammad Uzair'),
                        SizedBox(height: 12.0),
                        Text(
                          'Joining Date:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Jan 2023'),
                        SizedBox(height: 8.0),
                        Text(
                          'Experience:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('4 Years'),
                        SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0),
                      child: Image.asset(
                        'assets/pic.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => changeButtonColor(1),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ButtonColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'About',
                    style: TextStyle(color: TextColor1),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ButtonColor2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Work',
                    style: TextStyle(color: TextColor2),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(3),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ButtonColor3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Activity',
                    style: TextStyle(color: TextColor3),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BIO',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'I have done my graduation from Comsats University Islamabad. I am a full stack Python Developer.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ON THE WEB',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 24.0,
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 24.0,
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 24.0,
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 24.0,
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'WEBSITE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'www.portfolio.com',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      'PHONE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '03116385120',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
