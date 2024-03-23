scoreboard players set $cracked ca.loot_var 0
execute if data entity @s Item.tag.BlockStateTag{cracked:"true"} run scoreboard players set $cracked ca.loot_var 1

kill @s