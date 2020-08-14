import './activity_model.dart';

class Destination {
  String imgUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imgUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
    imgUrl: 'assets/images/stmarksbasilica.jpg',
    name: "St. Mark\'s Basilica",
    type: "Sightseing tour",
    startTimes: ["09:00", "11:00"],
    rating: 4.5,
    price: 99.99,
  ),
  Activity(
    imgUrl: 'assets/images/gondola.jpg',
    name: "Gondola Ride and Shine",
    type: "Rides",
    startTimes: ["10:00", "14:00"],
    rating: 4.2,
    price: 89.99,
  ),
  Activity(
    imgUrl: 'assets/images/murano.jpg',
    name: "Wildlife Jungle",
    type: "Animals",
    startTimes: ["09:00", "11:00"],
    rating: 4.5,
    price: 99.99,
  ),
];

List<Destination> destinations = [
  Destination(
    imgUrl: "assets/images/venice.jpg",
    city: "Venice",
    country: "Italy",
    description: "Kuch din to guzaro Gujrat me.. Nahi!",
    activities: activities,
  ),
  Destination(
    imgUrl: "assets/images/newdelhi.jpg",
    city: "New Delhi",
    country: "India",
    description: "Kuch din to guzaro Gujrat me.. Nahi!",
    activities: activities,
  ),
  Destination(
    imgUrl: "assets/images/paris.jpg",
    city: "Paris",
    country: "France",
    description: "Kuch din to guzaro Gujrat me.. Nahi!",
    activities: activities,
  ),
  Destination(
    imgUrl: "assets/images/newyork.jpg",
    city: "New York",
    country: "England",
    description: "Kuch din to guzaro Gujrat me.. Nahi!",
    activities: activities,
  ),
  Destination(
    imgUrl: "assets/images/saopaulo.jpg",
    city: "Sao Paulo",
    country: "Brazil",
    description: "Kuch din to guzaro Gujrat me.. Nahi!",
    activities: activities,
  ),
];
