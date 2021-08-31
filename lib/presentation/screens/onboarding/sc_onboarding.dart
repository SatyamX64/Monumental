import 'package:flutter/material.dart';
import 'package:monumental/app/app_router.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/utils/my_const/my_const.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _currentPage = 0;

  final _subtitle = RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: 'WE CAN',
      style: FONT_CONST.BOLD_17,
      children: <TextSpan>[
        TextSpan(text: ' HELP YOU ', style: FONT_CONST.BOLD_17_MORNING2),
        const TextSpan(
          text: 'TO BE A BETTER VERSION OF',
        ),
        TextSpan(text: ' YOURSELF.', style: FONT_CONST.BOLD_17_MORNING2),
      ],
    ),
  );

  late final _dataList = [
    _PageData(
        title: "Welcome to Monumental Habits",
        image: Assets.images.onboarding.img1.image(),
        subtitle: _subtitle),
    _PageData(
        title: "Create new habits easily",
        image: Assets.images.onboarding.img2.image(),
        subtitle: _subtitle),
    _PageData(
        title: "Keep track of your progress",
        image: Assets.images.onboarding.img3.image(),
        subtitle: _subtitle),
    _PageData(
        title: "Join a supportive community",
        image: Assets.images.onboarding.img4.image(),
        subtitle: _subtitle),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: PageView.builder(
                controller: _controller,
                itemCount: _dataList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _dataList[index].title,
                          textAlign: TextAlign.center,
                          style: FONT_CONST.TITLE_REGULAR_32,
                        ),
                        Expanded(
                          child: _dataList[index].image,
                        ),
                        _dataList[index].subtitle,
                      ],
                    ),
                  );
                },
                onPageChanged: (value) => setState(() => _currentPage = value),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 200),
                  crossFadeState: _currentPage + 1 != _dataList.length
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: finishOnBoarding,
                        child: Text(
                          'Skip',
                          style: FONT_CONST.BOLD_16,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        // To balance extra 10 margin on right by last dot
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _dataList.length,
                          (int index) => _buildDots(index: index),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Next',
                          style: FONT_CONST.BOLD_16,
                        ),
                      ),
                    ],
                  ),
                  secondChild: CustomButton(
                      onPressed: finishOnBoarding, text: 'Get Started'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: _currentPage == index
            ? [
                BoxShadow(
                    color: COLOR_CONST.ECLIPSE.withOpacity(0.2),
                    spreadRadius: 2)
              ]
            : null,
        color:
            _currentPage == index ? COLOR_CONST.ECLIPSE : COLOR_CONST.MORNING3,
      ),
      margin: const EdgeInsets.only(right: 10),
      height: _currentPage == index ? 13 : 11,
      curve: Curves.easeIn,
      width: _currentPage == index ? 13 : 11,
    );
  }

  void finishOnBoarding() {
    Navigator.pushReplacementNamed(context, AppRouter.LOGIN);
  }
}

class _PageData {
  final String title;
  final RichText subtitle;
  final Image image;

  _PageData({required this.title, required this.image, required this.subtitle});
}
