import 'package:flutter/material.dart';

class TugasLayout extends StatelessWidget {
  const TugasLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section (Good morning, Alex and search icon)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Good morning, Alex',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Main content: Earnings card and two smaller cards
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Earnings card
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                                Icons.grap,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                          Text(
                            'Earnings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$8,350',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '+10% since last month',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Rank and Projects cards
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // Rank card
                       // Rank card 
                        _buildFixedCard( 
                          child: const Column( 
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [ 
                              Text( 
                                '98', 
                                style: TextStyle( 
                                  fontSize: 32, 
                                  fontWeight: FontWeight.bold, 
                                ),
                              ), 
                              SizedBox(height: 8), 
                              Text('Rank'), 
                              Text( 'In top 30%', 
                              style: TextStyle(
                                color: Colors.grey), 
                              ), 
                            ], 
                          ),
                        ), 
                        const SizedBox(height: 16),
                        // Projects card
                        _buildFixedCard(
                          height: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '32',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text('Projects'),
                              const Text(
                                '8 this month',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 10),
                              Wrap(
                                spacing: 8,
                                runSpacing: 4,
                                children: [
                                  _buildTag('mobile app'),
                                  _buildTag('branding'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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

  // Helper method to build a fixed size card
  static Widget _buildFixedCard({required double height, required Widget child}) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }

  // Helper method to build the project tags
  static Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
