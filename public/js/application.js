$(document).ready(function() {
  // startReminderListener();
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
      .done(function(response){
        console.log(response)
        // alert("Your reminders have started!");
      })
      .fail(function(response){
        // alert("Something went wrong!");
      })

  });
};




// var startReminderListener = function(){
//   $("#start-button").click(function(event){
//     event.preventDefault();
//     // console.log("fuck the default")
//   // setInterval(function(){
//     var route = $("#usersetting").attr("href");
//     // console.log(route)
//     $.ajax({
//       url: route,
//       method: "GET"
//     })
//       .done(function(response){
//         console.log(response)
//         alert("Let's start solvin' yo commitment issues!")
//     });
//    // }, 35000);
//   });
// }





