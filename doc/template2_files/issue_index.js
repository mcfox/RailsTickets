$(document).ready(function() {

  var menu_elements = $('#project-nav li.main')
  jQuery.each(menu_elements, function() {
    $(this).hover(
      function() {
        $(this).addClass('menu-hover');
      },
      function() {
        $(this).removeClass('menu-hover');      
      }
    );
  });

  collapseFilters();

	$('ul#alternatives').append('<li class="print icon"><a href="#print">Print this Page</a></li>');
	$('ul#alternatives li.print a').click(function() {
		window.print();
		return false;
	});
  
});
