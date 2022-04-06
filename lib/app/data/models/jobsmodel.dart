class JobsModel {
  final String companyName;
  final String companyImage;
  final String jobtype;

  JobsModel(
      {required this.companyName,
      required this.companyImage,
      required this.jobtype});
}

List<JobsModel> jobsList = [
  JobsModel(
      companyName: "Amazon Company",
      companyImage: "images/pages/profile/amazon.jpg",
      jobtype: "Flutter Developer"),
  JobsModel(
      companyName: "Amdocs Company",
      companyImage: "images/pages/profile/amdocs.jpg",
      jobtype: "Android Developer"),
  JobsModel(
      companyName: "Capegimini",
      companyImage: "images/pages/profile/capegimini.jpg",
      jobtype: "Java Developer"),
  JobsModel(
      companyName: "Coding Ninja",
      companyImage: "images/pages/profile/codingninja.jpg",
      jobtype: "PHP Developer"),
  JobsModel(
      companyName: "Deloitte",
      companyImage: "images/pages/profile/deloitte.jpg",
      jobtype: "Android Developer"),
  JobsModel(
      companyName: "Flipkar",
      companyImage: "images/pages/profile/flipkart.jpg",
      jobtype: "Android Developer"),
];
