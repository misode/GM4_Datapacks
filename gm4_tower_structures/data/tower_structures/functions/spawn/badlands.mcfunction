execute unless block ~ 4 ~ bedrock run summon item ~ ~ ~ {Tags:["gm4_orbis_structure"],Item:{id:"minecraft:stick",Count:1b,tag:{gm4_orbis:{name:"Tall Badlands Tower","structure":{"name":"tower_structures:badlands",posX:-3,posY:-1,posZ:-3}}}}}
execute if block ~ 4 ~ bedrock unless block ~ 3 ~ bedrock run summon item ~ ~ ~ {Tags:["gm4_orbis_structure"],Item:{id:"minecraft:stick",Count:1b,tag:{gm4_orbis:{name:"Large Badlands Tower","structure":{"name":"tower_structures:badlands2",posX:-4,posY:-1,posZ:-4}}}}}
execute if block ~ 4 ~ bedrock if block ~ 3 ~ bedrock run summon item ~ ~ ~ {Tags:["gm4_orbis_structure"],Item:{id:"minecraft:stick",Count:1b,tag:{gm4_orbis:{name:"Acacia Tower","structure":{"name":"tower_structures:badlands3",posX:-4,posY:-1,posZ:-4}}}}}