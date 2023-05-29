const buttons = document.querySelectorAll('.digit');
const result = document.getElementById('display');

console.log(buttons);

buttons.forEach(function(button){
  button.addEventListener('click', function(){
    result.textContent = this.textContent;
  });
});
