import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/design_system/widget/brand_sized_box.dart';
import 'package:ofer/src/theme/colors.dart';
import '../../../../../design_system/style/brand_space.dart';
import '../../../../../design_system/widget/brand_text.dart';
import '../provider/home_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late HomeNotifierProvider provider;
  List<IconData> icons = const [
    Icons.boy_rounded,
    Icons.woman_2_rounded,
    Icons.computer_rounded,
    Icons.animation_outlined,
    Icons.shopping_bag_outlined,
  ];
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    await provider.getProductList();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeProvider);
    provider = ref.read(homeProvider.notifier);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Row(
          children: [
            // Side buttons
            AnimatedContainer(
              color: AppColor.primary,
              height: MediaQuery.sizeOf(context).height,
              width: 75,
              duration: const Duration(milliseconds: 350),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: icons.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 26),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColor.black.withAlpha(56),
                          ),
                        ),
                        child: Icon(
                          icons[index],
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                BrandVSpace(
                  height: BrandSpace.gap40,
                ),
                BrandText.primary(
                  data: 'Jwellery',
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColor.black.withAlpha(56),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
