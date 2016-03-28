var medusa = {
  alive: true,
  moveCounter: 0,
  power: Math.floor((Math.random()*6)+1),
  heroEncounter: Math.floor((Math.random()*10)+1),

move: function(direction) {
  if(direction === "left" || direction === "right" || medusa.moveCounter !== medusa.heroEncounter){
    console.log("Still no sight of Perseus...");
  }
  medusa.moveCounter +=1;
    if(medusa.moveCounter === medusa.heroEncounter){
    console.log("An angry Perseus has appeared!")
      if(medusa.power > perseus.power){
      console.log("Perseus is turned to stone!");
      }
      else if(medusa.power <= perseus.power){
    console.log("You see your reflection in Perseus' shield and turn to stone!");
      perseus.alive = false;
      }
    }
}
}
function dead(perseus) {
  if(perseus.alive = true){
    console.log("Perseus is still at large!");
  }
  else if(perseus.alive = false){
    console.log("Perseus has been turned to stone already!");
  }
}

var perseus = {
  alive: true,
  power: Math.floor((Math.random()*6)+1),
}

medusa.move("left")
console.log(dead(perseus))


