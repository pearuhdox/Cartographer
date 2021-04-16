#switching what advancement is actively checking
advancement revoke @s only example:chestplate/equip

#disabling listen if this system was previously listening
execute if score @s ex.has_chest matches 1 run scoreboard players remove @s ehp_listen 1

#setting has_chest value to 0
scoreboard players set @s ex.has_chest 0