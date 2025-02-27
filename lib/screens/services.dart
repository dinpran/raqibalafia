import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background_6.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  child: Text(
                    'SERVICES',
                    style: GoogleFonts.lato(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side - Image with Text Overlay
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/welness_clinics.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Text(
                            'Wellness Clinics',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  // Right Side - Description
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wellness clinics help you take control of your health by monitoring daily vitals and offering personalized insights for a healthier lifestyle. Through preventive care, nutrition counseling, stress management, and physical therapy, they empower you to make informed decisions about your well-being. Whether you're tracking heart rate, breathing rate, or overall wellness, these clinics provide expert guidance to optimize your health.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "✅ Daily Vital Monitoring – Track heart rate, breathing rate, and other key health metrics. \n✅ Preventive Health Screenings – Early detection of potential health issues. \n✅ Nutrition & Lifestyle Coaching – Personalized guidance for sustainable wellness. \n✅ Physical Therapy & Rehabilitation – Pain management and recovery support.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Get In Touch',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side - Image with Text Overlay

                  // Right Side - Description
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home care telemedicine brings healthcare to your fingertips by allowing remote monitoring of daily vitals and virtual consultations. Get real-time insights into your heart rate, breathing rate, and overall wellness before your doctor's visit, ensuring timely and informed medical decisions. Stay connected with healthcare professionals from the comfort of your home for personalized care and early intervention.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "✅ Remote Vital Monitoring – Track heart rate, breathing rate, and more before your visit. \n✅ Virtual Consultations – Connect with doctors from anywhere for expert advice. \n✅ Early Health Insights – Detect changes in your health for timely medical attention. \n✅ Personalized Home Care – Convenient and continuous support for a healthier life.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Get In Touch',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/homecare.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Text(
                            'Home care/telemedicine',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side - Image with Text Overlay
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/medical_university.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Text(
                            'Medical University',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  // Right Side - Description
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Medical universities contribute to groundbreaking field research even without specialized equipment. By utilizing observational studies, patient surveys, and digital health tools, researchers gather real-world health insights. This approach is essential for community health assessments, epidemiological studies, and medical advancements in remote areas.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "✅ Community Health Studies – Collecting health data through direct interaction and surveys. \n✅ Epidemiological Research – Tracking disease patterns and public health trends. \n✅ Digital Health Monitoring – Leveraging mobile apps and wearables for remote patient insights.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Get In Touch',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side - Image with Text Overlay

                  // Right Side - Description
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Health insurance providers are leveraging real-time vital monitoring to offer personalized and fair premium rates. By using wearable technology and health tracking apps, insurers can assess lifestyle habits, detect health risks early, and reward proactive wellness management with optimized premiums.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "✅ Personalized Premiums – Adjusted based on real-time health data. \n✅ Early Risk Detection – Preventive insights for better coverage. \n✅ Wellness Incentives – Rewards for maintaining a healthy lifestyle.",
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Get In Touch',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/health_insurance.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Text(
                            'Health Insurance',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
}
