execute unless score percurro_shamir gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Percurro Shamir"}
execute unless score percurro_shamir gm4_earliest_version < percurro_shamir gm4_modules run scoreboard players operation percurro_shamir gm4_earliest_version = percurro_shamir gm4_modules
scoreboard players set percurro_shamir gm4_modules 1

# unregister old shamir
data remove storage gm4_player_heads:register heads[{id:"gm4_percurro_shamir:band/v0"}]

# register shamir with lib_player_heads
execute unless data storage gm4_player_heads:register heads[{id:"gm4_percurro_shamir:band/v1"}] run data modify storage gm4_player_heads:register heads append value {id:"gm4_percurro_shamir:band/v1",name:"[Drop to Fix Item] gm4_percurro_shamir:band/v0",item:{gm4_metallurgy:{has_shamir:1b,stored_shamir:"percurro",metal:{type:"curies_bismium",amount:[9s,3s],castable:1b},item:"obsidian_cast"},SkullOwner:"$gm4_metallurgy:band/curies_bismium",CustomModelData:3420117,display:{Name:'{"italic":false,"translate":"item.gm4.metallurgy.obsidian_cast","fallback":"Obsidian Cast"}',Lore:['{"italic":false,"color":"#467A1B","translate":"item.gm4.metallurgy.band","fallback":"Curie\'s Bismium Band","with":[{"translate":"item.gm4.metallurgy.curies_bismium"}]}','{"italic":false,"color":"aqua","translate":"item.gm4.metallurgy.shamir","fallback":"Shamir"}','{"italic":false,"color":"gray","translate":"item.gm4.shamir.percurro","fallback":"Percurro"}']}}}



#$moduleUpdateList
