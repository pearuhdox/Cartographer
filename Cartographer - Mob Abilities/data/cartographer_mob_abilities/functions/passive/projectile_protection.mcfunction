execute run playsound minecraft:entity.player.attack.nodamage player @a[distance=..12] ~ ~ ~ 1 2
execute run playsound minecraft:item.shield.block player @a[distance=..12] ~ ~ ~ 0.5 2

execute unless score @s ca.notice_time matches 1.. run function cartographer_core:helper/entity_popups/create_plate
function cartographer_mob_abilities:animation_charge_bars/proj_resisted
