import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/detail_page.dart';
import 'package:travel/models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 150,
          width: 120,
          color: Color(0xffF6F7F8),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imageUrl,
                    width: 120,
                    height: 102,
                    fit: BoxFit.fill,
                  ),
                  city.isPopular
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFF432FB3),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36),
                                )),
                            child: Center(
                              child: Image.asset(
                                'assets/icon_star.png',
                                width: 18,
                                height: 18,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                city.name,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282948),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
