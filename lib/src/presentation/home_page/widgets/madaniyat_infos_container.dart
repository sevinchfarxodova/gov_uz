import 'package:flutter/material.dart';
import 'package:gov_uz/src/data/models/uzb_madaniyat_model.dart';
import '../../../../constats/appcolors.dart';
import '../details_page.dart';

class MadaniyatInfosContainer extends StatefulWidget {
  final UzbMadaniyat uzbMadaniyat;

  const MadaniyatInfosContainer({super.key, required this.uzbMadaniyat});

  @override
  _MadaniyatInfosContainerState createState() => _MadaniyatInfosContainerState();
}

class _MadaniyatInfosContainerState extends State<MadaniyatInfosContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    )..forward();

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(uzbMadaniyat: widget.uzbMadaniyat),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.uzbMadaniyat.title,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blue,
                ),
              ),
              Text(
                widget.uzbMadaniyat.description,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
