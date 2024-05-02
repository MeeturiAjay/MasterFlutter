class CatalogModels {
  static final items = [
    Items(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th Gen",
        price: 999,
        color: "#33505a",
        image:
            "https://imgs.search.brave.com/jqVGb2uv1SWKSHmodNcLAbLtCzDApjitEMIAn3RoHf4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/OTEtaW1nLmNvbS9n/YWxsZXJ5X2ltYWdl/c191cGxvYWRzLzYv/Zi82ZjBlNDRkNGI3/MDdlMDFjYjFiOTJi/ZDYwZTViOWIzN2Fj/ZTFmZDI1LmpwZz90/cj1oLTU1MCx3LTAs/Yy1hdF9tYXg")
  ];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
