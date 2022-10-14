import './question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "How many states are there in India ?",
    {
      "19": false,
      "31": false,
      "29": true,
      "20": false,
    },
  ),
  QuestionModel("Jimmy's father has three sons- Paul I and Paul II. Can you guess the name of the third son?  ?", {
    "paul": false,
    "Rahul": false,
    "paul III": false,
    "jimmy": true,
  }),
  QuestionModel("You're 4th place right now in a race. What place will you be in when you pass the person in 3rd place? ?", {
    "1": false,
    "3": true,
    "2": false,
    "None": false,
  }),
  QuestionModel("How many 0.5cm slices can you cut from a bread that is 25cm long?  ?", {
    "75": false,
    "25": false,
    "50": true,
    "30": false,
  }),
  QuestionModel("What is Mars's nickname ?", {
    "The red planet": true,
    "The dusty planet": false,
    "The hot planet": false,
    "The smelly planet": false,
  }),
  QuestionModel("Divide 30 by half and add ten ?", {
    "35": false,
    "55": false,
    "70": true,
    "I know this is a trick question, so NONE. Ha!": false,
  }),
  QuestionModel(
      "Mars is Named after the Roman god Mars. What is he the god of ?", {
    "Fire": false,
    "Love": false,
    "Agriculture": false,
    "War": true,
  }),
  QuestionModel(
      "There are two clocks of different colors: The green clock is broken and doesn't run at all, but the yellow clock loses one second every 24 hours. Which clock is more accurate? ?",
      {
        "Yellow": false,
        "None": false,
        "Green": true,
        "Both": false,
      }),
  QuestionModel(
      "A farmer has 17 goats. All of them but 8 die. How many goats are alive?", {
    "9": false,
    "8": true,
    "17": false,
    "25": false,
  }),
  QuestionModel(
      " There are 45 mangoes in your basket. You take three out of the basket. How many mangoes are left??", {
    "3": false,
    "45": true,
    "42": false,
    "43": false,
  }),
];