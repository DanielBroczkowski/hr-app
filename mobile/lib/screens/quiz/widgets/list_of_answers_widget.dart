import 'package:flutter/cupertino.dart';
import 'package:mobile/models/answer_result_dto.dart';
import 'package:mobile/screens/quiz/widgets/answer_widget.dart';

class ListOfAnswersWidget extends StatelessWidget {

  final List<AnswerResultDto> answers;

  ListOfAnswersWidget({this.answers});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: answers.length,
          itemBuilder: (context, index) => AnswerWidget(answerResultDto: answers[index],),
      ),
    );
  }
}
