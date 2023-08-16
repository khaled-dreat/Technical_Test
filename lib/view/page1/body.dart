part of '../../utils/import/app_import.dart';

class Page1 extends StatefulWidget {
  static const String nameRoute = "Page1";
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<Widget> shapes = [
    Container(width: 100.w, height: 80.h, color: Colors.blue.shade700),
    Container(
        width: 100.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.blue.shade300,
        )),
    Container(
        width: 100.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: Colors.red.shade300,
        )),
  ];
  final List<Widget> shapesSelected = [
    Container(
      width: 180.w,
      height: 150.h,
      color: Colors.blue.shade700,
    ),
    Container(
        width: 180.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.blue.shade300,
        )),
    Container(
        width: 180.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: Colors.red.shade300,
        )),
  ];
  int selectedShapeIndex = 0;
  void changeShape(int newIndex) {
    setState(() {
      selectedShapeIndex = newIndex;
      selectedShapeProparte(newIndex);
    });
  }

  int rounded = 0;
  Color colore = Colors.blue.shade700;
  void selectedShapeProparte(int newIndex) {
    switch (newIndex) {
      case 0:
        rounded = 0;
        colore = Colors.blue.shade700;
      case 1:
        rounded = 20;
        colore = Colors.blue.shade300;
      default:
        rounded = 100;
        colore = Colors.red.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Animation'),
      body: Column(children: [
        // * Shapes
        Expanded(
          flex: 5,
          child: Column(children: [
            // todo : add provider for this text
            const Text("data"),

            AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 180.w,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(rounded.r),
                  color: colore,
                ))
          ]),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: shapes.asMap().entries.map(
              (e) {
                final index = e.key;
                final shape = e.value;
                return InkWell(onTap: () => changeShape(index), child: shape);
              },
            ).toList(),
          ),
        )
      ]),
    );
  }
}
