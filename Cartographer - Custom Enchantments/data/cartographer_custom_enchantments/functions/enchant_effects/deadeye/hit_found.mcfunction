execute if score $expose ca.deadeye matches 1.. run effect give @s bad_omen 4 1
execute if score $bleed ca.deadeye matches 1.. run scoreboard players set @s ca.bleed_potency 2
execute if score $bleed ca.deadeye matches 1.. run scoreboard players set @s ca.effect_bleed 4

execute if score $electrode ca.deadeye matches 1.. run scoreboard players set @s ca.effect_shock 4

execute if score $frost ca.deadeye matches 1.. run scoreboard players set @s ca.frost_time 80
execute if score $frost ca.deadeye matches 1.. run scoreboard players set @s ca.frost_tier 2

execute if score $flame ca.deadeye matches 1.. run data modify entity @s Fire set value 81
execute if score $flash ca.deadeye matches 1.. run scoreboard players set @s ca.effect_stun 13

execute if score $infect ca.deadeye matches 1.. run scoreboard players set @s ca.effect_infect 4


execute if score $punch ca.deadeye matches 1.. run scoreboard players set @s co_y 2


execute if score $punch ca.deadeye matches 1 run scoreboard players set @s co_send -10
execute if score $punch ca.deadeye matches 2 run scoreboard players set @s co_send -14
execute if score $punch ca.deadeye matches 3 run scoreboard players set @s co_send -20
execute if score $punch ca.deadeye matches 4 run scoreboard players set @s co_send -25
execute if score $punch ca.deadeye matches 5 run scoreboard players set @s co_send -33

execute if score $punch ca.deadeye matches 1.. run function motion:motion/push


scoreboard players set $deadeye_hit ca.deadeye 1

scoreboard players operation @s ca.damage_queue = $deadeye ca.damage_queue
function cartographer_custom_enchantments:enchant_effects/deadeye/enchant_damage_bypass

scoreboard players set @s ca.deadeye_time 4