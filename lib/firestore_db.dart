import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddDataToDB {
  CollectionReference response = FirebaseFirestore.instance.collection(
    'contact',
  );

  Future<void> addData({
    required BuildContext context, // Add context parameter
    required String name,
    required String email,
    required String message,
    required String lastName,
    required String phone,
  }) async {
    try {
      await response.add({
        'name': name,
        'email': email,
        'message': message,
        'lastName': lastName,
        'phone': phone,
        'timestamp': FieldValue.serverTimestamp(), // Add timestamp
      });

      debugPrint("Data Added Successfully");

      // Show success snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          width: 500,
          content: const Text('Message sent successfully!'),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    } catch (error) {
      debugPrint("Error adding data: $error");

      // Show error snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          // width: 500,
          content: Text('Failed to send message: $error'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 4),
        ),
      );
    }
  }
}
