import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_header.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 30,
              left: 30,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(
                  "Bali, Indonesia",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Info Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFE7E5FD),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star_blue.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "4.92",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFE7E5FD),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_cloud.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "27ºC",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFE7E5FD),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_airplane.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "9 Jan",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Description",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),

                //Book Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starting From",
                            style: GoogleFonts.poppins(fontSize: 13),
                          ),
                          Text(
                            "\$500 - 750",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xFF432FB3),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      margin: EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF432FB3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Book Now',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
