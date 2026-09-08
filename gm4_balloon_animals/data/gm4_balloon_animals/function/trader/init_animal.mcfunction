# run from trader/summon_animal

tag @s add gm4_balloon_animal
$data merge entity @s $(entity_data)

effect give @s levitation infinite 0 true
effect give @s slow_falling infinite 0 true
effect give @s resistance infinite 4 true

data modify entity @s Age set value -2147483648
data modify entity @s CustomName set from storage gm4_balloon_animals:temp trade.sell.components."minecraft:lore"[0].text
data modify entity @s leash.UUID set from storage gm4_balloon_animals:temp trader.uuid

execute store result score @s gm4_balloon_animals_id run scoreboard players add $id gm4_balloon_animals_id 1
execute store result storage gm4_balloon_animals:temp gm4_balloon_animals.id int 1 run scoreboard players get $id gm4_balloon_animals_id
