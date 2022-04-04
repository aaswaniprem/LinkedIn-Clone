class NotificationModel {
  final String image;
  final String name;
  bool isRead;
  bool isJob;

  NotificationModel(
      {required this.image,
      required this.name,
      this.isRead = false,
      this.isJob = false});
}

List<NotificationModel> notificationsList = [
  NotificationModel(
    image: "images/",
    name: "<b>Akansha Bhadani</b> shared a post",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>android Developer</b> in <b>Mumbai</b>",
  ),
  NotificationModel(
    image: "images/",
    name:
        "<b>16 people</b> viewed your profile: Stay anonymous and see who's viewed your profile with Premium",
  ),
  NotificationModel(
    image: "images/",
    name:
        "Congratulate <b>Sam Parks</b> and 3 others for starting new positions",
  ),
  NotificationModel(
    image: "images/",
    name: "<b>Akansha Bhadani</b> shared a post",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert<b> for <b>flutter</b> in <b>Jaipur</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>India</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>flutter</b> in <b>Mumbai</b>",
  ),
  NotificationModel(
    image: "images/",
    name: "Your <b>Job Alert</b> for <b>android Developer</b> in <b>Mumbai</b>",
  ),
  NotificationModel(
    image: "images/",
    name:
        "<b>16 people</b> viewed your profile: Stay anonymous and see who's viewed your profile with Premium",
  ),
  NotificationModel(
    image: "images/",
    name:
        "Congratulate <b>Sam Parks</b> and 3 others for starting new positions",
  )
];
