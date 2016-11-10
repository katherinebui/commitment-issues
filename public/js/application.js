$(document).ready(function() {
  userSettingListener();
  readyForCommitmentListener();
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
    // console.log("fuck the default");

    var action = $(this).attr("href");
    // console.log(action)

    $.ajax({
      url: action,
      method: "GET"
    })
      .success(function(response){
        // console.log(response)
        alert("Your reminders have started!");
      })
      .fail(function(response){
        alert("Something went wrong!");
      })

  });
};




