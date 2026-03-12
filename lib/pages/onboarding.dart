import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          // appBar: AppBar(
          //   title: const Text('Onboarding'),
          //   actions: [
          //     TextButton(
          //       onPressed: () {},
          //       // child: const Text('Skip'),
          //       child: Tooltip(
          //         message: 'Refresh',
          //         child: Icon(Icons.refresh),
          //       ),
          //     ),
          //   ],
          // ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: _bodyWidget(context),
        ),
      ],
    );
  }
}

Widget? _bodyWidget(BuildContext context) {
  return Column(
    children: [
      //TODO: backgroud image
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
      ),
      //TODO: bottom container
      Expanded(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(64),
              topRight: Radius.circular(64),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 40,
                offset: const Offset(0, -6),
              ),
            ],
          ),
          child: Column(
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width * 0.4,
              //   height: 4,
              //   decoration: BoxDecoration(
              //     color: Colors.grey.withValues(alpha: 0.4),
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              // ),
              // SizedBox(height: 16),
              Text(
                'Manage your daily life expenses',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
