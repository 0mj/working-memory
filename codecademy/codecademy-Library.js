class Media {
  constructor(title){
    this._title = title;
    this._isCheckedOut = false;
    this._ratings = [];
  }

  get title(){
    return this._title;
  }

  get isCheckedOut(){
    return this._isCheckedOut;
  }

  get ratings(){
    return this._ratings;
  }

  toggleCheckOutStatus(){
    this._isCheckedOut === false ? this._isCheckedOut = true : this._isCheckedOut = false;
  }

  getAverageRating(){
    let ratingsSum = this.ratings.reduce((currentSum, rating) => currentSum + rating, 0); // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce
    return ratingsSum / this.ratings.length;
  }

  addRating(rating){
    this._ratings.push(rating);
  }

  set isCheckedOUt(checkedOut){
    this._isCheckedOut = checkedOut;
  }
}