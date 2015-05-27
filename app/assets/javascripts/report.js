// Created by: Brett Bush

// Hides the divs of the report forms
function hide_all_divs()
{
  for(var i = 1; i <= 6; i++)
  {
    var div_to_hide = "report_type_form_" + i;
    document.getElementById(div_to_hide).style.display = "none";
  }
}

// Displays the chosen div in a report type
function onchange_report_type_handler()
{
  hide_all_divs();
  var div_to_show = "report_type_form_" + document.getElementById('report_type').value;
  document.getElementById(div_to_show).style.display = "block";
}
