execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $knockback ca.weapon_var matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $knockback ca.weapon_var matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.weapon_var matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.weapon_var matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.weapon_var matches 5.. run scoreboard players set @s co_send -30

execute at @s run function motion:motion/push