$(document).ready(function() {
  // startReminderListener();
  newUserListener();
});



var newUserListener = function(){
  $("#new_user_form").on("click", "#new_user_button", function(event){
    event.preventDefault();
    console.log("fuck the default")
  })
}








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