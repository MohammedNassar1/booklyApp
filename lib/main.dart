import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/routes_class.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/details/data/Repo/home_repo_impl.dart';
import 'package:bookly_app/features/details/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(booklyApp());
}

class booklyApp extends StatelessWidget {
  const booklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SetupServiceLocator();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Routes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
