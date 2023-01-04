function #minecraft:cartographer/events/enchantments/melee/echo/kill

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] positioned ^ ^1 ^3 run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.15 5 normal
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] positioned ^ ^1 ^3 run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.5 20 normal
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] positioned ^ ^1.75 ^3 run particle minecraft:white_ash ~ ~1 ~ 0.2 0.2 0.2 1 40 normal

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 1
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 2

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run stopsound @s * minecraft:entity.player.attack.sweep
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run stopsound @s * minecraft:entity.player.attack.sweep
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run stopsound @s * minecraft:entity.player.attack.strong
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run stopsound @s * minecraft:entity.player.attack.crit
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run stopsound @s * minecraft:entity.player.attack.knockback

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=..0}] run playsound minecraft:entity.armor_stand.hit player @s ~ ~ ~ 2 0.8
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run scoreboard players remove @s ca.echo_charges 1
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run tag @s add ca.echo_charge_taken

tag @a[scores={ca.ui_location=1,ca.echo=1..}] remove showing_echo