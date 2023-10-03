data modify storage cartographer_mob_abilities:projectiles DataTemplate set value {}

execute positioned ^ ^ ^8 run function cartographer_mob_abilities:projectiles/target/position
function cartographer_mob_abilities:abilities/spin_shot/projectile

playsound minecraft:item.crossbow.shoot hostile @a[distance=..20] ~ ~ ~ 1 2