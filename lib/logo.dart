import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key, required this.size}) : super(key: key);

  final double size;

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animationPos;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _animationPos = Tween<Offset>(
      begin: const Offset(0.0, -8.0),
      end: const Offset(0.0, 2.0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: AnimatedBuilder(
            animation: _animationPos,
            builder: (_, __) {
              return Transform.translate(
                offset: _animationPos.value,
                child: Image.asset(
                  "assets/plus.png",
                  width: widget.size,
                  height: widget.size,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Vaccinator",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
