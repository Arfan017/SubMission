class Certificate {
  late String imageAsset;
  late String nameCourse;
  late String courses;

  Certificate({
    required this.imageAsset,
    required this.nameCourse,
    required this.courses,
  });
}

var CertificateLIst = [
  Certificate(
      imageAsset: "images/kotlin.jpg",
      nameCourse: "Memulai Pemrograman Dengan Kotlin",
      courses: "Course Dicoding"),
  Certificate(
      imageAsset: "images/python.jpg",
      nameCourse: "Memulai Pemrograman Dengan Python",
      courses: "Course Dicoding"),
  Certificate(
      imageAsset: "images/AWS.jpg",
      nameCourse: "Membangun Arsitektur Cloud di AWS",
      courses: "Course Dicoding"),
];
