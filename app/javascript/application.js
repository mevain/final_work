// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery3
//= require popper
//= require bootstrap-sprockets
 

function changeColor(clas) {
    document.getElementsByClassName(clas).style.backgroundColor = "#ff0000";
    return false;
}   
