execute on leasher unless entity @s[tag=gm4_balloon_animal_trader_new] run return 0

execute on leasher at @s unless entity @e[type=marker,tag=gm4_balloon_animal_item_cleanup,distance=..0.01,limit=1] summon marker run tag @s add gm4_balloon_animal_item_cleanup

tp @s ~ ~-4096 ~
kill @s

schedule function gm4_balloon_animals:trader/lead_cleanup 1t
