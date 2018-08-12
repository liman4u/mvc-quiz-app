<div class="container text-center" >

    <div  class="row" id="main" >
        <div  class="col-4" style="padding-top: 5px;">
            <div class="panel panel-default">
                <div  class="panel-heading">
                    <img src="https://duw6wk4ou1qt.cloudfront.net/static/images/layout/logo.svg">
                    <h2> <b>Quiz</b></h2>
                </div>
                <div  class="panel-body">


                    <form id="startform"  method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="quiz" required>
                                <option value="">Select a test</option>
                                <?php

                                   foreach($quizzes as $quiz){
                                       echo '<option value="'.$quiz->id.'" > '.$quiz->title .'</option>';
                                   }

                                ?>
                            </select>
                        </div>
                        <button id="start" class="btn btn-lg btn-primary btn-block" type="submit" name="submit_add_user">Start Quiz</button>
                    </form>


                    <div id="content">
                        <div id="question"></div>
                        <div id="answers" class="row custom-control custom-radio"></div>
                        <br/>
                        <button id="back" disabled class="btn btn-primary">Back</button>
                        <button id="next" class="btn btn-success">Next</button>

                        <h2><p id="thanks">Thanks, <?php session_start(); if(isset($_SESSION['name'])) echo $_SESSION['name']; ?>!</p></h2>
                        <h3><p id="score"></p></h3>
                        <p id="answeredCorrect"></p>
                        <p id="result"><b>Congratulations ! You made it!</b></p>
                        <p id="resultbad"><b>Sorry, you need to score 70 points to pass</b></p>

                        <button id="startagain" class="btn btn-primary">Start Again</button>
                    </div>

                </div>

                <div class="panel-footer" id="progressBox">
                    <h3 id="progress-title">Your Progress</h3>
                    <p id="questCount"></p>
                    <div id="barra" class="progress">
                        <div id="bar" class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100" style="width:1%">
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>