<?php

/**
 * Class Quiz
 */
class Quiz extends Controller
{

    /**
     * ACTION: Answer Question
     */
    public function answerQuestion()
    {

        $quiz_question = $_POST["question"];
        $quiz_question_option = $_POST["option"];

        // load model, perform an action on the model
        $quiz_model = $this->loadModel('QuizModel');

        session_start();
        $user_id = $_SESSION['user_id'];

        $quiz_model->answerQuestion($user_id,$quiz_question,$quiz_question_option);

    }


    /**
     * ACTION: Submit Results
     */
    public function submitResults()
    {
        $questions_answered = $_POST["questions_answered"];
        $correct_answers = $_POST["correct_answers"];
        $score = $_POST["score"];


        // load model, perform an action on the model
        $quiz_model = $this->loadModel('QuizModel');

        session_start();
        $user_id = $_SESSION['user_id'];
        $quiz_id = $_SESSION['quiz_id'];

        $quiz_model->submitResults($user_id,$quiz_id,$questions_answered,$correct_answers,$score);

        session_destroy();

    }


}