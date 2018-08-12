<?php

/**
 * Class Quiz
 */
class QuizModel
{

    /**
     * Every model needs a database connection, passed to the model
     * @param object $db A PDO database connection
     */
    function __construct($db)
    {
        try {
            $this->db = $db;
        } catch (PDOException $e) {
            exit('Database connection could not be established.');
        }
    }


    /**
     * Get all quizzes from database
     */
    public function getAllQuizzes()
    {
        $sql = "SELECT id, title  FROM quizzes";
        $query = $this->db->prepare($sql);
        $query->execute();

        return $query->fetchAll();
    }


    /**
     * Get all quiz questions from database
     */
    public function getQuizQuestions($quiz_id)
    {
        $sql = "SELECT id,text  FROM quiz_questions WHERE quiz_id = :quiz_id";
        $query = $this->db->prepare($sql);
        $query->execute(array(':quiz_id' => $quiz_id));

        return $query->fetchAll();
    }

    /**
     * Get all quiz question options from database
     */
    public function getAllQuizQuestionOptions($quiz_question_id)
    {
        $sql = "SELECT id,text,is_correct  FROM quiz_question_options WHERE quiz_question_id = :quiz_question_id";
        $query = $this->db->prepare($sql);
        $query->execute(array(':quiz_question_id' => $quiz_question_id));

        return $query->fetchAll();
    }


    /**
     * Answer question
     */
    public function answerQuestion($user_id,$quiz_question,$quiz_question_option)
    {
        // clean the inputs from javascript code
        $user_id = strip_tags($user_id);
        $quiz_question = strip_tags($quiz_question);
        $quiz_question_option = strip_tags($quiz_question_option);


        $sql = "INSERT INTO quiz_user_answers (user_id,quiz_question,quiz_question_option) VALUES (:user_id,:quiz_question,:quiz_question_option)";
        $query = $this->db->prepare($sql);
        $query->execute(array(':user_id' => $user_id,':quiz_question' => $quiz_question,':quiz_question_option' => $quiz_question_option));

        return true;
    }

    /**
     * Submit results
     */
    public function submitResults($user_id,$quiz_id,$questions_answered,$correct_answers,$score)
    {
        // clean the inputs from javascript code
        $user_id = strip_tags($user_id);
        $quiz_id = strip_tags($quiz_id);
        $questions_answered = strip_tags($questions_answered);
        $correct_answers = strip_tags($correct_answers);
        $score = strip_tags($score);

        $sql = "INSERT INTO quiz_submissions (user_id,quiz_id,questions_answered,correct_answers,score) VALUES (:user_id,:quiz_id,:questions_answered,:correct_answers,:score)";
        $query = $this->db->prepare($sql);
        $query->execute(array(':user_id' => $user_id,':quiz_id' => $quiz_id,':questions_answered' => $questions_answered,':correct_answers' => $correct_answers,':score' => $score));

        return true;
    }
}
