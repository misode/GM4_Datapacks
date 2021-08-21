# check for minecarts under spawners
execute as @e[type=minecart] at @s if block ~ ~1 ~ spawner if block ~ ~2 ~ #gm4_spawner_minecarts:piston[facing=down] if block ~ ~3 ~ redstone_block run function gm4_spawner_minecarts:capture_spawner/enter_minecart

# slow clock for passive regeneration
scoreboard players add passive_clock gm4_spawner_fuel 1
execute if score passive_clock gm4_spawner_fuel matches 750.. run scoreboard players set passive_clock gm4_spawner_fuel 0

# slow clock for active regeneration
scoreboard players add active_clock gm4_spawner_fuel 1
execute if score active_clock gm4_spawner_fuel matches 2.. run scoreboard players set active_clock gm4_spawner_fuel 0

# global timer
execute if score passive_clock gm4_spawner_fuel matches 0 run scoreboard players add spawner_global_time gm4_spawner_time 1

#process all spawner minecarts
execute as @e[type=spawner_minecart,tag=gm4_spawner_minecart] at @s run function gm4_spawner_minecarts:process

#check for successfull spawns
execute as @e[type=area_effect_cloud,tag=gm4_spawner_minecart_decorative_particle] at @s if entity @e[type=spawner_minecart,distance=..1] run kill @s

#fix broken spawner minecarts, caused by MC-96131
execute as @e[type=spawner_minecart,tag=gm4_spawner_minecart] unless score @s gm4_spawner_fuel matches 0.. run scoreboard players add @s gm4_spawner_fuel 0

#play decorative particles
execute as @e[type=area_effect_cloud,tag=gm4_spawner_minecart_decorative_particle] at @s run teleport ^ ^ ^0.4
execute as @e[type=area_effect_cloud,tag=gm4_spawner_minecart_decorative_particle] at @s run particle dragon_breath ~ ~ ~ 0 0 0 .005 3

schedule function gm4_spawner_minecarts:main 16t
