part of '../../utils/import/app_import.dart';

class PageHome extends StatefulWidget {
  static const String nameRoute = "PageHome";
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InfoController pInfo = Provider.of<InfoController>(context);
    return Scaffold(
      appBar: const CustomAppBar(title: "Home"),
      body: Column(children: [
        // * Enter Name
        Expanded(
            flex: 2,
            child: Container(
              child: Column(children: [
                // * Space
                AppDime.xlg.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: TextFormField(
                      controller: controller,
                      onSaved: (newValue) {},
                      onChanged: (value) {
                        pInfo.changeName = value;
                      },
                      decoration: InputDecoration(hintText: "Enter Your Name")),
                ),
                // * Space
                AppDime.xlg.verticalSpace,
                // * Text Your Name
                Text(
                  pInfo.name,
                  style: TextStyle(fontSize: 18.sp),
                )
              ]),
            )),
        // * Navigated To page1,page2 -  Clear Button
        Expanded(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // * Clear Button
                  TextButton.icon(
                      onPressed: () {
                        pInfo.changeName = "";
                        controller.text = "";
                      },
                      icon: Icon(Icons.delete, color: Colors.red, size: 25.sp),
                      label: Text(
                        "Clear text",
                        style: TextStyle(color: Colors.red, fontSize: 20.sp),
                      )),
                  // * Custom Home Button page1
                  CustomHomeButton(
                    isPage2: false,
                    onTap: () => AppRoute.go(context, Page1.nameRoute),
                  ),

                  // * Custom Home Button page2
                  CustomHomeButton(
                    isPage2: true,
                    onTap: () => AppRoute.go(context, PagePokemon.nameRoute),
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
