# Look for gm4_balloon_animal_item_cleanup markers
# at world spawn
# scheduled by trader/kill

execute as @e[type=marker,tag=gm4_balloon_animal_item_cleanup] at @s run function gm4_balloon_animals:trader/find_lead
