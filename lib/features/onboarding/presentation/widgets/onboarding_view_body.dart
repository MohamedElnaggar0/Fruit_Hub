import 'package:flutter/material.dart';
import 'package:fruit_hub/core/configs/models/page_view_model.dart';
import 'package:fruit_hub/core/utils/constanst.dart';
import 'package:fruit_hub/core/widgets/custom_bottom.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/custom_page_view_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              controller: controller,
              itemCount: PageViewModel.pageViewItems.length,
              itemBuilder: (context, index) {
                final item = PageViewModel.pageViewItems[index];
                return CustomPageViewItem(
                  backgroundImage: item.background,
                  image: item.image,
                  firstTitle: item.firstTitle,
                  secondTitle: item.secondTitle,
                );
              },
            ),
          ),
          currentPage == PageViewModel.pageViewItems.length - 1
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomBottom(text: 'ابدأ الان', onTap: () {}),
                )
              : SizedBox.shrink(),

          SizedBox(height: 50),
          SmoothPageIndicator(
            controller: controller,
            count: PageViewModel.pageViewItems.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: kPraimaryColor,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 3,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
