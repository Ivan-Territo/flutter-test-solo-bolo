import 'package:flutter/material.dart';
import 'package:flutter_login_profile_lesson/models/room.dart';
import 'package:flutter_login_profile_lesson/services/api_service.dart';

class HotelCardCarousel extends StatefulWidget {
  const HotelCardCarousel({super.key});

  @override
  State<HotelCardCarousel> createState() => _HotelCardCarouselState();
}

class _HotelCardCarouselState extends State<HotelCardCarousel> {
  List<Room> _rooms = [];
  bool _loading = true;
  int _currentIndex = 1;
  final CarouselController _controller = CarouselController(initialItem: 4);
  

  @override
  void initState() {
    super.initState();
    loadRooms();
  }


  Future<void> loadRooms() async {
    final result = await ApiService().getRooms();

    debugPrint("Rooms ricevute: ${result.length}");

    for (var room in result) {
      debugPrint(room.nomeStanza);
      debugPrint(room.urlImage);
    }

    setState(() {
      _rooms = result;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Center(child: CircularProgressIndicator());
    }
    if (_rooms.isEmpty) {
      return Text("Nessuna stanza trovata!");
    }

    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          
          Center(
            child: Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return CarouselView.weighted(
                    controller: _controller,
                    flexWeights: [1, 3, 1],
                    itemSnapping: true,
                    
                    children: _rooms.map((room) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              room.urlImage,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Center(
                                    child: Icon(Icons.broken_image),
                                  ),
                                );
                              },
                            ),
                          ),
                                    
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  room.nomeStanza,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: const [
                                    Text(
                                      "Address placeholder",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.star, color: Colors.amber, size: 18),
                                    Icon(Icons.star, color: Colors.amber, size: 18),
                                    Icon(Icons.star, color: Colors.amber, size: 18),
                                    Icon(Icons.star, color: Colors.amber, size: 18),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "(122 visitors)",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
          Positioned(left: 0 , bottom: 160, child: IconButton(onPressed: null, icon: Icon(Icons.arrow_left, size: 80, color: const Color.fromARGB(255, 39, 38, 38),)) ),
          Positioned(right: 0 , bottom: 160, child: IconButton(onPressed: null, icon: Icon(Icons.arrow_right, size: 80, color: const Color.fromARGB(255, 37, 37, 37),)) ),
        ],
      ),
    );
  }
}
