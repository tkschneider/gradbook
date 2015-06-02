// Created by: Brett Bush

// Hides the divs of the report forms
function hide_all_divs()
{
  for(var i = 1; i <= 9; i++)
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

function toggle_saved_list_form()
{

  //document.getElementById("saved_list_form").style.display = "block";

  if(!$('#saved_list_form').is(':visible'))
  {
    document.getElementById("saved_list_form").style.display = "block";
  }
  else
  {
    document.getElementById("saved_list_form").style.display = "none";
  }
/*
  var save_list_display = document.getElementById("saved_list_form").style.display;
  if(save_list_display == "block")
  {
    save_list_display = "none";
  }
  else
  {
    save_list_display = "block";
  }
  */
}

function print_page()
{
  var saved_list_form_visible = $('#saved_list_form').is(':visible');
  to_print_layout();
  $('.noprint').hide();
  window.print();
  $('.noprint').show();
  undo_print_layout();

  if(saved_list_form_visible != $('#saved_list_form').is(':visible'))
  {
    toggle_saved_list_form();
  }
}

function to_print_layout()
{
  var table = document.getElementsByClassName("report_results_table");
  table[0].style.border = "1px solid black";

  var th = document.getElementsByClassName("report_results_td");

  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "1px solid black";
  }

  document.getElementById("print_date").innerHTML = Date();
}

function undo_print_layout()
{
  var table = document.getElementsByClassName("report_results_table");
  table[0].style.border = "none";

  var th = document.getElementsByClassName("report_results_td");

  for(var i = 0; i < th.length; i++)
  {
      th[i].style.border = "none";
  }

  document.getElementById("print_date").innerHTML = "";
}
