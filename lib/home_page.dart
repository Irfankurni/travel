import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel/models/event.dart';
import 'package:travel/widgets/city_card.dart';
import 'package:travel/widgets/custom_tab_indicator.dart';
import 'package:travel/widgets/event_card.dart';

import 'models/city.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  Widget headers() {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage('assets/photo_profile.png'),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Bimo",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF282948),
                  ),
                ),
                Text(
                  "Good Morning",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF515151),
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
      ),
      child: Text(
        'Let’s enjoy your \nVacation',
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xFF282948),
        ),
      ),
    );
  }

  Widget categories() {
    return Container(
      height: 30,
      margin: EdgeInsets.only(left: 15, top: 28.8),
      child: DefaultTabController(
        length: 6,
        child: TabBar(
          labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          isScrollable: true,
          labelColor: Color(0xFF432FB3),
          unselectedLabelColor: Color(0xFF808080),
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700),
          unselectedLabelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700),
          indicator: RoundedRectangleTabIndicator(
              color: Color(0xFF432FB3), weight: 2.4, width: 14.4),
          tabs: [
            Tab(
              child: Container(
                child: Text('All'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Asia'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Africa'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('America'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Europe'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('North'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularCityTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        top: 36,
        right: 30,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular City",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
            ),
          ),
          Text(
            "See All",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF808080),
            ),
          ),
        ],
      ),
    );
  }

  Widget popularCity() {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CityCard(
            City(
              id: 1,
              name: 'Bali',
              imageUrl: 'assets/bali.png',
              isPopular: true,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CityCard(
            City(
              id: 2,
              name: 'Paris',
              imageUrl: 'assets/paris.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CityCard(
            City(
              id: 4,
              name: 'London',
              imageUrl: 'assets/england.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CityCard(
            City(
                id: 5,
                name: 'Singapore',
                imageUrl: 'assets/city3.png',
                isPopular: true),
          ),
          SizedBox(
            width: 20,
          ),
          CityCard(
            City(
              id: 6,
              name: 'Tokyo',
              imageUrl: 'assets/city4.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget eventTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        top: 36,
        right: 30,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Ongoing Events",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
            ),
          ),
          Text(
            "See All",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF808080),
            ),
          ),
        ],
      ),
    );
  }

  Widget ongoingEvent() {
    return Container(
      height: 205,
      margin: EdgeInsets.only(
        left: 30,
        bottom: 30,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          EventCard(
            Event(
              id: 1,
              name: "Rio Carnival, Rio de Janeiro",
              imageUrl: 'assets/brazil.png',
              location: "Brazil",
            ),
          ),
          EventCard(
            Event(
              id: 2,
              name: "Sapporo Festival",
              imageUrl: 'assets/japan.png',
              location: "Japan",
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          headers(),
          title(),
          categories(),
          popularCityTitle(),
          popularCity(),
          eventTitle(),
          ongoingEvent()
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color(0xFF6A5EE8),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notification"),
            selectedColor: Color(0xFF6A5EE8),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
            selectedColor: Color(0xFF6A5EE8),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setting"),
            selectedColor: Color(0xFF6A5EE8),
          ),
        ],
      ),
    );
  }
}
