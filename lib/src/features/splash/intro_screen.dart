import 'package:crimat_app/resources/app_images.dart';
import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper.';
  List<ContentConfig> listContentConfig = [];
  double sizeIndicator = 10.sp;


  void onDonePress() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LoginScreen()));
  }

  void onNextPress() {
    debugPrint("onNextPress caught");
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.arrow_forward,
      size: 35.sp,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.check,
      size: 35.sp,
    );
  }

  Widget renderPrevBtn() {
    return Icon(
      Icons.arrow_back,
      size: 35.sp,
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(GStyles.primaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      // Content config
      listCustomTabs: widgetsCustomList(),
      backgroundColorAllTabs: Colors.white,

      // Next button
      renderNextBtn: renderNextBtn(),
      onNextPress: onNextPress,
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle(),

      isShowSkipBtn: false,
      isShowPrevBtn: true,
      renderPrevBtn: renderPrevBtn(),
      prevButtonStyle: myButtonStyle(),

      // Indicator
      indicatorConfig: IndicatorConfig(
        sizeIndicator: sizeIndicator,
        indicatorWidget: Container(
          width: sizeIndicator,
          height: sizeIndicator,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: GStyles.primaryColor.withOpacity(0.4)),
        ),
        activeIndicatorWidget: Container(
          width: sizeIndicator,
          height: sizeIndicator,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: GStyles.primaryColor),
        ),
        spaceBetweenIndicator: 10,
        typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
      ),

      // Navigation bar
      navigationBarConfig: NavigationBarConfig(
        navPosition: NavPosition.bottom,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top > 0 ? 30 : 20,
          bottom: MediaQuery.of(context).viewPadding.bottom > 0 ? 30 : 20,
        ),
        backgroundColor: Colors.white,
      ),

      // Scroll behavior
      isAutoScroll: false,
      isLoopAutoScroll: true,
      curveScroll: Curves.ease,
    );
  }

  List<Widget> widgetsCustomList(){
    return [
      introSlide(text: loremIpsum,imagePath: AppImages.intro1),
      introSlide(text: loremIpsum,imagePath: AppImages.intro2),
      introSlide(text: loremIpsum,imagePath: AppImages.intro3),
    ];
  }

  Widget introSlide({required String text, required String imagePath}){
    return Column(
      children: [
        Image.asset(imagePath, fit: BoxFit.cover,),
        Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppImages.crimatPro),
                ],
              ),
              SizedBox(height: 20.sp,),
              Text(text, style: GStyles.normalTextStyle, textAlign: TextAlign.justify,),
            ],
          ),
        ),
      ],
    );
  }
}