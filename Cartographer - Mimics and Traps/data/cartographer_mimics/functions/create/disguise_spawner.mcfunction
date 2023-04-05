execute unless entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ as @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] at @s run function cartographer_mimics:create/branches/disguise_branch

execute if block ~ ~-0.2 ~ spawner if entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run tellraw @p [{"text":"This trap spawner is now a Disguise Spawner.","color":"aqua","italic":false}]
tellraw @p [{"text":"Left-Click on this trap spawner with a block in your main hand to set the disguise.","color":"gold","italic":false}]
playsound minecraft:block.note_block.pling block @p ~ ~ ~ 1 1