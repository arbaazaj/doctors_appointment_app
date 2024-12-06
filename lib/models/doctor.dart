class Doctor {
  final String name;
  final String profession;
  final String yearOfExperience;
  final String likeablePercentage;
  final String profileImageSrc;
  final int fee;

  Doctor({
    required this.name,
    required this.profession,
    required this.yearOfExperience,
    required this.likeablePercentage,
    required this.profileImageSrc,
    required this.fee,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      profession: json['profession'],
      yearOfExperience: json['yearOfExperience'],
      likeablePercentage: json['likeablePercentage'],
      profileImageSrc: json['profileImageSrc'],
      fee: json['fee'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'profession': profession,
        'yearOfExperience': yearOfExperience,
        'likeablePercentage': likeablePercentage,
        'profileImageSrc': profileImageSrc,
        'fee': fee,
      };
}

final doctors = <Doctor>[
  Doctor(
    name: 'Darrell Steward',
    profession: 'General Practitioner',
    yearOfExperience: '10 years',
    likeablePercentage: '98%',
    profileImageSrc:
        'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
    fee: 100,
  ),
  Doctor(
    name: 'Dr. John Doe',
    profession: 'Cardiologist',
    yearOfExperience: '15 years',
    likeablePercentage: '95%',
    profileImageSrc:
        'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    fee: 200,
  ),
  Doctor(
    name: 'Dr. Jane Smith',
    profession: 'Dentist',
    yearOfExperience: '8 years',
    likeablePercentage: '90%',
    profileImageSrc:
        'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=2000',
    fee: 150,
  ),
  Doctor(
    name: 'Dr. Mark Johnson',
    profession: 'Dermatologist',
    yearOfExperience: '12 years',
    likeablePercentage: '97%',
    profileImageSrc:
        'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
    fee: 180,
  ),
  Doctor(
    name: 'Dr. Emily Brown',
    profession: 'Pediatrician',
    yearOfExperience: '5 years',
    likeablePercentage: '92%',
    profileImageSrc:
        'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    fee: 120,
  ),
  Doctor(
    name: 'Dr. Michael Davis',
    profession: 'Orthopedic Surgeon',
    yearOfExperience: '20 years',
    likeablePercentage: '99%',
    profileImageSrc:
        'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=2000',
    fee: 250,
  ),
  Doctor(
    name: 'Dr. Sarah Wilson',
    profession: 'Gynecologist',
    yearOfExperience: '13 years',
    likeablePercentage: '96%',
    profileImageSrc:
        'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
    fee: 190,
  ),
  Doctor(
    name: 'Dr. Robert Anderson',
    profession: 'Urologist',
    yearOfExperience: '8 years',
    likeablePercentage: '94%',
    profileImageSrc:
        'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    fee: 160,
  )
];
