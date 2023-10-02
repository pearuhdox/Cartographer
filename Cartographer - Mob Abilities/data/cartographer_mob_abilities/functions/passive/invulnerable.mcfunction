playsound minecraft:entity.player.attack.nodamage player @a[distance=..8] ~ ~ ~ 1 1
playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 0.5 0.5

execute unless score @s ca.notice_time matches 1.. run function cartographer_core:helper/entity_popups/create_plate
function cartographer_mob_abilities:animation_charge_bars/invulnerable
