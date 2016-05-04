// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on("click", "#button", function(){
  $("#new_question_form").show();
});

function render_answer_form(id){
  var key = "#new_answer_form_" + id
  $(key).show();
}

function render_addition_form(id){
  var key = "#new_addition_form_" + id
  $(key).show();
}

function render_confirm_form(id){
  var key = "#new_confirm_form_" + id
  $(key).show();
}

function light_on(id){
  var key = ".light_" + id
  $(key).css({
    'color': 'red',
    // 'backgroundColor': '#000'
  });
}

function light_off(id){
  var key = ".light_" + id
  $(key).css({
    'color': '#000',
    'backgroundColor': 'transparent'
  });
}