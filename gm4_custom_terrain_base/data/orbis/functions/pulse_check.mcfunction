#compares assigned run tick to current tick and calls main
execute if score speed gm4_orbis_config matches 1.. if score current_tick gm4_clock_tick = custom_terrain_base gm4_clock_tick run function orbis:main
execute if score speed gm4_orbis_config matches 3.. if score current_tick gm4_clock_tick = custom_terrain_base_4 gm4_clock_tick run function orbis:main
execute if score speed gm4_orbis_config matches 2.. if score current_tick gm4_clock_tick = custom_terrain_base_8 gm4_clock_tick run function orbis:main
execute if score speed gm4_orbis_config matches 3.. if score current_tick gm4_clock_tick = custom_terrain_base_12 gm4_clock_tick run function orbis:main
