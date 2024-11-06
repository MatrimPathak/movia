import 'package:flutter/material.dart';

class LoginBottomSheetWidget extends StatefulWidget {
  const LoginBottomSheetWidget({super.key});

  @override
  State<LoginBottomSheetWidget> createState() => _LoginBottomSheetWidgetState();
}

class _LoginBottomSheetWidgetState extends State<LoginBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF272B30),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFA9AAAC),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16),
              child: Text(
                'Start with',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFFA9AAAC),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Scaffold(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEF233C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                      title: Text(
                        'Member',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      subtitle: Text(
                        'You can sign up / sign in with your email address.',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Color(0xA8E9EAEA),
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Scaffold(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFA9AAAC),
                    width: 1,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                      title: Text(
                        'Guest',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      subtitle: Text(
                        'Use the app without authentication.',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Color(0xA8E9EAEA),
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
