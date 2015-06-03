
function hide_all_divs()
{
  for(var i = 1; i <= 4; i++)
  {
    var div_to_hide = "type_form_" + i;
    document.getElementById(div_to_hide).style.display = "none";
  }
}

// Displays the chosen div in a report type
function onchange_type_handler()
{
  hide_all_divs();
  var div_to_show = "type_form_" + document.getElementById('type').value;
  document.getElementById(div_to_show).style.display = "block";
}
