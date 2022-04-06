class NotificationModel {
  final String image;
  final String name;
  bool isRead;
  bool isJob;
  bool profileView;

  NotificationModel({
    required this.image,
    required this.name,
    this.isRead = false,
    this.isJob = false,
    this.profileView = false,
  });
}

List<NotificationModel> notificationsList = [
  NotificationModel(
    image: "images/womens/women8.jpg",
    name: "<b>Akansha Bhadani</b> shared a post",
  ),
  NotificationModel(
    image: "images/pages/profile/capegimini.jpg",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
    image: "images/pages/profile/amazon.jpg",
    name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
    profileView: true,
  ),
  NotificationModel(
      image: "images/pages/profile/icici.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
      isRead: true,
      isJob: true),
  NotificationModel(
      image: "images/pages/profile/tata.jpg",
      name:
          "Your <b>Job Alert</b> for <b>android Developer</b> in <b>Mumbai</b>",
      isRead: true),
  NotificationModel(
      image: "images/view.png",
      profileView: true,
      name:
          "<b>16 people</b> viewed your profile: Stay anonymous and see who's viewed your profile with Premium",
      isRead: true),
  NotificationModel(
      image: "images/pages/profile/amdocs.jpg",
      name:
          "Congratulate <b>Sam Parks</b> and 3 others for starting new positions",
      isRead: true),
  NotificationModel(
    image: "images/womens/women8.jpg",
    name: "<b>Akansha Bhadani</b> shared a post",
  ),
  NotificationModel(
    image: "images/pages/profile/amdocs.jpg",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
      image: "images/pages/profile/amazon.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
      isJob: true,
      isRead: true),
  NotificationModel(
      image: "images/pages/profile/linked.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
      isRead: true),
  NotificationModel(
    image: "images/pages/profile/amdocs.jpg",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
      image: "images/pages/profile/amazon.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
      isJob: true,
      isRead: true),
  NotificationModel(
      image: "images/pages/profile/linked.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
      isRead: true),
  NotificationModel(
    image: "images/pages/profile/amdocs.jpg",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
      image: "images/pages/profile/amazon.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
      isJob: true,
      isRead: true),
  NotificationModel(
      image: "images/pages/profile/linked.jpg",
      name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
      isRead: true),
];
