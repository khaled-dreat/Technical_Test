part of '../../../utils/import/app_import.dart';

class SkeltonView extends StatelessWidget {
  const SkeltonView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Colors.black,
          highlightColor: Colors.grey.shade400,
          child: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Skelton(
                      height: 125,
                      width: 130,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Skelton(
                          width: 80,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Skelton(),
                        SizedBox(
                          height: 8,
                        ),
                        Skelton(),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(child: Skelton()),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(child: Skelton()),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
