// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final String name;
  final String gender;
  Contact({
    required this.name,
    required this.gender,
  });
}

final contacts = [
  Contact(gender: 'female', name: 'Alixia'),
  Contact(gender: 'male', name: 'Winston'),
  Contact(gender: 'male', name: 'Vick'),
  Contact(gender: 'female', name: 'Zaahra'),
  Contact(gender: 'female', name: 'Stephie'),
  Contact(gender: 'male', name: 'Yusuf'),
  Contact(gender: 'female', name: 'Rousey'),
  Contact(gender: 'male', name: 'Baimam'),
];
