import 'package:flutter/material.dart';
import 'package:travelapp/models/country_models.dart';

List<CountryModels> getCountry(){

  List<CountryModels>counts = new List();
  CountryModels countryModels = new CountryModels();

  countryModels.countryName = "ThaiLand";
  countryModels.label = "New";
  countryModels.noOfTour = 18;
  countryModels.rating = 4.5;
  countryModels.url = "https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=704&q=80";
  counts.add(countryModels);

  countryModels = new CountryModels();
  countryModels.countryName = "Malaysia";
  countryModels.label = "Sale";
  countryModels.noOfTour = 12;
  countryModels.rating = 4.3;
  countryModels.url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80";
  counts.add(countryModels);

  countryModels = new CountryModels();
  countryModels.countryName = "Vietnam";
  countryModels.label = "New";
  countryModels.noOfTour = 5;
  countryModels.rating = 4.4;
  countryModels.url = "https://images.unsplash.com/flagged/photo-1575834678162-9fd77151f40b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  counts.add(countryModels);

  countryModels = new CountryModels();
  countryModels.countryName = "Japan";
  countryModels.label = "New";
  countryModels.noOfTour = 10;
  countryModels.rating = 4.4;
  countryModels.url = "https://images.unsplash.com/photo-1414609245224-afa02bfb3fda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  counts.add(countryModels);

  countryModels = new CountryModels();
  countryModels.countryName = "USA";
  countryModels.label = "New";
  countryModels.noOfTour = 9;
  countryModels.rating = 4.1;
  countryModels.url = "https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  counts.add(countryModels);

   return counts;
}