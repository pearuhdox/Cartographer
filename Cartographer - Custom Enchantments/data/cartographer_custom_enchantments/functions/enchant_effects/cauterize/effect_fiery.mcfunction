scoreboard players set @s ca.damage_queue 2

function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass
damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5