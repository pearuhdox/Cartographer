playsound minecraft:entity.player.attack.nodamage player @a[distance=..8] ~ ~ ~ 1 1
playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 0.5 0.5

execute unless score @s ca.notice_time matches 1.. run function cartographer_mob_abilities:animation_charge_bars/create_plate
execute unless score @s ca.notice_time matches 1.. on passengers if entity @s[tag=ca.animation_text,tag=!ca.charge_bar,type=text_display] run function cartographer_mob_abilities:animation_charge_bars/invulnerable

execute unless score @s ca.notice_time matches 1.. run scoreboard players set @s ca.notice_time 61
