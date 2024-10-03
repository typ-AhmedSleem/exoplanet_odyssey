import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatefulWidget {
  const InformationCard({
    super.key,
    required this.description,
    required this.title,
    required this.icon,
  });

  final String description;
  final String title;
  final IconData icon;

  @override
  _InformationCardState createState() => _InformationCardState();
}

class _InformationCardState extends State<InformationCard> {
  bool isVisible = true;

  void _handleClose() {
    setState(() {
      isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox.shrink();

    return Card(
      elevation: 20,
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white,
                    size: 45,
                  ),
                  SizedBox(width: widgetWidth(width: 260, context: context)),
                  GestureDetector(
                    onTap: _handleClose,
                    child: const Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
