<?php

/**
 * Class User
 */
class User extends Controller
{

    /**
     * ACTION: addUser
     * @return questions with options
     */
    public function addUser()
    {


        // create a new user entry
        if (isset($_POST["name"])) {
            $name = $_POST["name"];
            $quiz_id = $_POST["quiz"];

            // load model, perform an action on the model
            $user_model = $this->loadModel('UserModel');
            $id = $user_model->addUser($name);

            session_start();

            $_SESSION['name'] = $name;
            $_SESSION['quiz_id'] = $quiz_id;
            $_SESSION['user_id'] = $id;

            $quiz_model = $this->loadModel('QuizModel');

            $questions = $quiz_model->getQuizQuestions($quiz_id);
            $questions_count = count($questions);

            //building the questions with options string array
            $quiz_questions = '';

            //gives question numbers
            $question_counter = 1;

            foreach($questions as $question){
                $quiz_questions .='["<p><b>Question '.$question_counter.':</b><br/>'.$question->text.'?<p/>", [';

                $options = $quiz_model->getAllQuizQuestionOptions($question->id);

                //gets size of the question options
                $options_count = count($options);

                $correct_answer_position = 0;

                for($i =0 ; $i < $options_count ; $i++){

                    $option = $options[$i];

                    if($i == $options_count-1){
                        $quiz_questions .='"'.$option->text.'"]';
                    }else{
                        $quiz_questions .='"'.$option->text.'",';
                    }

                    if($option->is_correct){
                        $correct_answer_position = $i;
                    }
                }

                if (0 === --$questions_count) {

                    $quiz_questions .=', '.$correct_answer_position.']';
                }else{

                    $quiz_questions .=', '.$correct_answer_position.'],';
                }

                $question_counter++;
            }


            print_r($quiz_questions);


        }

    }


}
