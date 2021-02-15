# @s=zauber cauldron
# run from recipe check functions

# use water
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]

# particle
particle minecraft:splash ~ ~ ~ .15 0 .15 0 6
