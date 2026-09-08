# @s = player that interacted with the wandering trader
# run from advancement interacted_with_trader

advancement revoke @s only gm4_balloon_animals:interacted_with_trader

execute as @e[type=wandering_trader,tag=!gm4_balloon_animal_trader,distance=..6,limit=1] at @s run function gm4_balloon_animals:trader/init_trader
