# @s = wandering trader that was just interacted with
# run from trader_interacted

tag @s add gm4_balloon_animal_trader
tag @s add gm4_balloon_animal_trader_new

data modify storage gm4_balloon_animals:temp trades set from entity @s Offers.Recipes
execute if data storage gm4_balloon_animals:temp trades run function gm4_balloon_animals:trader/loop_trades

tag @s remove gm4_balloon_animal_trader_new
