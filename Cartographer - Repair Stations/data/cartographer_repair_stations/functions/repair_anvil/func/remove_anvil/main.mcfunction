setblock ~ ~ ~ air

execute positioned ~ ~1 ~ run kill @e[type=interaction,tag=ca.repair_anvil_int.repair,distance=..1,limit=6,sort=nearest]
execute positioned ~ ~1 ~ run kill @e[type=item_display,tag=ca.repair_anvil.display.equipment,distance=..1,limit=6,sort=nearest]
execute positioned ~ ~.7 ~ run kill @e[type=block_display,tag=ca.repair_anvil.display.checker,distance=..1,limit=6,sort=nearest]
execute positioned ~-.5 ~ ~-.5 run kill @e[type=block_display,tag=ca.repair_anvil.display,distance=..1,limit=1,sort=nearest]

kill @s
