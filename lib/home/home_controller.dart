import 'package:dev_quizz/core/core.dart';
import 'package:dev_quizz/home/home_state.dart';
import 'package:dev_quizz/shared/models/answer_model.dart';
import 'package:dev_quizz/shared/models/question_model.dart';
import 'package:dev_quizz/shared/models/quiz_model.dart';
import 'package:dev_quizz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Wagner Morais",
      photoUrl: "https://avatars.githubusercontent.com/u/7046625?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW5 - Flutter",
        imagem: AppImages.blocks,
        // questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter ?",
            answers: [
              AnswerModel(title: "Ta bom e tal"),
              AnswerModel(title: "Oloco"),
              AnswerModel(title: "Ai sim"),
              AnswerModel(
                title: "Show dibola",
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter ?",
            answers: [
              AnswerModel(title: "Ta bom e tal"),
              AnswerModel(title: "Oloco"),
              AnswerModel(title: "Ai sim"),
              AnswerModel(
                title: "Show dibola",
                isRight: true,
              ),
            ],
          ),
        ],
      ),
    ];
    state = HomeState.success;
  }
}
