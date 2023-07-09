import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, bottom: 5.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(29, 185, 221, 1.00),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), boxShadow: const [
              BoxShadow(color: Color.fromRGBO(77, 70, 189, 0.2)),
              BoxShadow(color: Color.fromRGBO(29, 185, 221, 1.00), blurRadius: 6, spreadRadius: -7.0),
            ]),
            child: const Center(
              child: Text(
                'Start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  // fontFamily: 'Avenir',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 45.0, bottom: 5.0),
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.9,
//         height: MediaQuery.of(context).size.height * 0.065,
//         child: ElevatedButton(
//           onPressed: () {},
//           style: ButtonStyle(
//             // shadowColor: MaterialStateProperty.all<Color>(Colors.white),
//             backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(29, 185, 221, 1.00)),
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//             textStyle: MaterialStateProperty.all<TextStyle>(
//               const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             // padding: MaterialStateProperty.all<EdgeInsets>(
//             //   const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//             // ),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(28),
//               ),
//             ),
//           ),
//           // child:
//           // Container(
//           //   width: MediaQuery.of(context).size.width,
//           //   height: MediaQuery.of(context).size.height * 0.065,
//           //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
//           //     BoxShadow(color: Color(0x4D464BD4)),
//           //     BoxShadow(color: Color.fromRGBO(29, 185, 221, 1.00), blurRadius: 3, spreadRadius: -6.0),
//           //   ]),
//           child: const Text(
//             'Start',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontStyle: FontStyle.italic,
//               // fontFamily: 'Avenir',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
