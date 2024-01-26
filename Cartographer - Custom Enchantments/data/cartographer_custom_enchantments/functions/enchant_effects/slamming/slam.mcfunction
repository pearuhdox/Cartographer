particle minecraft:cloud ~ ~0.2 ~ 0.4 0.0 0.4 0.05 18 normal

scoreboard players add $success ca.slamming 1

#Run effects on mobs. Don't run them additionally if they've already been hit.
$execute positioned ~-$(size_half) ~ ~-$(size_half) as @e[type=#bb:hostile,dx=$(size),dy=1,dz=$(size),nbt={HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/slamming/effects with storage cartographer:macro.custom_enchantments