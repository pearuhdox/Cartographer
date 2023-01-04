execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..,ca.energ_time=0}] run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..}] run scoreboard players set @s ca.energ_time 200
execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..}] run scoreboard players operation @s ca.energ_time *= @s ca.energetic 

function #minecraft:cartographer/events/enchantments/passive/energetic