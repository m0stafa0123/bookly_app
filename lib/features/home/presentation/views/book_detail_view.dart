import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/book_view_details.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
     body: BookViewDetails(), 
    );
  }
}