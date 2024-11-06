import 'package:flutter/material.dart';
import 'package:movia/widgets/login_bottom_sheet.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Image.network(
            'https://i.postimg.cc/GmbPxghG/Onboarding-1-4x.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            fit: BoxFit.contain,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF272B30),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Never miss\nnewmovies & series',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Text(
                      'Be the first one to watch the latest movies and series on Movia.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA9AAAC),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 24),
                    child: ElevatedButton(
                      onPressed: () async {
                        await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: const Color(0x00000000),
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: const SizedBox(
                                    height: 260,
                                    child: LoginBottomSheetWidget(),
                                  ),
                                ),
                              );
                            });
                      },
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 48),
                        ),
                        elevation: WidgetStateProperty.all(2),
                        backgroundColor: WidgetStateProperty.all(
                          const Color(0xFFEF233C),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
