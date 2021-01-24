import 'package:flutter/material.dart';
import 'package:places_recommendation/Screens/places_list.dart';
import 'package:places_recommendation/Screens/trip_list.dart';

class PlacesRecommendation extends StatefulWidget {
  @override
  _PlacesRecommendationState createState() => _PlacesRecommendationState();
}

class _PlacesRecommendationState extends State<PlacesRecommendation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47516C),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => _currentIndex = 0),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            colors: [
                              Color(0xff7558FF),
                              Color(0xff3396FF),
                              Color(0xff1AB0FF)
                            ]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.place,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Ratings',
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _currentIndex = 1),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            colors: [
                              Color(0xffFFC300),
                              Color(0xffFFB400),
                              Color(0xffFF9E00)
                            ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.trip_origin_rounded,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Trip',
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              _currentIndex == 0 ? PlacesList() : TripList()
            ],
          ),
        ),
      ),
    );
  }
}
