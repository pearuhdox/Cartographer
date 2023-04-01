data modify storage cartographer_mob_abilities:projectiles TagTemplate set value []
data modify storage cartographer_mob_abilities:projectiles AlchemistTemplate set value {}
data modify storage cartographer_mob_abilities:projectiles HandTemplate set value []

execute if entity @s[tag=ca.blazing] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.blazing"
execute if entity @s[tag=ca.glacial] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.glacial"
execute if entity @s[tag=ca.overloading] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.overloading"
execute if entity @s[tag=ca.cursing] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.cursing"
execute if entity @s[tag=ca.venemous] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.venemous"
execute if entity @s[tag=ca.webbing] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.webbing"
execute if entity @s[tag=ca.horrifying] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.horrifying"
execute if entity @s[tag=ca.celestial] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.celestial"
execute if entity @s[tag=ca.zephyrous] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.zephyrous"

execute if entity @s[tag=ca.knockback] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.knockback"

execute if entity @s[tag=ca.knockback] store result score $value ca.mob_kb run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if entity @s[tag=ca.knockback] store result score $get ca.mob_kb run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if entity @s[tag=ca.knockback] run scoreboard players operation $value ca.mob_kb += $get ca.mob_kb

execute if entity @s[tag=ca.alchemist] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.alchemist"
execute if entity @s[tag=ca.alchemist] run data modify storage cartographer_mob_abilities:projectiles AlchemistTemplate set from storage cartographer_mob_abilities:alchemist PotionCopy

execute if entity @s[tag=ca.volatile] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.volatile"

#Specific Tags for Specific Projectiles
execute if entity @s[tag=ca.chase] run data modify storage cartographer_mob_abilities:projectiles TagTemplate append value "ca.chase"

