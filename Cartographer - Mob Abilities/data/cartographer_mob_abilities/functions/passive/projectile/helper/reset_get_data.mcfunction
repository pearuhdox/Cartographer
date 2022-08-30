data modify storage cartographer_mob_abilities:passive_projectile Projectile.power set value []
data modify storage cartographer_mob_abilities:passive_projectile Projectile.Motion set value []
data modify storage cartographer_mob_abilities:passive_projectile Projectile.Owner set value []

data modify storage cartographer_mob_abilities:passive_projectile Projectile.power set from entity @s power
data modify storage cartographer_mob_abilities:passive_projectile Projectile.Motion set from entity @s Motion
data modify storage cartographer_mob_abilities:passive_projectile Projectile.Owner set from entity @s Owner