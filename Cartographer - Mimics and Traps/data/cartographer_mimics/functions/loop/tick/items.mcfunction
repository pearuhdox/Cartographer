execute as @s[type=item,nbt={Item:{tag:{MimicDeath:1}}}] at @s run function cartographer_mimics:mimic/death
execute as @s[type=item,nbt={Item:{tag:{ColossusDeath:1}}}] at @s run function cartographer_mimics:colossus/death

tag @s add ca.mimic_item_checked