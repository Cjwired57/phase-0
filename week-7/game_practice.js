// Solution
var player = {
posX: 0,
posY: 0,
gold: 0,
success: false,

move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    player.posX -=10;
  }
  else if(direction === 'up'){
    player.posY += 10;
  }
  else if(direction === 'down'){
    player.posY -=10;
  }
//when player moves, dragon moves too
  dragon.posX = Math.floor((Math.random()*100)+1);
  dragon.posY = Math.floor((Math.random()*100)+1);
  console.log("Dragon's position is " + dragon.posX + "," + dragon.posY);

//Display where player is
console.log("Player's position is " + player.posX + "," + player.posY);

//After every move, check if the player is near the dragon or the gold
if(player.posX === dragon.posX && player.posY === dragon.posY){
console.log("You encountered the dragon, Game Over!");
}

else if(player.posX === gold.posX && player.posY === gold.posY){
  player.success = true;
  player.gold = 100;
  console.log("You reached the gold, you win!!");
}

}

};

var gold = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var dragon = {
health: 100,
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};


player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');
player.move('up');
player.move('forward');
player.move('up');