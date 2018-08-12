<?php

/**
 * Class Home
 */
class Home extends Controller
{
    /**
     * PAGE: index
     */
    public function index()
    {
        //Load quiz model
        $quizModel = $this->loadModel('QuizModel');

        //Can be retrieved on the views loaded in this method
        $quizzes = $quizModel->getAllQuizzes();


        // load views. within the views
        require 'app/views/_templates/header.php';
        require 'app/views/home/index.php';
        require 'app/views/_templates/footer.php';
    }


}
