# for every player, generate the nearest chunk
execute at @a[tag=!orbis_disabled] positioned ~-8 ~ ~-8 as @e[tag=orbis_chunk,tag=!orbis_generated,sort=nearest,limit=1] at @s run function orbis:chunk/generate
# kill chunk markers that have been generated and have all adjacent chunks generated
execute as @e[tag=orbis_chunk,tag=orbis_generated] at @s run function orbis:chunk/kill
# if the chunk where the player is in hasn't been generated, spawn a new chunk marker
execute as @a[tag=!orbis_disabled] at @s unless block ~ 0 ~ barrier run function orbis:chunk/init
