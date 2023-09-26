// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: const Profile(),
//     theme: ThemeData(fontFamily: 'Poppins'),
//   ));
// }

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   Color textColor = Color.fromARGB(255, 107, 107, 107);

//   Color ButtonColor1 = Colors.white;
//   Color ButtonColor2 = Colors.white;
//   Color ButtonColor3 = Colors.white;

//   Color TextColor1 = Colors.blue;
//   Color TextColor2 = Colors.blue;
//   Color TextColor3 = Colors.blue;

//   Color myCustomColor = const Color.fromRGBO(210, 237, 252, 1.0);

//   void changeButtonColor(int p) {
//     setState(() {
//       if (p == 1) {
//         ButtonColor1 = Colors.blue;
//         TextColor1 = Colors.white;

//         ButtonColor2 = ButtonColor3 = Colors.white;
//         TextColor2 = TextColor3 = Colors.blue;
//       } else if (p == 2) {
//         ButtonColor2 = Colors.blue;
//         TextColor2 = Colors.white;

//         ButtonColor1 = ButtonColor3 = Colors.white;
//         TextColor1 = TextColor3 = Colors.blue;
//       } else {
//         ButtonColor3 = Colors.blue;
//         TextColor3 = Colors.white;

//         ButtonColor2 = ButtonColor1 = Colors.white;
//         TextColor2 = TextColor1 = Colors.blue;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: myCustomColor,
//       body: Column(
//         children: [
//           Container(
//             height: 240.0,
//             margin: const EdgeInsets.all(16.0),
//             padding: const EdgeInsets.all(16.0),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 12.0),
//                         Text(
//                           'Software Engineer',
//                           style: TextStyle(
//                             fontSize: 24.0,
//                             fontWeight: FontWeight.bold,
//                             color: textColor,
//                           ),
//                         ),
//                         SizedBox(height: 16.0),
//                         Text(
//                           'Name:',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: textColor),
//                         ),
//                         Text(
//                           'Muhammad Uzair',
//                           style: TextStyle(color: textColor),
//                         ),
//                         SizedBox(height: 16.0),
//                         Text(
//                           'Joining Date:',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: textColor),
//                         ),
//                         Text(
//                           'Jan 2023',
//                           style: TextStyle(color: textColor),
//                         ),
//                         SizedBox(height: 16.0),
//                         Text(
//                           'Experience:',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: textColor),
//                         ),
//                         Text(
//                           '4 Years',
//                           style: TextStyle(color: textColor),
//                         ),
//                         SizedBox(height: 16.0),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10.0),
//                       child: Image.asset(
//                         'assets/pic.jpeg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(16.0),
//             padding: const EdgeInsets.all(8.0),
//             width: 270.0,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(25.0),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => changeButtonColor(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ButtonColor1,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                   child: Text(
//                     'About',
//                     style: TextStyle(color: TextColor1),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => changeButtonColor(2),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ButtonColor2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                   child: Text(
//                     'Work',
//                     style: TextStyle(color: TextColor2),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => changeButtonColor(3),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ButtonColor3,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                   child: Text(
//                     'Activity',
//                     style: TextStyle(color: TextColor3),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(16.0),
//             padding: const EdgeInsets.all(16.0),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'BIO',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: textColor),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'I am a Software Engineer based in Burewala, Pakistan. My expertise lies in Full Stack Python Development. I am actively engaged in tech communities, I am dedicated to advancing in my field while inspiring others.',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(16.0),
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'On the Web',
//                   style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                       color: textColor),
//                 ),
//                 SizedBox(height: 16.0),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(right: 8.0),
//                       child: CircleAvatar(
//                         backgroundColor: textColor,
//                         radius: 20.0,
//                         child: Icon(
//                           FontAwesomeIcons.github,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: CircleAvatar(
//                         backgroundColor: textColor,
//                         radius: 20.0,
//                         child: Icon(
//                           FontAwesomeIcons.twitter,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: CircleAvatar(
//                         backgroundColor: textColor,
//                         radius: 20.0,
//                         child: Icon(
//                           FontAwesomeIcons.facebook,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: CircleAvatar(
//                         backgroundColor: textColor,
//                         radius: 20.0,
//                         child: Icon(
//                           FontAwesomeIcons.instagram,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(16.0),
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       'Portfolio',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: textColor),
//                     ),
//                     SizedBox(width: 8.0),
//                     Padding(
//                       padding: EdgeInsets.only(left: 14.0),
//                       child: Text(
//                         'https://muhammaduzairrazaq.github.io/portfolio/',
//                         style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             color: textColor),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 15.0),
//                 Row(
//                   children: [
//                     Text(
//                       'Phone',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: textColor),
//                     ),
//                     SizedBox(width: 8.0),
//                     Padding(
//                       padding: EdgeInsets.only(left: 30.0),
//                       child: Text(
//                         '03116385120',
//                         style: TextStyle(color: textColor),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////
//////////////////////////////////////////
///////////////////////////////
////////////////////////
////////////////
//////////
/////

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners
                    image: DecorationImage(
                      image: AssetImage('assets/pic.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Center text
                    children: [
                      Text(
                        '242',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2M',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0), // Add margin and padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Sunnyhopper',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FontAwesomeIcons.circleCheck, // Verified icon
                        color: Colors.blue, // Adjust color as needed
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'Artist',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),

              child:  Text(
                  'I Love music\nAlbum out now go and watch',
                  style: TextStyle(fontSize: 14.0),
                ),
                ),
                SizedBox(height: 8.0), // Add space below text
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Follow button action
                      },
                      child: Text('Follow'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button color
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded corners
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0), // Add space between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Message button action
                      },
                      child: Text('Message'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button color
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded corners
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
          // Add other widgets below if needed
        ],
      ),
    );
  }
}
