import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/data/list_country.dart';
import 'package:travelapp/data/list_popular_tours.dart';
import 'package:travelapp/models/country_models.dart';
import 'package:travelapp/models/popular_tours_models.dart';

class DetailPage extends StatefulWidget {
  final String placeName;
  final String location;
  final String imgUrl;
  final double ratingstar;

  const DetailPage({@required this.placeName, @required this.imgUrl,
      @required this.ratingstar, @required this.location});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<CountryModels> country = new List();

  @override
  void initState() {
    // TODO: implement initState
    country = getCountry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      widget.imgUrl,
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.only(top: 40, left: 20, right: 20),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                Spacer(),
                                Icon(
                                  Icons.share,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Image.asset(
                                  "assets/heart_icon.png",
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              widget.placeName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white60,
                                  size: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    widget.location,
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RatingBar(widget.ratingstar),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FeaturesTile("assets/wifi.png", "Free \nWi-fi"),
                    FeaturesTile("assets/beach.png", "Sand Beach"),
                    FeaturesTile("assets/gym.png", "Fitness Gym"),
                    FeaturesTile("assets/wine.png", "Bar and restaurant"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DetailCards("Booking", "assets/letter-b.png", "8.0/10",
                        "Bwased on 30 reviews"),
                    DetailCards("HotelOut", "assets/emoji.png", "4/5",
                        "Bwased on 30 reviews"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.",
                    style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff838383)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: country.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CountryListTile(
                          url: country[index].url,
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final double rating;

  RatingBar(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: rating >= 1 ? Colors.white : Colors.white38,
                  size: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 2 ? Colors.white : Colors.white38,
                  size: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 3 ? Colors.white : Colors.white38,
                  size: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 4 ? Colors.white : Colors.white38,
                  size: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 5 ? Colors.white : Colors.white38,
                  size: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      rating.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  final String icon;
  final String label;

  const FeaturesTile(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff838383),
                ),
                borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            width: 70,
            child: Text(
              label,
              style: TextStyle(
                  color: Color(0xff838383),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class DetailCards extends StatelessWidget {
  final String label;
  final String icon;
  final String rating;
  final String descriptions;

  const DetailCards(@required this.label, @required this.icon,
      @required this.rating, @required this.descriptions);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffC8D1D7).withOpacity(0.4),
      ),
      height: 100,
      width: 180,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffD5E6F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  icon,
                  height: 40,
                  width: 40,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      label,
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              descriptions,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  final String url;

  const CountryListTile({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: url,
          height: 200,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
