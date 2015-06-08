function saved_list_print_page()
{
  var saved_list_form_visible = $('#saved_list_form').is(':visible');
  to_saved_list_print_layout();
  $('.noprint').hide();
  window.print();
  $('.noprint').show();
  undo_saved_list_print_layout();

  if(saved_list_form_visible != $('#saved_list_form').is(':visible'))
  {
    toggle_saved_list_form();
  }
}

function to_saved_list_print_layout()
{
  var table = document.getElementsByClassName("saved_list_table");
  table[0].style.border = "1px solid black";

  var th = document.getElementsByClassName("saved_list_td");

  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "1px solid black";
  }

  document.getElementById("print_date").innerHTML = Date();
}

function undo_saved_list_print_layout()
{
  var table = document.getElementsByClassName("saved_list_table");
  table[0].style.border = "none";

  var th = document.getElementsByClassName("saved_list_td");

  for(var i = 0; i < th.length; i++)
  {
      th[i].style.border = "none";
  }

  document.getElementById("print_date").innerHTML = "";
}
