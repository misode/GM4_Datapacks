advancement revoke @s only gm4_balloon_animals:interacted_with_trader

execute as @e[type=wandering_trader,tag=!gm4_balloon_animal_trader,distance=..6,limit=1] run function gm4_balloon_animals:trader/init_animals
