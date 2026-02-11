import 'package:flutter/material.dart';
import 'package:flutter_login_profile_lesson/components/navBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const Navbar(), // Stateful o Stateless, deve avere PreferredSizeWidget
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Stack(
          children: [
            Container(
              height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/luxuryRoom.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Secure Your Dream Vacation\nwith a Reservation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 72,
                      color: const Color.fromARGB(255, 233, 226, 226),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 600,
                      height: 50,
                      margin: EdgeInsets.all(80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
        
                            ],
                          ),
                            Row(
                              children: [
                                Icon(
                                  Icons.fmd_good_outlined,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(Icons.swap_vert, color: Colors.grey),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "CheckIn-CheckOut",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(Icons.swap_vert, color: Colors.grey),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.group_outlined, color: Colors.grey),
                                Text(
                                  "Person",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(Icons.swap_vert, color: Colors.grey),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Colors.white),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(
                                        255,
                                        69,
                                        153,
                                        111,
                                      ),
                                    ),
                                    child: Text(
                                      "Search",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                "We belive in the power of the great outdoors.\nWe think that everyone deserves the chance to explore\nthe wild to find the very own adventure",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: SizedBox(
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "121+",
                          style: TextStyle(color: Colors.grey, fontSize: 28),
                        ),
                        Text(
                          "Capital Raised",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "80+",
                          style: TextStyle(color: Colors.grey, fontSize: 28),
                        ),
                        Text(
                          "Happy Customers",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1k+",
                          style: TextStyle(color: Colors.grey, fontSize: 28),
                        ),
                        Text(
                          "Property options",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
