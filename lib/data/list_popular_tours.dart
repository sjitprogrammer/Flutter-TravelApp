import 'package:flutter/material.dart';
import 'package:travelapp/models/popular_tours_models.dart';

List<PopularToursModels> getPopularTours(){
  List<PopularToursModels> tours = new List();
  PopularToursModels popularToursModels = new PopularToursModels();
  popularToursModels.countryName = "Thailand";
  popularToursModels.description = "10 nights for two/all inclusive";
  popularToursModels.price = 245.50;
  popularToursModels.rating = 4.5;
  popularToursModels.imgUrl = "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  tours.add(popularToursModels);

  popularToursModels = new PopularToursModels();
  popularToursModels.countryName = "Cuba";
  popularToursModels.description = "10 nights for two/all inclusive";
  popularToursModels.price = 499.99;
  popularToursModels.rating = 5;
  popularToursModels.imgUrl = "https://images.unsplash.com/photo-1414609245224-afa02bfb3fda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  tours.add(popularToursModels);

  popularToursModels = new PopularToursModels();
  popularToursModels.countryName = "Dominican";
  popularToursModels.description = "10 nights for two/all inclusive";
  popularToursModels.price = 150.35;
  popularToursModels.rating = 2.1;
  popularToursModels.imgUrl = "https://images.unsplash.com/flagged/photo-1575834678162-9fd77151f40b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  tours.add(popularToursModels);

  popularToursModels = new PopularToursModels();
  popularToursModels.countryName = "Japan";
  popularToursModels.description = "10 nights for two/all inclusive";
  popularToursModels.price = 245.50;
  popularToursModels.rating = 3.3;
  popularToursModels.imgUrl = "https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  tours.add(popularToursModels);

  popularToursModels = new PopularToursModels();
  popularToursModels.countryName = "Korea";
  popularToursModels.description = "10 nights for two/all inclusive";
  popularToursModels.price = 245.50;
  popularToursModels.rating = 4.4;
  popularToursModels.imgUrl = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80";
  tours.add(popularToursModels);

  return tours;

}

