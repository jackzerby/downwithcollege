$(function(){
  
  // Init function
  init = function(){
    navInit();
    audioPlayersInit();
  }
  
  // Init nav
  navInit = function(){
    $('.js-nav-trigger').click(function(e){
      $(this).find('.js-nav-trigger-text').text(function(i, v){ return v === 'Menu' ? 'Close' : 'Menu'; });
      $(this).toggleClass('animated bounceIn');
      $('body').toggleClass('js-nav-active');
      $('body').toggleClass('js-fixed');
      e.preventDefault();
    });
    $('.js-nav-back').click(function(e){
      window.history.back();
      e.preventDefault();
    });
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