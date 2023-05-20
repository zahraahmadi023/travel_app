class TravelModel{
  String name;
  String location;
  String image;
  String distanse;
  String temp;
  String rating;
  String discription;
  String price;


  TravelModel(
    {
      required this.name,
      required this.location,
      required this.image,
      required this.distanse, 
      required this.temp,
      required this.rating,
      required this.discription,
      required this.price,
    }
  );
}
List<TravelModel> travelList=[
  TravelModel(name: "newyork",
  location: "newyork",
    image: "images/newyork.jpg",
    distanse: "8", 
    temp: "25.6", 
    rating: "5",
    discription: "discription locationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationcationlocationlocationlocationlocationlocationlocationcationlocationlocationlocationlocationlocationlocation",
    price: "47.50"), 

    TravelModel(name: "paric",
    location: "paris",
    image: "images/curren.jpg",
    distanse: "54", 
    temp: "5", 
    rating: "10",
    discription:"locationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocation" ,
    price: "65.50"),
      
  TravelModel(name: "coriea",
  location: "core",
    image:"images/kanada.jpg",
    distanse: "78", 
    temp: "99.6", 
    rating: "47",
    discription: "discription locationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationcationlocationlocationlocationlocationlocationlocationcationlocationlocationlocationlocationlocationlocationcationlocationlocationlocationlocationlocationlocation",
    price: "488.50"),

  TravelModel(name: "kanada",
  location: "kanada",
    image: "images/franc.jpg",
    distanse: "10", 
    temp: "55.6", 
    rating: "4",
    discription: "discription locationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocation",
    price: "89.50"),

    TravelModel(name: "italia",
  location: "italyia",
    image: "images/german.jpg",
    distanse: "15", 
    temp: "5.6", 
    rating: "4",
    discription: "discription locationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocationlocation",
    price: "8.50"),
];