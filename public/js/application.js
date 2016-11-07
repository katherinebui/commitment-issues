$(document).ready(function() {
  // startReminderListener();
  userSettingListener();
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
        // form.show(response);
        console.log(response)
      })
      .fail(function(response){
        alert("Something went wrong!")
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
//         // alert("Let's start solvin' yo commitment issues!")
//     });
//    // }, 35000);
//   });
// }