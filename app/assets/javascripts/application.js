// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require_tree ./libs

$(document).on('ready page:load', function () {
  
  $('.selectpicker').selectpicker();
  
  // $("#flashion").delay(3000).fadeOut('medium', function() {
  //   $("#flashion").remove();
  // });

});

function update_product_m_attributes_field(){
  var data = []
  $(".product_attribute_fields .row[id^='attribute-']").each(function( index ) {
    var id = $(this).attr("id");
    var name = $("#"+id+" input[id^='attribute-name']").val();
    var value = $("#"+id+" input[id^='attribute-value']").val();
    if(name != "" && value != ""){
      data.push({name: name, value: value})
    }
  });
  $("#product_m_attributes").val(JSON.stringify(data));
}