$(document).ready(function() {
  userSettingListener();
  readyForCommitmentListener();
  stopForCommitmentListener();
  tinaClickListener();

});



var userSettingListener = function(){
  $("#usersetting").on("click", function(event){
    event.preventDefault();
    // console.log("fuck the default")

    var form = $(this);
    var action = form.attr("href");
    console.log(action)

    $.ajax({
      method: "GET",
      url: action
    })
      .done(function(response){
        $(".userprofile").append(response);
        form.hide();
        // console.log(response)
      })
      .fail(function(response){
        alert("Something went wrong!")
      })

  });
};


var readyForCommitmentListener = function(){
  $("#buttons").on("click", "#ready", function(event){
    event.preventDefault();
    alert("Your reminders have started!");
    // console.log("fuck the default");

    var action = $(this).attr("href");
    // console.log(action)

    $.ajax({
      url: action,
      method: "GET"
    })
  });
};


var stopForCommitmentListener = function(){
  $("#buttons").on("click", "#done", function(event){
    event.preventDefault();
    // console.log("fuck the default");
    alert("Baby come back!");

    var action = $(this).attr("href");
    console.log(action)

    $.ajax({
      url: action,
      method: "GET"
    }).done(function(response) {
      // alert(response)
    })
  });
};


var tinaClickListener = function(){
  $(".tina").hide();
  $(this).click(function(event){
    event.stopPropagation();
    $(".tina").toggle("#1");
  });
}










