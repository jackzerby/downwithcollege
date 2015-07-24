$(function(){
  
  // Init function
  init = function(){
    booksNav();
  }
  
  // Books nav
  booksNav = function(){
    $('.js-books-tab').click(function(e){
      category = $(this).data('category');
      $('.js-books-tab').removeClass('js-selected');
      $(this).addClass('js-selected');
      $('.js-books-book').css( "opacity", "1" );
      $('.js-books-book[data-category='+ category +']').css( "opacity", ".3" );
      e.preventDefault();
    });
  }
  
  // Init
  init();
});