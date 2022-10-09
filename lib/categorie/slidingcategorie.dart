import 'package:carousel_slider/carousel_slider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;
  const Category({
    required this.imageUrl,
    required this.name,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];
  static List<Category> Categories = [
    const Category(
        imageUrl:
            'https://imgs.search.brave.com/DEq85TRfE006gr_Si1UcPrRies7ysl5NlutBLA8SABY/rs:fit:1200:1080:1/g:ce/aHR0cHM6Ly9zMS5j/ZG4uYXV0b2V2b2x1/dGlvbi5jb20vaW1h/Z2VzL2dhbGxlcnkv/TUVSQ0VERVMtQkVO/Wi1TTC1DbGFzcy0t/UjIzMS0tNTYxNl80/LmpwZw',
        name: 'mercedes benz'),
    const Category(
        imageUrl:
            'https://imgs.search.brave.com/v9aQ5DqcPYdnu1RmiJj5E6S1xy1LYPGG38kHWbmD0OU/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5y/OWdPb0I2R0hqWHZw/Z1ZaSnV2dXlBSGFF/OCZwaWQ9QXBp',
        name: 'ferrari'),
    const Category(
        imageUrl:
            'https://imgs.search.brave.com/-0KzDHdwsBg6g1dzE3GWq3MW83Om6C8XD3zQJoU1kKQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/dGhld293c3R5bGUu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDE1LzAyL0F1ZGkt/Y2FyLXdhbGxwYXBl/ci0xLmpwZw',
        name: 'audi'),
    const Category(
        imageUrl:
            'https://imgs.search.brave.com/R8P9Uh0R93Lwgbq-Stj7_qYFIkaz3sEOWWHh6EiuvLQ/rs:fit:1200:1064:1/g:ce/aHR0cDovLzQuYnAu/YmxvZ3Nwb3QuY29t/Ly02UENRc0NpWTBC/Zy9ValhUOWhNQVRk/SS9BQUFBQUFBQUN0/Zy9TNFJFQ0NpUXcx/ay9zMTYwMC9CTVct/aTgtMjAxNC0wNi5q/cGc',
        name: 'bmw'),
  ];
}

class MainSliders extends StatelessWidget {
  MainSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: Category.Categories.map(
          (Category) => HeroCarasoul(category: Category)).toList(),
    ));
  }
}

class HeroCarasoul extends StatelessWidget {
  final Category category;
  const HeroCarasoul({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imageUrl,
                  fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
