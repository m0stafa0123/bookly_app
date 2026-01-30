import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presentation/view-model/book_detail/book_details_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/book_view_details_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    BlocProvider.of<BookDetailsCubit>(
      context,
    ).fetchNewestBooks(widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookViewDetailsBody()));
  }
}
