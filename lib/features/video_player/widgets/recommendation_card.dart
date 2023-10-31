import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final int index;
  const RecommendationCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 76,
                color: Colors.grey,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Урок $index: Основы JavaScript $index', overflow: TextOverflow.ellipsis,),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
