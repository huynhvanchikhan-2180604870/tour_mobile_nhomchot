import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mobile_app/pages/home_page.dart';
import 'package:mobile_app/utils/app_colors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 1), // More space at the top
              Text(
                "Nhom chot",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: AppColors.secondaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "- IF NOT NOW, WHEN? -",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: AppColors.secondaryColor,
                ),
                textAlign: TextAlign.center,
              ), // Dynamic spacing before the buttons
              Spacer(
                flex: 2,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: AppColors.secondaryColor
                      ),
                      onPressed: () {},
                      child: Text(
                        'LOG IN',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                        ),
                      )
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: AppColors.secondaryColor
                      ),
                      onPressed: () {},
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                        ),
                      )
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 1,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,   
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).push(_createRoute());
                      },
                      icon: Icon(Icons.keyboard_arrow_up_outlined, color: AppColors.secondaryColor,size: 50,)
                    )
                  ],  
                ),
              ),
              Spacer(flex: 4,)
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
    transitionDuration: Duration(milliseconds: 500),  // Longer duration for smoother animation
    reverseTransitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.fastOutSlowIn;  // Smoother animation curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

}
