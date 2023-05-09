//@dart=2.9
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreenDemo extends StatefulWidget
{
  @override
  IntroState createState() => IntroState();

}

class IntroState extends State<IntroScreenDemo>
{
  final _introKey = GlobalKey<IntroState>();
  String _status = 'Waiting...';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

      key: _introKey,
      pages: [

        PageViewModel(
            title: 'Page One',
            bodyWidget: Column(
              children: [
                Text(_status),
                ElevatedButton(
                    onPressed: () {
                      setState(() => _status = 'Going to the next page...');

                      // 3. Use the `currentState` member to access functions defined in `IntroductionScreenState`
                      //Future.delayed(const Duration(seconds: 3), () => _introKey.currentState.next());
                      print('next method');
                    },
                    child: const Text('Start'))
              ],
            )),
        PageViewModel
          (
            title: 'Page Two', bodyWidget: const Text('That\'s all folks')
        )

      ],
      showDoneButton: false,
      showNextButton: false,
      showBackButton: false,
      showSkipButton: false,



    );
  }

}
