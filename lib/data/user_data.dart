

// import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user_model.dart';

// class User{
//   final int id;
//   final int age;
//   final String name;
//   final String picUrl;
//   final bool isOnline;
//   final String gender;
//   final String location;
//   final String interestedIn;
  
  
//   User({
//     required this.id,
//     required this.age,
//     required this.name,
//     required this.picUrl,
//     required this.isOnline,
//     required this.gender,
//     required this.location,
//     required this.interestedIn,
//   });
// }


// final currentUser = StateProvider<User>((ref) => User(
final currentUser = User(
  id: 0,
  age: 25,
  name: 'John Wick',
  picUrl: 'assets/img/000.jpg',
  isOnline: true,
  gender: 'M',
  location: 'Wahington DC',
  interestedIn: 'Relationship'
);


// alfa lagos = 08035069182.
// final users = StateProvider<List<User>>((ref) => [
final users = [
  User(
    id: 1,
    age: 21,
    name: 'Roxanne',
    picUrl: 'assets/img/001.jpg',
    isOnline: true,
    gender: 'F',
    location: 'Columbus, OH',
    interestedIn: 'Marriage'
  ),
  
  User(
    id: 2,
    age: 27,
    name: 'Steve',
    picUrl: 'assets/img/002.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Lagos IK',
    interestedIn: 'Marriage'
  ),
  
  User(
    id: 3,
    age: 22,
    name: 'Betty',
    picUrl: 'assets/img/003.jpg',
    isOnline: false,
    gender: 'F',
    location: 'Boston',
    interestedIn: 'Flirt'
  ),
  
  User(
    id: 4,
    age: 19,
    name: 'Michael',
    picUrl: 'assets/img/004.jpg',
    isOnline: false,
    gender: 'M',
    location: 'Illionis',
    interestedIn: 'Friendship'
  ),
  
  User(
    id: 5,
    age: 23,
    name: 'Stephanie',
    picUrl: 'assets/img/005.jpg',
    isOnline: true,
    gender: 'F',
    location: 'Columbus',
    interestedIn: 'Relationship'
  ),
  
  User(
    id: 6,
    age: 25,
    name: 'Frank',
    picUrl: 'assets/img/006.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Washington',
    interestedIn: 'Friendship'
  ),
  
  User(
    id: 7,
    age: 32,
    name: 'Vanessa',
    picUrl: 'assets/img/007.jpg',
    isOnline: true,
    gender: 'F',
    location: 'Dallas',
    interestedIn: 'Marriage'
  ),
  
  User(
    id: 8,
    age: 25,
    name: 'Carolina',
    picUrl: 'assets/img/008.jpg',
    isOnline: false,
    gender: 'F',
    location: 'Barbados',
    interestedIn: 'Flirt'
  ),
  
  User(
    id: 9,
    age: 20,
    name: 'Jude',
    picUrl: 'assets/img/009.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Enugu',
    interestedIn: 'Relationship'
  ),
  
  User(
    id: 10,
    age: 47,
    name: 'Maxwell',
    picUrl: 'assets/img/010.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Durban',
    interestedIn: 'Marriage'
  ),
  
  User(
    id: 11,
    age: 57,
    name: 'Cane',
    picUrl: 'assets/img/011.jpg',
    isOnline: false,
    gender: 'M',
    location: 'Paris',
    interestedIn: 'Flirt'
  ),
  
  User(
    id: 12,
    age: 37,
    name: 'Sherifdeen',
    picUrl: 'assets/img/012.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Dubai',
    interestedIn: 'Marriage'
  ),
  
  User(
    id: 13,
    age: 31,
    name: 'Yussuf',
    picUrl: 'assets/img/013.jpg',
    isOnline: true,
    gender: 'M',
    location: 'Qatar',
    interestedIn: 'Relationship'
  ),
  
  User(
    id: 14,
    age: 24,
    name: 'Ngozi',
    picUrl: 'assets/img/014.jpg',
    isOnline: true,
    gender: 'F',
    location: 'Abuja',
    interestedIn: 'Flirt'
  ),
  
  User(
    id: 15,
    age: 20,
    name: 'Fatima',
    picUrl: 'assets/img/015.jpg',
    isOnline: false,
    gender: 'F',
    location: 'Kano',
    interestedIn: 'Marriage'
  ),
];