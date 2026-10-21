import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Match Radar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.radar, size: 80, color: AppTheme.primaryColor),
            const SizedBox(height: 16),
            const Text('Tactical Radar Active', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Tracking Cross Delivery Angles & Sweep Distance', style: TextStyle(color: Colors.white60)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => RoutingService.openRegistrationUrl(),
              style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor),
              child: const Text('Full Tactical Breakdown', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

