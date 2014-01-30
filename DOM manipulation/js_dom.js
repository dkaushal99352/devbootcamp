window.onload= function(){
 
//RELEASE 0: Link this script to the js_dom.html file and analyze what this code does. 
 
document.getElementsByTagName('body')[0].style.backgroundColor = "red"
 
//RELEASE 1:
  //Add code here to select elements of the DOM 


document.getElementsByTagName('div')[0].style.backgroundColor = "blue"

document.getElementsByTagName('div')[1].style.border = "10px solid yellow"

document.getElementsByTagName('div')[2].style.visibility = "hidden"

document.getElementsByTagName('div')[4].innerHTML = "<h3> This is an additional line </h3>"


document.getElementById('color-switcher').addEventListener('click', function(){
   document.getElementById('blue-button').style.backgroundColor = "blue"

document.getElementById('blue-button').addEventListener('mouseenter', function(){
   document.getElementById('blue-button').style.backgroundColor = "white"




})



});
                                                            

 //document.getElementbyId('blue-button)'.addEventListener('onmouseout', function() {
 //   document.getElementById('blue-button').style.backgroundColor = "white"

 //})


 
//RELEASE 2: 
  // Add code here to manipulate the DOM.
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here and replace the console.log code with code that changes the color of some DOM element
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
 
 
 
}  // end of the window.onload function do not remove or write DOM manipulation below this.