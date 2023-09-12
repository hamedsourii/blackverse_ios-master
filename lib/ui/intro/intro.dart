import 'package:black_verse/common/widgets.dart';
import 'package:black_verse/ui/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final _pageController = PageController();
  ValueNotifier<double> valueChangeNotifier = ValueNotifier(0.toDouble());

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round().toDouble() !=
          valueChangeNotifier.value) {
        valueChangeNotifier.value = _pageController.page!.round().toDouble();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodyMedium!
        .copyWith(fontWeight: FontWeight.w700, color: Colors.white);
    final fadedTextStyle = theme.textTheme.bodyMedium!
        .copyWith(fontWeight: FontWeight.w600, color: Colors.white70);
    final smallTextStyle = theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned.fill(
              child: PageView.builder(
            controller: _pageController,
            reverse: true,
            allowImplicitScrolling: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return Container(
                    foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        Image.asset('assets/images/intro_1.jpg'),
                        Column(
                          children: [
                            const SizedBox(
                              height: 48,
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.centerRight,
                              child: RichText(
                                  textAlign: TextAlign.right,
                                  text: TextSpan(
                                      text: 'به  ',
                                      style:
                                          fadedTextStyle.copyWith(fontSize: 38),
                                      children: [
                                        TextSpan(
                                            text: 'بلک ورس',
                                            style: textStyle.copyWith(
                                                fontSize: 42))
                                      ])),
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'خوش آمدید ...',
                                style: fadedTextStyle.copyWith(fontSize: 38),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                case 1:
                  return Container(
                    foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/background.png'))),
                    child: Column(
                      children: [
                        Image.asset('assets/images/intro_2.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 300,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'سه دنیا برای',
                                  style: fadedTextStyle.copyWith(fontSize: 33),
                                )),
                            Container(
                              width: 300,
                              alignment: Alignment.center,
                              child: Text(
                                'آموزش زبان',
                                style: textStyle.copyWith(fontSize: 39),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'داریم',
                                style: fadedTextStyle.copyWith(fontSize: 38),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'یوتیوب ، اسپاتیفای و تیک تاک',
                              style: smallTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                case 2:
                  return Container(
                    foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/background.png'))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/intro_3.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 300,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'امکانات بلک ورس',
                                  style: fadedTextStyle.copyWith(fontSize: 33),
                                )),
                            Container(
                              width: 300,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'فوق العادست',
                                style: textStyle.copyWith(fontSize: 39),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 29, right: 32, top: 16),
                              child: Text(
                                'جعبه لایتنر ، گرامر دسته بندی شده ، ساخت زنجیره فعالیت ، آمار فعلالیت ، مسابقه های چالشی ، بازی شانس و ...',
                                style: smallTextStyle,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                case 3:
                  return Container(
                    foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/background.png'))),
                    child: Column(
                      children: [
                        Image.asset('assets/images/intro_4.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.centerRight,
                              child: RichText(
                                  textAlign: TextAlign.right,
                                  text: TextSpan(
                                      text: 'با همدیگه ',
                                      style:
                                          fadedTextStyle.copyWith(fontSize: 33),
                                      children: [
                                        TextSpan(
                                            text: 'تعامل',
                                            style: textStyle.copyWith(
                                                fontSize: 39))
                                      ])),
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'داشته باشید',
                                style: fadedTextStyle.copyWith(fontSize: 38),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'پارتنر زبان پیدا کنید:)',
                              style: smallTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                default:
                  return Container();
              }
            },
          )),
          Positioned(
              bottom: 40,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ValueListenableBuilder<double>(
                      valueListenable: valueChangeNotifier,
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return ElevatedButton(
                          onPressed: () {
                            if (value == 3) {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => const SplashScreen(),
                              ));
                            } else {
                              _pageController.animateToPage(
                                  _pageController.page!.round() + 1,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.decelerate);
                            }
                          },
                          style: const ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(158, 33))),
                          child: Text(value == 3 ? 'بزن بریم' : 'بعدی'),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      axisDirection: Axis.vertical,
                      textDirection: TextDirection.rtl,
                      effect: WormEffect(
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: Colors.grey,
                          dotHeight: 6,
                          dotWidth: 7,
                          spacing: 4,
                          radius: 1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ValueListenableBuilder<double>(
                      valueListenable: valueChangeNotifier,
                      builder: (context, value, child) {
                        return AnimatedOpacity(
                            opacity: value == 0? 0: 1,
                            duration: const Duration(milliseconds: 500),
                            child: BorderedIconButton(
                              width: 40,
                              height: 40,
                              icon: CupertinoIcons.forward,
                              onTap: () {
                                if(value != 0) {
                                  _pageController.animateToPage(
                                    _pageController.page!.round() - 1,
                                    duration:
                                        const Duration(milliseconds: 700),
                                    curve: Curves.decelerate);
                                }
                              },
                            ));
                      },
                    ),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}

