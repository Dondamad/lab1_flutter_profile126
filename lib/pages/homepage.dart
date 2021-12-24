import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: const Color(0xff1f1d2b),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile '),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: const Color(0xffFFA31A),
              ),
              child: const Text('622021126'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          profilepic(),
          name(),
          email(),
          about(),
          const Divider(
            color: Colors.white,
            indent: 20,
            endIndent: 20,
          ),
          socialMedia(),
        ],
      ),
    );
  }

  Column socialMedia() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Text(
                'SOCIAL MEDIA',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Color(0xFF3b5998),
                size: 28,
              ),
              FaIcon(
                FontAwesomeIcons.discord,
                color: Color(0xFF7289DA),
                size: 28,
              ),
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Color(0xFFC13584),
                size: 28,
              ),
              FaIcon(
                FontAwesomeIcons.line,
                color: Color(0xFF00B900),
                size: 28,
              ),
            ],
          ),
        )
      ],
    );
  }

  Column about() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          // color: Colors.amber,
          child: const Text(
            'ABOUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  Row(
                    children: const [
                      Text(
                        'Gender: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      Text(
                        'male',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Birthday: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      Text(
                        '25 Nov. 2000',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Email: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      Text(
                        '622021126@tsu.ac.th',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Tel: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      Text(
                        '0987654321',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget profilepic() {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: CircleAvatar(
          radius: 80,
          backgroundColor: Color(0xffFFA31A),
          child: CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('images/IMG20200319153249.jpg'),
          ),
        ));
  }

  Row name() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Romadon Damad",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.verified,
          color: Colors.blue,
        ),
      ],
    );
  }

  Row email() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "“Very brave. Very good. Thank you.”",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
