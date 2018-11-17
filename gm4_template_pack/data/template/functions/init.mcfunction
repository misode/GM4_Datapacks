#announce module installation
tellraw @a[gamemode=creative] ["",{"text":"[GM4]: Installing MODULE_NAME..."}]
execute unless entity @p run say GM4: Installing MODULE_NAME...

#declare and initialise scoreboards and settings
scoreboard players set update_happened gm4_up_check 1
scoreboard players set MODULE_ID gm4_modules 1
scoreboard players set MODULE_ID gm4_clock_tick 0

#announce success
tellraw @a[gamemode=creative] ["",{"text":"[GM4]: MODULE_NAME Installed!"}]
execute unless entity @p run say GM4: MODULE_NAME Installed!

#check other modules to make sure they're up to date.
#$moduleUpdateList
