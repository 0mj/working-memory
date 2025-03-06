const getUserChoice = (userInput) => {
  userInput = userInput.toLowerCase();
  // console.log(userInput);
  switch (userInput) {

    case 'rock':
      return userInput;

    case 'paper':
      return userInput;

    case 'scissors':
      return userInput;

    default: 
      return 'Invalid choice';
  }
  
}

const getComputerChoice = () => {
  let randomNumber = Math.floor(Math.random() * 3);
  let computerChoice ='';
  switch (randomNumber) {
    case 0: 
      computerChoice =  'rock'; 
      break;
    case 1: 
      computerChoice =  'paper'; 
      break;
    case 2: 
      computerChoice =  'scissors'; 
      break;
  }
  return computerChoice;
  
}

const determineWinner = (userChoice,computerChoice) => {
  let uc = getUserChoice(userChoice);
  if(uc === computerChoice){
    return 'tie';
  } 

  if ( uc === 'rock'){
    if(computerChoice === 'paper'){
     return 'computer wins'; 
    } else {return 'you win';}
  }

  if ( uc === 'paper'){
    if(computerChoice === 'scissors'){ 
      return 'computer wins';
    } else { return 'you win'; }
  }

  if ( uc === 'scissors') {
    if(computerChoice === 'rock') {
      return 'computer wins';
    } else {return 'you win'; }
    
  }

}

const playGame = () => {
  let uc = getUserChoice('ROCK');
  let cc = getComputerChoice();
  console.log(determineWinner(uc,cc));
}

playGame();




let isPresenter = () => {
  console.log('is you presenting?');
}


const cities = ['Orlando', 'Dubai', 'Edinburgh', 'Chennai', 'Accra', 'Denver', 'Eskisehir', 'Medellin', 'Yokohama'];
const nums = [1, 50, 75, 200, 350, 525, 1000];

//  Choose a method that will return undefined
cities.forEach(city => console.log('Have you visited ' + city + '?'));

// Choose a method that will return a new array
const longCities = cities.filter(city => city.length > 7);

// Choose a method that will return a single value
const word = cities.reduce((acc, currVal) => {
  return acc + currVal[0]
}, "C");

console.log(word)

// Choose a method that will return a new array
const smallerNums = nums.map(num => num - 5);

// Choose a method that will return a boolean value
nums.every(num => num < 0);




















/* 
Awesome job on clearing the iterators lesson! You have learned a number of useful methods in this lesson as well as how to use the JavaScript documentation from the Mozilla Developer Network to discover and understand additional methods. Let’s review!

    .forEach() is used to execute the same code on every element in an array but does not change the array and returns undefined.
    .map() executes the same code on every element in an array and returns a new array with the updated elements.
    .filter() checks every element in an array to see if it meets certain criteria and returns a new array with the elements that return truthy for the criteria.
    .findIndex() returns the index of the first element of an array which satisfies a condition in the callback function. It returns -1 if none of the elements in the array satisfies the condition.
    .reduce() iterates through an array and takes the values of the elements and returns a single value.
    All iterator methods takes a callback function that can be pre-defined, or a function expression, or an arrow function.
    You can visit the Mozilla Developer Network to learn more about iterator methods (and all other parts of JavaScript!).

Instructions

If you want to challenge yourself:

    Define a callback function before you use it in a iterator.
    Chain two iteration methods on the same array.
    Use the optional arguments in an iterator to include the index or the entire array. (Check out MDN’s Array iteration methods page for more information)
    Use .reduce() to take a multi-layered array and return a single layer array from scratch.


