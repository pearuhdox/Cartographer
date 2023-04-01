execute store result score $amount ca.crystal_shield run data get storage cartographer_repair_stations:crystal_shield data.tag.CrystalShield

scoreboard players remove $amount ca.crystal_shield 1

execute if score $amount ca.crystal_shield matches ..0 run data remove block 4206900 0 4206900 Items[0].tag.HasCrystalShielding
execute if score $amount ca.crystal_shield matches ..0 run data remove block 4206900 0 4206900 Items[0].tag.CrystalShield
execute if score $amount ca.crystal_shield matches ..0 run playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 0.5

execute if score $amount ca.crystal_shield matches 1.. run data modify block 4206900 0 4206900 Items[0].tag.Damage set value 0
execute if score $amount ca.crystal_shield matches 1.. store result block 4206900 0 4206900 Items[0].tag.CrystalShield int 1 run scoreboard players add $amount ca.crystal_shield 0
execute if score $amount ca.crystal_shield matches 1.. run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 0.5

