import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_profile_lesson/components/navBar.dart';
import 'package:flutter_login_profile_lesson/models/room.dart';
import 'package:flutter_login_profile_lesson/services/api_service.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Room> _rooms = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    loadRooms();
  }

  Future<void> loadRooms() async {
    final result = await ApiService().getRooms();

    setState(() {
      _rooms = result;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _rooms.isEmpty
          ? const Center(child: Text("Nessuna stanza trovata!"))
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 12, 32, 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(192, 0, 0, 0),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(6, 10),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        const Text(
                          "Most popular things\norganized by category",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),

                        /// BUTTON ROW
                        SizedBox(
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              4,
                              (index) => ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    137,
                                    87,
                                    85,
                                    85,
                                  ),
                                ),
                                child: const Text(
                                  "Prova",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 172, 165, 165),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        /// GRID
                        SizedBox(
                          height: 500,
                          child: GridView.builder(
                            itemCount: _rooms.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16,
                                  mainAxisExtent: 240,
                                ),
                            itemBuilder: (context, index) {
                              final room = _rooms[index];

                              return SizedBox(
                                height: 250,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Stack(
                                    fit: StackFit.expand,

                                    children: [
                                      Image.network(
                                        room.urlImage,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Container(
                                                  color: Colors.grey,
                                                  child: const Icon(
                                                    Icons.broken_image,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        padding: const EdgeInsets.all(12),
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black87,
                                              Colors.transparent,
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          room.nomeStanza,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
