// import 'package:flutter/material.dart';
// import 'package:receipify/models/core/recipe.dart';
// //import 'package:receipify/views/screens/recipe_detail_page.dart';

// //KURANG RECIPE DETAIL PAGE

// class RecipeTile extends StatelessWidget {
//   final Recipe data;
//   RecipeTile({@required this.data}); //still don't get what this means :'D

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => RecipeDetailPage(data: data)));
//       },
//       child: Container(
//         height: 90,
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.grey[100],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.blueGrey,
//                 image: DecorationImage(
//                     image: AssetImage(data.photo), fit: BoxFit.cover),
//               ),
//             ),
//             // RECIPE INFO
//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.only(left: 10),
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // RECIPE TITLE
//                     Container(
//                       margin: EdgeInsets.only(bottom: 12),
//                       child: Text(
//                         data.title,
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'Montserrat'),
//                       ),
//                     ),
//                     // RECIPE CALORIES AND TIME
//                     Row(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 5),
//                           child: Text(
//                             data.calories,
//                             style: TextStyle(
//                                 fontSize: 12, fontFamily: 'Montserrat'),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Icon(
//                           Icons.alarm,
//                           size: 14,
//                           color: Colors.black,
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(left: 5),
//                           child: Text(
//                             data.time,
//                             style: TextStyle(
//                                 fontSize: 12, fontFamily: 'Montserrat'),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
