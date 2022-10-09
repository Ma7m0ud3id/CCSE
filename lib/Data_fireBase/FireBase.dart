import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:computer_and_control_system/Data_MOdel/Section.dart';
import 'package:flutter/material.dart';

import '../Data_MOdel/Lecture.dart';
import '../Data_MOdel/Material.dart';



class DateBaseUtils{

  // static CollectionReference<Lecture>getUserCollection(){
  //   return  FirebaseFirestore.instance.collection(Lecture.CollectionNameLecture)
  //       .withConverter(fromFirestore: (snapshot,_)=>Lecture.fromJson(snapshot.data()!),
  //       toFirestore: (user,_)=>user.toJson());
  // }
  // static CollectionReference<Section>getRoomsCollection(){
  //   return  FirebaseFirestore.instance.collection(Section.CollectionNameSection)
  //       .withConverter(fromFirestore: (snapshot,_)=>Section.fromJson(snapshot.data()!),
  //       toFirestore: (room,_)=>room.toJson());
  // }
  static CollectionReference<Materiall>getMaterialCollection(){
    return  FirebaseFirestore.instance.collection(Section.CollectionNameSection)
        .withConverter(fromFirestore: (snapshot,_)=>Materiall.fromJson(snapshot.data()!),
        toFirestore: (room,_)=>room.toJson());
  }
  // static CollectionReference<Message> getMessageCollection(String roomId){
  //   return getRoomsCollection().doc(roomId).collection(Message.ColleectionName)
  //       .withConverter<Message>(fromFirestore:(snapshot, _) => Message.fromJson(snapshot.data()!),
  //     toFirestore: (message, options) =>message.toJson(),);
  // }

  // static Future<void> createRoom(String title,String catId,String desc){
  //   var roomsCollection= getRoomsCollection();
  //   var docRef=roomsCollection.doc();
  //   Room room=Room(id: docRef.id, title: title, desc: desc, catId: catId);
  //   return docRef.set(room);
  // }

  // static Future<void> createDBUser(MyUser user){
  //   return getUserCollection().doc(user.id).set(user);
  // }

  // Stream<QuerySnapshot<Lecture>> getLectionFromFirebaseUseingStream() {
  //   var lecture = getUserCollection();
  //   return lecture.snapshots();
  // }
  //
  //   Stream<QuerySnapshot<Section>> getSectionFromFirebaseUseingStream() {
  //    var section = getRoomsCollection();
  //    return section.snapshots();
  //    }
  Stream<QuerySnapshot<Materiall>> getMaterialFromFirebaseUseingStream() {
    var section = getMaterialCollection();
    return section.snapshots();
  }




}