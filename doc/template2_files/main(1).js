// Disable Submit Buttons onSubmit and replace button text with disabled_text
function prepareSubmitButtons(disabled_text) {
  $("form").submit( function() { 
    $('input:submit').attr( { disabled : 'disabled' } ); 
  } );
  $("input:submit").click( function() { 
    $(this).attr( { value : disabled_text } ); 
  } );
}