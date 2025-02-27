// // ignore_for_file: library_private_types_in_public_api
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_app/cubit/counter/counter_cubit.dart';
// // import 'package:my_app/cubit/counter_cubit.dart';

// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade900,
//       appBar: AppBar(
//         title: null,
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         iconTheme: const IconThemeData(color: Colors.white), // recolor the icon
//       ),
//       // ignore: sized_box_for_whitespace
//       body: Container(
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Welcome with Cubit",
//                     style: GoogleFonts.poppins(
//                       fontSize: 32,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 2,
//                   ),
//                   Text(
//                     "Here to demonstrate interaction flow with Cubit, update state counter in another screen, but it persist updated in welcome screen",
//                     style: GoogleFonts.poppins(
//                       fontSize: 12,
//                       color: Colors.white,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(60),
//                         topRight: Radius.circular(60))),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                   child: Column(
//                     children: [
//                       const SizedBox(
//                         height: 20,
//                         width: double.infinity,
//                       ),
//                       BlocBuilder<CounterCubit, CounterState>(
//                         builder: (context, state) {
//                           return Column(
//                             children: [
//                               Text(
//                                 '${state.counter}',
//                                 style: const TextStyle(
//                                     fontSize: 40.0,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               const Text(
//                                 'Counter value from Counter-screen',
//                                 style: TextStyle(
//                                     fontSize: 14.0,
//                                     fontWeight: FontWeight.w300),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/counter_screen.dart';
import 'package:my_app/cubit/counter/counter_cubit.dart';
// import 'package:my_app/screen/counter_screen.dart'; // Pastikan ini sesuai dengan lokasi file counter_screen.dart

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome with Cubit",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Here to demonstrate interaction flow with Cubit, update state counter in another screen, but it persists updated in welcome screen",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: double.infinity,
                      ),
                      BlocBuilder<CounterCubit, CounterState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              Text(
                                '${state.counter}',
                                style: const TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Counter value from Counter-screen',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      // Tambahkan button "+" untuk menambah counter
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().Increment(); // Menambah counter
                        },
                        child: const Text(
                          'Increment +',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Tambahkan button untuk pindah ke CounterScreen
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CounterScreen(), // Pindah ke CounterScreen
                            ),
                          );
                        },
                        child: const Text(
                          'Go to Counter Screen',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
