#Runs the Ender-port passive

playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1 1

effect give @s speed 8 1 true
effect give @s strength 8 0 true

execute positioned ~ 0 ~ if entity @s[distance=0..16] run spreadplayers ~ ~ 1 16 under 18 false @s
execute positioned ~ 0 ~ if entity @s[distance=17..32] run spreadplayers ~ ~ 1 16 under 34 false @s
execute positioned ~ 0 ~ if entity @s[distance=33..48] run spreadplayers ~ ~ 1 16 under 50 false @s
execute positioned ~ 0 ~ if entity @s[distance=49..64] run spreadplayers ~ ~ 1 16 under 66 false @s
execute positioned ~ 0 ~ if entity @s[distance=65..80] run spreadplayers ~ ~ 1 16 under 82 false @s
execute positioned ~ 0 ~ if entity @s[distance=81..96] run spreadplayers ~ ~ 1 16 under 98 false @s
execute positioned ~ 0 ~ if entity @s[distance=97..112] run spreadplayers ~ ~ 1 16 under 114 false @s
execute positioned ~ 0 ~ if entity @s[distance=113..128] run spreadplayers ~ ~ 1 16 under 130 false @s
execute positioned ~ 0 ~ if entity @s[distance=129..144] run spreadplayers ~ ~ 1 16 under 146 false @s
execute positioned ~ 0 ~ if entity @s[distance=145..160] run spreadplayers ~ ~ 1 16 under 162 false @s
execute positioned ~ 0 ~ if entity @s[distance=161..176] run spreadplayers ~ ~ 1 16 under 176 false @s
execute positioned ~ 0 ~ if entity @s[distance=177..182] run spreadplayers ~ ~ 1 16 under 184 false @s
execute positioned ~ 0 ~ if entity @s[distance=183..198] run spreadplayers ~ ~ 1 16 under 200 false @s
execute positioned ~ 0 ~ if entity @s[distance=199..214] run spreadplayers ~ ~ 1 16 under 216 false @s
execute positioned ~ 0 ~ if entity @s[distance=215..230] run spreadplayers ~ ~ 1 16 under 232 false @s
execute positioned ~ 0 ~ if entity @s[distance=231..256] run spreadplayers ~ ~ 1 16 under 256 false @s
