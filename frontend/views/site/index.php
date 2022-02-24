<?php
$this->title = 'Input data';

$user_id = Yii::$app->user->id;
$sql = "SELECT t.*, tr.user_id, tr.timestamp, tr.response FROM tasks t
        Left JOIN 
        (SELECT * FROM task_responses WHERE user_id = '$user_id' AND  DATE_FORMAT(TIMESTAMP, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d')) tr ON tr.task_id = t.id
        WHERE t.`status` = 1";
$tasks = Yii::$app->db->createCommand($sql)->queryAll();
?>
<div class="site-index">
    <!--
    <div class="jumbotron text-center bg-transparent">
        <h1 class="display-4">Welcome!</h1>
        <p class="lead">Web application.</p>
        <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>
    </div>-->

    <div class="body-content">

<div class="row1">

 <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="preopening-tab" data-toggle="tab" href="#preopening" role="tab" aria-controls="preopening" aria-selected="true">Pre Opening</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="preptab-tab" data-toggle="tab" href="#preptab" role="tab" aria-controls="preptab" aria-selected="false">Prep</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="closing-tab" data-toggle="tab" href="#closing" role="tab" aria-controls="closing" aria-selected="false">Closing</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="preopening" role="tabpanel" aria-labelledby="preopening-tab">
  
        <br />
        <h2>Pre Opening</h2>   
        <hr />          
        <form id="pre_opening_form">
        <?php
        $pre_opening_disable = false;
        
            foreach($tasks as $task){
                if($task['task_group'] == '0'){ 
                    if($task['timestamp']){$pre_opening_disable = true;}
            ?>
            <input type="checkbox" id="<?=$task['id']?>" class="check1" name="pre_opening[<?=$task['id']?>]" value="1"  <?= ($task['response'])?'checked':''; ?> > &nbsp; <label for="pre_opening"> <?=$task['task']?></label><br>      
        <?php } } ?>
        <hr />
          <button type="submit" class="btn btn-primary" onclick="preopeningsave()">Submit</button> 
          <div id="wait0" style="display:none; z-index: 1000;" class="justify-content-center align-items-center"> <img src='/img/ajaxloader.gif'/> Loading...</div>
          <div class="row"><div id="results0" style="width: 100%;"></div></div>
        </form>

  </div>
  <div class="tab-pane fade" id="preptab" role="tabpanel" aria-labelledby="preptab-tab">
  
        <br />
        <h2>Prep</h2>   
        <hr />          
        <form id="prep_form">
        <?php
            $prep_disable = false;
            foreach($tasks as $task){
                if($task['task_group'] == '1'){
                if($task['timestamp']){$prep_disable = true;}
            ?>
            <input type="checkbox" id="<?=$task['id']?>" class="check2" name="prep[<?=$task['id']?>]" value="1" <?= ($task['response'])?'checked':''; ?> > &nbsp; <label for="prep"> <?=$task['task']?></label><br>      
        <?php } } ?>
        <hr />
          <button type="submit" class="btn btn-primary" onclick="prepsave()">Submit</button> 
          <div id="wait1" style="display:none; z-index: 1000;" class="justify-content-center align-items-center"> <img src='/img/ajaxloader.gif'/> Loading...</div>
          <div class="row"><div id="results1" style="width: 100%;"></div></div>
        </form>
  
  </div>
  <div class="tab-pane fade" id="closing" role="tabpanel" aria-labelledby="closing-tab">
        <br />
        <h2>Closing</h2>   
        <hr />          
        <form id="closing_form">
        <?php
            $closing_disable = false;
            foreach($tasks as $task){
                if($task['task_group'] == '2'){
                if($task['timestamp']){$closing_disable = true;}
            ?>
            <input type="checkbox" id="<?=$task['id']?>" class="check3" name="closing[<?=$task['id']?>]" value="1" <?= ($task['response'])?'checked':''; ?> > &nbsp; <label for="closing"> <?=$task['task']?></label><br>      
        <?php } } ?>
        <hr />
          <button type="submit" class="btn btn-primary" onclick="closingsave()">Submit</button> 
          <div id="wait2" style="display:none; z-index: 1000;" class="justify-content-center align-items-center"> <img src='/img/ajaxloader.gif'/> Loading...</div>
          <div class="row"><div id="results2" style="width: 100%;"></div></div>
        </form>
  </div>
</div>
           
        </div>

    </div>
</div>

<script>
$("#pre_opening_form").submit(function(){return false;});
$("#prep_form").submit(function(){return false;});
$("#closing_form").submit(function(){return false;});

if(<?=$pre_opening_disable?>){
    $("#pre_opening_form input").prop("disabled", true);
    $('#pre_opening_form :input[type=submit]').prop('disabled', true);
} 

if(<?=$prep_disable?>){
    $("#prep_form input").prop("disabled", true);
    $('#prep_form :input[type=submit]').prop('disabled', true);
}

if(<?=$closing_disable?>){
    $("#closing_form input").prop("disabled", true);
    $('#closing_form :input[type=submit]').prop('disabled', true);
}
	
function preopeningsave(){

var atLeastOneIsChecked = $('.check1:checked').length; 

if(atLeastOneIsChecked==0){
    alert('Please select at least an one checkbox.');
}else{

var data = $("#pre_opening_form").serialize();


$.ajax({
		type: 'post',
		url: '/site/preopeningsave',
		data: data,
        beforeSend: function() {
           $("#wait0").css("display", "block");               
          },
		success: function (response){
		     $("#wait0").css("display", "none");
		     $( '#results0' ).html(response);
             $('html,body').animate({scrollTop: $("#results0").offset().top},'slow');
             setTimeout( "$('#results0').hide();", 4000);
		}
    }); 
    }
}



function prepsave(){

var atLeastOneIsChecked = $('.check2:checked').length; 

if(atLeastOneIsChecked==0){
    alert('Please select at least an one checkbox.');
}else{

var data = $("#prep_form").serialize();
$.ajax({
		type: 'post',
		url: '/site/prepsave',
		data: data,
        beforeSend: function() {
           $("#wait1").css("display", "block");               
          },
		success: function (response){
		     $("#wait1").css("display", "none");
		     $( '#results1' ).html(response);
             $('html,body').animate({scrollTop: $("#results1").offset().top},'slow');
             setTimeout( "$('#results1').hide();", 4000);
		}
    }); 
    }
}


function closingsave(){

var atLeastOneIsChecked = $('.check2:checked').length; 

if(atLeastOneIsChecked==0){
    alert('Please select at least an one checkbox.');
}else{

var data = $("#closing_form").serialize();
$.ajax({
		type: 'post',
		url: '/site/closingsave',
		data: data,
        beforeSend: function() {
           $("#wait2").css("display", "block");               
          },
		success: function (response){
		     $("#wait2").css("display", "none");
		     $( '#results2' ).html(response);
             $('html,body').animate({scrollTop: $("#results2").offset().top},'slow');
             setTimeout( "$('#results2').hide();", 4000);
		}
    }); 
    }
}
</script>
