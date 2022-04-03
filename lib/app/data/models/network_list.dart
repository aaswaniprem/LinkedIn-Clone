class NetworkList {
  final String name;
  final String image;
  final int total;
  NetworkList({required this.name, required this.image, required this.total});
}

List<NetworkList> networkslist = [
  NetworkList(name: "Connections", image: "", total: 12293),
  NetworkList(name: "People I follow", image: "", total: 9),
  NetworkList(name: "Hastags", image: "", total: 4),
  NetworkList(name: "Companies", image: "", total: 67),
  NetworkList(name: "Groups", image: "", total: 18),
  NetworkList(name: "Newsletters", image: "", total: 1),
];
