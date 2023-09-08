

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   final PageController _controller = PageController(initialPage: 0);
//   int currentPage = 0;

//   void _navigateToPage(int page) {
//     _controller.animateToPage(
//       page,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     currentPage = 1;
//                   });
//                   _navigateToPage(currentPage);
//                 },
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   color: Colors.amber,
//                   child: const Center(child: Text("Go to Page 1")),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     currentPage = 2;
//                   });
//                   _navigateToPage(currentPage);
//                 },
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   color: Colors.amber,
//                   child: const Center(child: Text("Go to Page 2")),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: PageView.builder(
//               controller: _controller,
//               itemCount: 3,
//               onPageChanged: (int page) {
//                 setState(() {
//                   currentPage = page;
//                 });
//               },
//               itemBuilder: ((context, index) {
//                 return Center(
//                   child: Text("Page: $index"),
//                 );
//               }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
