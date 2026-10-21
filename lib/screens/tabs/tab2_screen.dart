import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatefulWidget {
  const Tab2Screen({super.key});
  @override
  State<Tab2Screen> createState() => _Tab2ScreenState();
}
class _Tab2ScreenState extends State<Tab2Screen> {
  int _lastScore = 240;
  bool _ready = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Reflex Drill')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() => _lastScore = 210 + (_lastScore * 7) % 80),
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.primaryColor),
                child: const Center(child: Text('TAP FAST!', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
              ),
            ),
            const SizedBox(height: 24),
            Text('Reaction Speed: $_lastScore ms', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text('Pro Goalkeeper Baseline: < 220 ms', style: TextStyle(color: Colors.white60)),
          ],
        ),
      ),
    );
  }
}

