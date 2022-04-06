class PagesModel {
  final String name;
  final int followers;
  final String image;
  final String coverPhoto;

  PagesModel(
      {required this.name,
      required this.followers,
      required this.image,
      required this.coverPhoto});
}

List<PagesModel> pageslist = [
  //1
  PagesModel(
      name: "Amazon",
      followers: 1111111111,
      image: "images/pages/profile/amazon.jpg",
      coverPhoto: "images/pages/cover/amazon.jpg"),

  PagesModel(
      name: "Amdocs",
      followers: 1111111111,
      image: "images/pages/profile/amdocs.jpg",
      coverPhoto: "images/pages/cover/amdocs.jpg"),

  PagesModel(
      name: "Capegimini",
      followers: 1111111111,
      image: "images/pages/profile/capegimini.jpg",
      coverPhoto: "images/pages/cover/capegimini.jpg"),

  PagesModel(
      name: "CodingNinja",
      followers: 1111111111,
      image: "images/pages/profile/codingninja.jpg",
      coverPhoto: "images/pages/cover/codingninja.jpg"),
  PagesModel(
      name: "Deloitte",
      followers: 1111111111,
      image: "images/pages/profile/deloitte.jpg",
      coverPhoto: "images/pages/cover/deloitte.jpg"),

  PagesModel(
      name: "Flipkart",
      followers: 1111111111,
      image: "images/pages/profile/flipkart.jpg",
      coverPhoto: "images/pages/cover/flipkart.jpg"),
  PagesModel(
      name: "ICICI",
      followers: 1111111111,
      image: "images/pages/profile/icici.jpg",
      coverPhoto: "images/pages/cover/icici.jpg"),
  PagesModel(
      name: "Linked",
      followers: 1111111111,
      image: "images/pages/profile/linked.jpg",
      coverPhoto: "images/pages/cover/linked.jpg"),
  PagesModel(
      name: "Tata",
      followers: 1111111111,
      image: "images/pages/profile/tata.jpg",
      coverPhoto: "images/pages/cover/tata.jpg"),
  PagesModel(
      name: "Uber",
      followers: 1111111111,
      image: "images/pages/profile/uber.jpg",
      coverPhoto: "images/pages/cover/uber.jpg"),
];
