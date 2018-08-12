//Generate new question objects
function newQuestion(params) {
    var temp = {
        question:  params[0],
        choices: params[1],
        correctAnswer: params[2]
    };
    return temp;
}

var questions=''; //Initializes questions string array

// Generate all of the new questions
var allQuestions = [questions].map(newQuestion);
// Create and initializes the total (to 0), number (to 0), and totalQuestions (to the length of allQuestions) variables
var total = 0, number = 0, totalQuestions = 0, answers = [], answeredCorrect = 0;

$(document).ready(function() {

    $("#back").hide();
    $("#next").hide();
    $("#startagain").hide();
    $("#score").hide();
    $("#answeredCorrect").hide();
    $("#bar10").hide();
    $("#result").hide();
    $("#resultbad").hide();
    $("#progressBox").hide();
    $("#thanks").hide();

    $("#startform").on('submit', function (e) {

        e.preventDefault(); // prevent the form's normal submission

        var dataToPost = $(this).serialize();

        //console.log(dataToPost);

        $.post("/index.php?url=user/adduser", dataToPost)
            .done(function(response, status, jqxhr){
                // success callback

                console.log(response);

               //converting string response to json object
                questionsString = '[' + response +']';

                var json = $.parseJSON(questionsString);

                allQuestions = json.map(newQuestion);

                totalQuestions = allQuestions.length;


                $("#start").hide();
                $("#startform").hide();
                $("#progressBox").show(1000);
                $("#next").show(1000);
                $("#bar").width((1/totalQuestions) * 100 +'%');
                newQuestionAnswers();
                updateScore(0);
            })
            .fail(function(jqxhr, status, error){
                // error callback

               // console.log('fail');
            })
    });


    /**
     * Generates a new question with options view
     */
    function newQuestionAnswers() {
        $("#content").fadeOut(500, function() {
            $("#answers").empty();
            if (number < totalQuestions)
                $("#questCount").text("Question: " + (number + 1) + " of "+totalQuestions);
            var query = allQuestions[number];
            $("#question").html(query.question);


            for(var i = 0; i < query.choices.length; i++)
                $("#answers").append("<div class='col-xs-6'><label class='btn btn-white  form-check-label'>" +
                    "<input type='radio' class='form-check-input' name='answers' id='radio" + i + "' value='answer" + i
                    + "'>"+query.choices[i]+"</label></div>");
            if(answers.length > number)
                $("#radio" + answers[number]).prop("checked", true);
            if (number > 0)
                $("#back").prop("disabled", false);
        });
        $("#content").fadeIn(500);
    }

    /**
     * Checks for answer and updates score
     * @returns {boolean}
     */
    function checkAnswer() {
        // Makes sure a radio button is checked before proceeding.
        for(var i = 0; i < $("input").length; i++) {
            if ($("#radio" + i).is(":checked")) {
                answers[number] = i;
                break;
            }
            else if ( i === $("input").length -1 && !$("#radio" +i).is(":checked")) {
                $("#next").after("<p id='warning'>Please select an answer and then click next</p>");
                return false;
            }
        }

        // Check to see if the current radio button checked is the correct answer. If correct increment the
        // score (1/totalQuestions) * 100 points.
        var query = allQuestions[number];
        if($("#radio" + query.correctAnswer).is(":checked")){
            updateScore((1/totalQuestions) * 100);

            answeredCorrect ++;
        }

        number += 1;

        //answer question
        $.post("/index.php?url=quiz/answerquestion", { question: query.question, option: query.choices[number] });


        return true;
    }


    /**
     * Shows final score by a strike of 100
     */
    function finalScore() {
        $("#progressBox").hide(100);
        $("#thanks").show(1000);

        //answer question
        $.post("/index.php?url=quiz/submitresults", { questions_answered: totalQuestions, correct_answers: answeredCorrect , score: total });


        $("#score").text("Final Score: " + total + "/" +  100).show(1000);
        $("#answeredCorrect").text("You responded corrected to "+answeredCorrect+" out of "+totalQuestions+" questions.").show(1000);
        $("#question, #answers, #questCount, #next, #back").hide(10);
        //$("#startagain").show(1000);
        if (total > 60)
            $("#result").show(1000);
        if (total < 70){

            $("#resultbad").show(1000);
        }


    }

    /**
     * Updates score
     * @param change
     */
    function updateScore(change) {
        total += change;
        $("#score").text("Score: " + total);
    }


    $("#startagain").on('click', function() {

        location.reload();



    });

    $("#next").on('click', function() {
        $("#back").show(100);
        $("#warning").remove();
        if(checkAnswer()) {
            if (number < totalQuestions)
                newQuestionAnswers();
            else
                finalScore();

        }


        // Enable the back button if past first question
        if (number > 0)
            $("#back").prop("disabled", false);

        //Check for the question number and update by its percent
        var change = ((number+1)/totalQuestions) * 100;

        //Updates to progress bar
         $("#bar").width(change +'%');

    });




    //action for back button
    $("#back").on('click', function() {
        if ( number === totalQuestions) {
            $("#score").hide();
            $("#question, #answers, #questCount, #next, #score").show(2500);
        }

        //Check for the question number and update by its percent
        if (number === 1)
            $("#bar").width((1/totalQuestions) * 100 +'%');
        else{
            var change = ((number-1)/totalQuestions) * 100;

            //Updates to progress bar
            $("#bar").width(change +'%');
        }


        number -= 1;
        $("#back").prop("disabled", true);
        if (allQuestions[number].correctAnswer === answers[number]){
            updateScore(- ( (1/totalQuestions) * 100));
            answeredCorrect --;
        }

        newQuestionAnswers();


    });
});