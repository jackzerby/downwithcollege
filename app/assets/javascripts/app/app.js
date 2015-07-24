$(function(){
  
  // Init function
  init = function(){
    audioPlayersInit();
  }
  
  // Find all audio players and init them
   audioPlayersInit = function(){
     $('.app-jplayer').each(function(){
       var playerID = $(this).data('id');
       var playerFile = "https://workshopapp.s3.amazonaws.com/" + $(this).data('file');
       console.log(playerFile)
       $("#app_jp_" + playerID).jPlayer({
         ready: function (event) {
             $(this).jPlayer("setMedia", {
                 mp3: playerFile
             });
         },
         play: function() { 
           $(this).jPlayer("pauseOthers");
           $('.jp-play, .jp-pause').removeClass('animated bounceIn');
           $("#app_jp_audio_" + playerID).find('.jp-pause').addClass('animated bounceIn');
         },
         pause: function() { 
           $('.jp-play, .jp-pause').removeClass('animated bounceIn');
           $("#app_jp_audio_" + playerID).find('.jp-play').addClass('animated bounceIn');
         },
         cssSelectorAncestor: "#app_jp_audio_" + playerID,
         swfPath: "/flash",
         supplied: "mp3"
       });
     });
   }
   
  // Init
  init();
});