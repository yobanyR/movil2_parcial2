import 'package:flutter/material.dart';
import 'package:parcial2/screens/info_screen.dart';
import 'package:parcial2/widgets/custom_card.dart';

class MapScreen extends StatelessWidget {
  final Map<String, String> cardData = {
    'Android': 'assets/android.png',
    'Clock': 'assets/clock.png',
    'Social': 'assets/social.png',
    'Window': 'assets/window.png',
  };

  MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parcial 2'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Opción 1"),
                ),
                PopupMenuItem(
                  child: Text("Opción 2"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.all(16.0),
            child: Text(
              'Segundo Parcial',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  children: cardData.entries
                      .map(
                        (entry) => CustomCard(
                          title: entry.key,
                          imagePath: entry.value,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InfoScreen(title: entry.key),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
