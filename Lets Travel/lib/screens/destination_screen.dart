import 'package:LetsTravel/models/activity_model.dart';
import 'package:LetsTravel/models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(double rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '* ';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            height: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 10.0),
              ],
            ),
            child: Hero(
              tag: widget.destination.imgUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                child: Image(
                  image: AssetImage(widget.destination.imgUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  color: Colors.black54,
                  iconSize: 30.0,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                Row(
                  children: [
                    IconButton(
                      color: Colors.black54,
                      iconSize: 30.0,
                      icon: Icon(Icons.search),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      color: Colors.black54,
                      iconSize: 30.0,
                      icon: Icon(Icons.sort),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.destination.city,
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.locationArrow,
                      color: Colors.white70,
                      size: 15.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      widget.destination.country,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 20.0,
            bottom: 20.0,
            child: Icon(
              Icons.location_on,
              size: 30.0,
              color: Colors.white70,
            ),
          )
        ]),
        SizedBox(height: 10.0),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
            itemCount: widget.destination.activities.length,
            itemBuilder: (context, index) {
              Activity activity = widget.destination.activities[index];
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                    height: 150.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(120.0, 0.0, 10.0, 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.0,
                                child: Text(
                                  activity.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$${activity.price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Text(
                                    'per pax',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            activity.type,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          _buildRatingStars(activity.rating),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 22.0,
                                width: 70.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).accentColor,
                                ),
                                child: Text(
                                  activity.startTimes[0],
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 22.0,
                                width: 70.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).accentColor,
                                ),
                                child: Text(
                                  activity.startTimes[1],
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    bottom: 15.0,
                    left: 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                          width: 135.0,
                          image: AssetImage(activity.imgUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ]),
    );
  }
}
