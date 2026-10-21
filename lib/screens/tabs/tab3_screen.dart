import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Penalty Radar')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _penaltyCard('Opponent Striker #9', 'Right Corner (72%)', 'Dives: High Left'),
          _penaltyCard('Midfield Playmaker #10', 'Left Low (65%)', 'Dives: Low Right'),
          _penaltyCard('Winger #7', 'Center Stutter (50%)', 'Stay Central'),
        ],
      ),
    );
  }
  Widget _penaltyCard(String name, String tendency, String advice) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 4),
          Text('Favorite Zone: $tendency', style: const TextStyle(color: AppTheme.secondaryColor)),
          const SizedBox(height: 6),
          Text('GK Strategy: $advice', style: const TextStyle(color: Colors.white70, fontSize: 13)),
        ],
      ),
    );
  }
}

