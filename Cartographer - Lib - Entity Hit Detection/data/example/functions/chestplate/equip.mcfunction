#switching what advancement is actively checking
advancement revoke @s only example:chestplate/unequip

#enabling listen if this system was previously not listening
execute if score @s ex.has_chest matches 0 run scoreboard players add @s ehp_listen 1

#setting has_chest value to 1
scoreboard players set @s ex.has_chest 1