import 'package:flutter/material.dart';
import 'package:flutter_login_profile_lesson/components/hotel_card.dart';
import 'package:flutter_login_profile_lesson/components/navBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              bottom: 32,
              top: 12,
            ),
            child: Column(
              // <-- FIX PRINCIPALE
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 700,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(192, 0, 0, 0),
                              spreadRadius: 2,
                              blurRadius: 20,
                              offset: Offset(6, 10),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/luxuryRoom.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black87, Colors.transparent],
                            ),
                          ),

                          child: Column(
                            children: [
                              const SizedBox(height: 40),
                              const Text(
                                "Secure Your Dream Vacation\nwith a Reservation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 72,
                                  color: Color.fromARGB(255, 233, 226, 226),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 600,
                                  height: 50,
                                  margin: const EdgeInsets.all(80),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: []),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.fmd_good_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.swap_vert,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "CheckIn-CheckOut",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.swap_vert,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.group_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Person",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.swap_vert,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.search,
                                                color: Colors.white,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                        255,
                                                        69,
                                                        153,
                                                        111,
                                                      ),
                                                ),
                                                child: const Text(
                                                  "Search",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
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
                      ),

                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: const Text(
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
                            children: const [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "121+",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 28,
                                    ),
                                  ),
                                  Text(
                                    "Capital Raised",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "80+",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 28,
                                    ),
                                  ),
                                  Text(
                                    "Happy Customers",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1k+",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 28,
                                    ),
                                  ),
                                  Text(
                                    "Property options",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
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

                const SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Our top-rated and\nhighly visited hotel",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Discover our handpicked solution of the year's finest hotels,\ncurated based on feedback from our delighted visitors",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          HotelCardCarousel(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
