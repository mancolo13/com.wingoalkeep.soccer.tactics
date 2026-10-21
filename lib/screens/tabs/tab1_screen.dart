import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • GK Defense Zone'),
        actions: [
          IconButton(icon: const Icon(Icons.flash_on, color: AppTheme.primaryColor), onPressed: () => RoutingService.openRegistrationUrl()),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor]),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.4)),
            ),
            child: Column(
              children: [
                const Text('SAVE PERCENTAGE THIS SEASON', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                const SizedBox(height: 8),
                const Text('78.4%', style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900, color: AppTheme.secondaryColor)),
                const SizedBox(height: 4),
                const Text('Expected Goals Prevented: +4.2 xG', style: TextStyle(color: Colors.white70, fontSize: 13)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Save Zone Efficiency', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _zoneRow('Top Corners', '86% Saved', Colors.greenAccent),
          _zoneRow('Low Driven Shots', '72% Saved', Colors.amberAccent),
          _zoneRow('Close-Range 1v1s', '65% Saved', Colors.orangeAccent),
          _zoneRow('Aerial Cross Claims', '92% Claimed', Colors.greenAccent),
        ],
      ),
    );
  }
  Widget _zoneRow(String title, String val, Color c) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(val, style: TextStyle(color: c, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

