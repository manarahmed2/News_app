import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "News ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Giving the ListView a fixed height
            SizedBox(
              height: 100,
              // Fixed height for ListView
              child: ListView(
                scrollDirection: Axis.horizontal, // Scroll direction horizontal
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bis.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.all(8),
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Mannar",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bis.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.all(8),
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bis.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.all(8),
                    height: 100,
                    width: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: SizedBox(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/technology.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      height: 200,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/technology.jpeg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      height: 200,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/technology.jpeg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      height: 200,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
