const team = {
  _players : [
    {
      firstName: 'Pablo',
      lastName: 'Sanchez',
      age: 11
    },
    {
      firstName: 'Pat',
      lastName: 'Sunchez',
      age: 10
    },
    {
      firstName: 'Tom',
      lastName: 'Shez',
      age: 11
    }

  ],
  _games : [
    {
      opponent: 'Broncos',
      teamPoints: 42,
      opponentPoints: 27
    },
    {
      opponent: 'Niners',
      teamPoints: 4,
      opponentPoints: 7
    },
    {
      opponent: 'Pats',
      teamPoints: 45,
      opponentPoints: 55
    }
  ],
  get games() {
    return this._games;
  },
  get players(){
    return this._players;
  },
  addPlayer(firstName, lastName, age) {
    let player = {
      firstName: firstName,
      lastName: lastName,
      age: age
    };
    this.players.push(player);
  },
  addGame(oppName, teamScore, oppScore) {
    let game = {
      oppName: oppName,
      teamScore: teamScore,
      oppScore: oppScore
    };
    this.games.push(game);
  }
};

// team.addPlayer('Steph','Curry',28);
// team.addPlayer('Lisa','Leslie',44);
// team.addPlayer('Bugs','Bunny',76);

// console.log(team.players);


team.addGame('red',0,1);
team.addGame('blue',8,5);
team.addGame('yellow', 7, 3);
console.log(team.games);