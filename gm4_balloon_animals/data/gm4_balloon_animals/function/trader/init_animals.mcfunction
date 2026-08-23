tag @s add gm4_balloon_animal_trader
tag @s add gm4_balloon_animal_trader_new

execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:'minecraft:lead',components:{'minecraft:custom_data':{gm4_balloon_animals:{}}}}}]}}] run return 0

execute as @e[type=trader_llama,tag=!smithed.entity,distance=..6] run function gm4_balloon_animals:trader/kill_llama

tag @s remove gm4_balloon_animal_trader_new
