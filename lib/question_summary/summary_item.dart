import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:second_app/question_summary/question_identifier.dart';


class SummaryItem extends StatelessWidget{
  final Map<String, Object> itemData;
  
  const SummaryItem(this.itemData, {super.key});

@override
Widget build(BuildContext context){
  final isCorrectAnswer =
      itemData['user_answer'] == itemData['correct_answer'];

  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8,
    ),
    child: Row( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
         isCorrectAnswer: isCorrectAnswer,
         questionIndex: itemData['question_index'] as int,
         ),
         const SizedBox(width: 20),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato( 
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox( 
                height: 5,
              ),
              Text(itemData['user_answer']as String,
                  style: const TextStyle( 
                    color: Color.fromARGB(255, 106, 164, 218),
                  ),),
              Text (itemData['correct_answer']as String,
                  style: const TextStyle( 
                  color: Color.fromARGB(255, 66, 228, 185),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
}
