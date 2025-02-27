import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle("Why Choose Us?"),
                  SizedBox(height: 12),
                  _buildDescription(
                    "We redefine health and wellness through technology, offering personalized insights, real-time monitoring, and seamless user experience—all backed by expert guidance.",
                  ),
                  SizedBox(height: 30),
                  _buildFeatureTile(
                    title: 'Cutting-Edge Technology',
                    description:
                        'AI-driven analytics and wearable tech ensure real-time health tracking with precision.',
                    imagePath: 'assets/cutting_edge.png',
                  ),
                  _buildFeatureTile(
                    title: 'Personalized Health Insights',
                    description:
                        'Data-driven recommendations tailored to individual health goals and lifestyle.',
                    imagePath: 'assets/personalised.png',
                  ),
                  _buildFeatureTile(
                    title: 'Expert Healthcare Support',
                    description:
                        'Instant access to top-tier medical professionals for guidance and proactive care.',
                    imagePath: 'assets/expert.png',
                  ),
                  _buildFeatureTile(
                    title: 'Seamless & Intuitive Experience',
                    description:
                        'A sleek, user-friendly interface designed for smooth navigation and ease of use.',
                    imagePath: 'assets/seamless.png',
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Learn More',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// **Header Section with Background Image**
  Widget _buildHeader() {
    return Stack(
      children: [
        // Background Image
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_7.png'), // Background Image
              fit: BoxFit.cover, // Covers the whole area
            ),
          ),
        ),
        // "WHY US" Text Over Background
        Positioned(
          top: 120,
          left: 20,
          child: Text(
            'WHY US',
            style: GoogleFonts.lato(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String text) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildDescription(String text) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
        height: 1.5,
      ),
    );
  }

  Widget _buildFeatureTile({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.4,
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
