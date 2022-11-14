#Run Invulnerable Notices
execute unless score @s ca.carapace_stacks matches 1.. if entity @s[nbt={HurtTime:9s}] at @s run function cartographer_mob_abilities:passive/invulnerable
