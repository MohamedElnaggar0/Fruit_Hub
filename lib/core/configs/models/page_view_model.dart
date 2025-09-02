import 'package:fruit_hub/core/utils/app_assets.dart';

class PageViewModel {
  final String background;
  final String image;
  final String firstTitle;
  final String secondTitle;

  PageViewModel({
    required this.background,
    required this.image,
    required this.firstTitle,
    required this.secondTitle,
  });

  static List<PageViewModel> pageViewItems = [
    PageViewModel(
      background: Assets.svgsFirstPageViewBackground,
      image: Assets.svgsFirstPageViewImage,
      firstTitle: 'مرحبًا بك في FruitHUB',
      secondTitle:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    ),
    PageViewModel(
      background: Assets.svgsSecondPageViewBackground,
      image: Assets.svgsSecondPageViewImage,
      firstTitle: 'ابحث وتسوق',
      secondTitle:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
    ),
  ];
}
