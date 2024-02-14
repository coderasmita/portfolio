import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Future<void> _launchUrl(String urllink) async {
    final Uri url = Uri.parse(urllink);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("assets/asmee.jpg"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Asmita Koirala",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      "I'm Asmita Koirala. I am currently studying Bachelor's in (BCA) at Aadim National College. I'm a flutter developer. ",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "NanumMyeongjo",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                bottom: 3.0,
              ),
              child: Text(
                "Skills",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            const Card(
              elevation: 2.0,
              child: ListTile(
                title: Text("Mobile App Development"),
                subtitle: Text("Dart, Flutter, Figma, Git"),
                leading: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kdMiqL6KgVqpJywEekKiiduVvsrtGg2WXA&usqp=CAU"),
                ),
              ),
            ),
            const Card(
              elevation: 2.0,
              child: ListTile(
                title: Text("Web Development"),
                subtitle: Text("HTML, CSS, Javascript"),
                leading: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://blog.hubspot.com/hs-fs/hubfs/web-development.webp?width=595&height=400&name=web-development.webp"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                bottom: 3.0,
              ),
              child: Text(
                "Social Links",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchUrl("https://www.linkedin.com/in/asmitakoirala8/");
                    },
                    color: Colors.blue,
                    icon: const Icon(FontAwesomeIcons.linkedin),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl("https://github.com/coderasmita");
                    },
                    icon: const Icon(FontAwesomeIcons.github),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl(
                          "https://www.instagram.com/asmikoiraala?igsh=MzFjZjViMmJkc2Y3&utm_source=qr");
                    },
                    color: Colors.red,
                    icon: const Icon(FontAwesomeIcons.instagram),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchUrl("https://www.facebook.com/Asmitakoirala8/");
                    },
                    color: Colors.blue,
                    icon: const Icon(Icons.facebook_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
