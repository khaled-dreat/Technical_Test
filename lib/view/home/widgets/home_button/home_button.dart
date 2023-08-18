part of '../../../../utils/import/app_import.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({
    super.key,
    required this.isPage2,
    required this.onTap,
  });
  final bool isPage2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isPage2 ? Colors.blue.shade200 : Colors.blue.shade800),
          clipBehavior: Clip.antiAlias,
          height: 45.h,
          width: 300.w,
          child: Text(
            isPage2 ? "Go to Page 2" : "Go to Page 1",
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
          )),
    );
  }
}
