data modify entity @s ArmorItems[1] set from storage cartographer_charon:bundle bundle
data modify entity @s ArmorItems[1].tag.CartoCollectorDropped set value 1b

execute store result score $bundle_size dt.var run data get storage cartographer_charon:bundle bundle.tag.Items

tag @s add reaper_checked

execute if score $bundle_size dt.var matches 1 run attribute @s generic.max_health base set 22
execute if score $bundle_size dt.var matches 1 run attribute @s generic.knockback_resistance base set 0.175
execute if score $bundle_size dt.var matches 1 run attribute @s generic.attack_damage base set 0.75

execute if score $bundle_size dt.var matches 2 run attribute @s generic.max_health base set 24
execute if score $bundle_size dt.var matches 2 run attribute @s generic.knockback_resistance base set 0.2
execute if score $bundle_size dt.var matches 2 run attribute @s generic.attack_damage base set 1.5

execute if score $bundle_size dt.var matches 3 run attribute @s generic.max_health base set 26
execute if score $bundle_size dt.var matches 3 run attribute @s generic.knockback_resistance base set 0.225
execute if score $bundle_size dt.var matches 3 run attribute @s generic.attack_damage base set 2.25

execute if score $bundle_size dt.var matches 4 run attribute @s generic.max_health base set 28
execute if score $bundle_size dt.var matches 4 run attribute @s generic.knockback_resistance base set 0.25
execute if score $bundle_size dt.var matches 4 run attribute @s generic.attack_damage base set 3

execute if score $bundle_size dt.var matches 5 run attribute @s generic.max_health base set 30
execute if score $bundle_size dt.var matches 5 run attribute @s generic.knockback_resistance base set 0.275
execute if score $bundle_size dt.var matches 5 run attribute @s generic.attack_damage base set 3.75

execute if score $bundle_size dt.var matches 6 run attribute @s generic.max_health base set 32
execute if score $bundle_size dt.var matches 6 run attribute @s generic.knockback_resistance base set 0.3
execute if score $bundle_size dt.var matches 6 run attribute @s generic.attack_damage base set 4.5

execute if score $bundle_size dt.var matches 7 run attribute @s generic.max_health base set 34
execute if score $bundle_size dt.var matches 7 run attribute @s generic.knockback_resistance base set 0.325
execute if score $bundle_size dt.var matches 7 run attribute @s generic.attack_damage base set 5.25

execute if score $bundle_size dt.var matches 8 run attribute @s generic.max_health base set 36
execute if score $bundle_size dt.var matches 8 run attribute @s generic.knockback_resistance base set 0.35
execute if score $bundle_size dt.var matches 8 run attribute @s generic.attack_damage base set 7

execute if score $bundle_size dt.var matches 9 run attribute @s generic.max_health base set 38
execute if score $bundle_size dt.var matches 9 run attribute @s generic.knockback_resistance base set 0.375
execute if score $bundle_size dt.var matches 9 run attribute @s generic.attack_damage base set 7.75

execute if score $bundle_size dt.var matches 10 run attribute @s generic.max_health base set 40
execute if score $bundle_size dt.var matches 10 run attribute @s generic.knockback_resistance base set 0.4
execute if score $bundle_size dt.var matches 10 run attribute @s generic.attack_damage base set 8.5

execute if score $bundle_size dt.var matches 11 run attribute @s generic.max_health base set 42
execute if score $bundle_size dt.var matches 11 run attribute @s generic.knockback_resistance base set 0.425
execute if score $bundle_size dt.var matches 11 run attribute @s generic.attack_damage base set 9.75

execute if score $bundle_size dt.var matches 12 run attribute @s generic.max_health base set 44
execute if score $bundle_size dt.var matches 12 run attribute @s generic.knockback_resistance base set 0.45
execute if score $bundle_size dt.var matches 12 run attribute @s generic.attack_damage base set 11

execute if score $bundle_size dt.var matches 13 run attribute @s generic.max_health base set 46
execute if score $bundle_size dt.var matches 13 run attribute @s generic.knockback_resistance base set 0.475
execute if score $bundle_size dt.var matches 13 run attribute @s generic.attack_damage base set 11.75

execute if score $bundle_size dt.var matches 14 run attribute @s generic.max_health base set 48
execute if score $bundle_size dt.var matches 14 run attribute @s generic.knockback_resistance base set 0.5
execute if score $bundle_size dt.var matches 14 run attribute @s generic.attack_damage base set 12.5

execute if score $bundle_size dt.var matches 15.. run attribute @s generic.max_health base set 50
execute if score $bundle_size dt.var matches 15.. run attribute @s generic.knockback_resistance base set 0.525
execute if score $bundle_size dt.var matches 15.. run attribute @s generic.attack_damage base set 13.75