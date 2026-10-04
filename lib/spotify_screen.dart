import 'package:flutter/material.dart';

class SpotifyScreen extends StatefulWidget {
  const SpotifyScreen({super.key});

  @override
  State<SpotifyScreen> createState() => _SpotifyScreenState();
}

class _SpotifyScreenState extends State<SpotifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Recently played",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.notifications_none, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.history, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.settings_outlined, color: Colors.white),
                ],
              ),
              const SizedBox(height: 24),

              // Artists
              const Row(
                children: [
                  _Artist(name: "Lana Del Rey", color: Colors.brown),
                  SizedBox(width: 24),
                  _Artist(name: "Marvin Gaye", color: Colors.grey),
                ],
              ),
              const SizedBox(height: 28),

              // Review row
              Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#SPOTIFYWRAPPED",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                        Text(
                          "Your 2021 in review",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Cards
              const Row(
                children: [
                  Expanded(
                    child: _WrappedCard(
                      small: "Your Top Songs",
                      big: "2021",
                      color: Color(0xFFD4C84A),
                      textColor: Color(0xFF4A2A3A),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _WrappedCard(
                      small: "Your Artists\nRevealed",
                      big: "",
                      color: Color(0xFFC9A7E0),
                      textColor: Color(0xFF4A3FD0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Artist extends StatelessWidget {
  final String name;
  final Color color;

  const _Artist({required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // To use a real image, replace the Container with:
        // Image.asset("assets/images/your_file.png", height: 110, width: 110, fit: BoxFit.cover)
        ClipOval(
          child: Container(height: 110, width: 110, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _WrappedCard extends StatelessWidget {
  final String small;
  final String big;
  final Color color;
  final Color textColor;

  const _WrappedCard({
    required this.small,
    required this.big,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(12),
        color: color,
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              small,
              style: TextStyle(
                color: textColor,
                fontSize: big.isEmpty ? 22 : 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (big.isNotEmpty)
              Text(
                big,
                style: TextStyle(
                  color: textColor,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
          ],
        ),
      ),
    );
  }
}