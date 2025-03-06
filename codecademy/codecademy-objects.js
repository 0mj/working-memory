const menu = {
  _courses : {
    appetizers: [],
    mains: [],
    desserts: []
  },
  get courses(){
    return {
      appetizers: this.appetizers,
      mains: this.mains,
      desserts: this.desserts
    }
  },
  get appetizers() {

  },
  set appetizers(appetizerIn) {

  },

  get mains() {

  },
  set mains(mainIn) {

  },

  get desserts() {

  },
  set desserts(dessertIn) {

  },




  addDishToCourse(courseName,dishName,dishPrice) {
    const dish = {
      name: dishName,
      price: dishPrice
    };
    this._courses[courseName].push(dish);
  },



  getRandomDishFromCourse(courseName){
    const dishes = this._courses[courseName]; //  console.log(dishes);
    const index = Math.floor(Math.random() * dishes.length); // console.log(dishes.length);console.log(index);
    return dishes[index];
  },

  generateRandomMeal(){
    const appetizer = this.getRandomDishFromCourse('appetizers'); // console.log(appetizer);
    const main = this.getRandomDishFromCourse('mains');
    const dessert = this.getRandomDishFromCourse('desserts');

    const totalPrice = appetizer.price + main.price + dessert.price;
    return `Your meal is ${appetizer.name}, ${main.name}, and ${dessert.name}. Price is $${totalPrice}`;
  }

};

menu.addDishToCourse('appetizers', 'Caesar Salad', 4.25);
menu.addDishToCourse('desserts','Oreos', 1.99);
menu.addDishToCourse('mains', 'Steak', 10.00);
menu.addDishToCourse('appetizers','Bloomin onion', 6.75);

const meal = menu.generateRandomMeal();
console.log(meal);


































