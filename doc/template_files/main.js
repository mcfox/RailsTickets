$(document).ready(function() {
  prepareDefaultText("#global input[name='q']", 'Issue # or Keyword');
  prepareSwitcher();
});

function collapseFilters() {
  var hidden_filters = $('span.collapsed ul')
  jQuery.each(hidden_filters, function() {
    $(this).hide();
  });
  
  var filters = $('div.module.local.navigation span h2')
  jQuery.each(filters, function() {
    $(this).click(function() {
      $(this).parent().toggleClass('collapsed');
      $(this).next().toggle();
    });
    $(this).hover(
      function() {
        $(this).addClass('filter-hover');
      },
      function() {
        $(this).removeClass('filter-hover');      
      }
    );
  });
}

function prepareProcessingGraphic(form_id) {
  $("div.buttons").append("<img id=\"processing\" src=\"/images/app/Processing.gif\" width=\"176\" height=\"31\" />");
  $("#processing").hide();
  $(form_id).submit( function() {
    $(this).find("div.buttons *").hide();
    $("#processing").show();
  } );  
}

function prepareAutoExpandingTextArea(selector, initial_row_count) {
  var text_area = $(selector);

  /*
   The text area starts out at 10 rows, if we have 
   JavaScript let's collapse it to make it less obtrusive
  */
  text_area.attr( { rows : initial_row_count } );

  // If they start typing, expand the text area
  text_area.keypress( function() { 
    text_area.attr( { rows : '10' } ); 
  } );
  
}

function prepareCollapsible() {
  
  var attachments = $('#attachments');
  var additional = $('#additional');
  
  // Hide the content
  attachments.find("*").hide();
  // additional.find("*").hide();

  // Insert links & make them clickable
  attachments.prepend("<em class=\"attachments icon\"><a href=\"#\">Attach files&hellip;</a></em>")
  // additional.prepend("<em class=\"additional icon\"><a href=\"#\">Reassign or classify&hellip;</a></em>")
  
  $(".attachments.icon a").click( function() {
    $("#attachments *").show();
    $(this).hide();
    return false;
  })
  // $(".additional.icon a").click( function() {
  //   $("#additional *").show();
  //   $(this).hide();
  //   return false;
  // })
}

function prepareDefaultText(selector, text) {
  // We're putting text in the field, so let's hide the label if there is one
  input_label_target = selector.replace(/#/, '');
  input_label = $('label[for=' + input_label_target + ']');
  input_label.hide();

  // Let's find the input field
  var input_field = $(selector);

  // Let's change the styling so default text doesn't confuse people
  input_field.addClass('blurred');

  // Now let's add the default text
  input_field.val(text);

  // On focus we want to clear the default values and remove the blurred class
  input_field.focus( function() {
    if (input_field.val() == text) {
      input_field.removeClass('blurred');
      input_field.val('');
    }
  } );

  // When we leave the field, we want to replace the text if it's still null
  input_field.blur( function() {
    if (input_field.val() == '') {
      input_field.addClass('blurred')
      input_field.val(text);
    }
  } );
}

function prepareSwitcher() {
  $('#project-name').hover(
    function () {
      $('#switcher').show();
    },
    function () {
      $('#switcher').hide();
    }
  );
  $('#switcher').hover(
    function () {
      $('#switcher').show();
    },
    function () {
      $('#switcher').hide();
    }
  );
}