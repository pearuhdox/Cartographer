#Calculate the Tenacity via Knockback Resistance (Tenacity is time reduced from stun)
execute store result score $has_tenacity ca.var run attribute @s generic.knockback_resistance get 100
scoreboard players set $total_tenacity ca.var 100
scoreboard players operation $total_tenacity ca.var -= $has_tenacity ca.var
execute if score $total_tenacity ca.var matches ..-1 run scoreboard players set $total_tenacity ca.var 0

#Total Tenacity equals percentage to multiply effect_stun by
scoreboard players operation @s ca.effect_stun *= $total_tenacity ca.var
scoreboard players operation @s ca.effect_stun /= $100 ca.CONSTANT


#Execute except if the entity is marked cannot_stun or if the entity has NoAI.
execute unless entity @s[tag=cannot_stun] unless entity @s[nbt={NoAI:1b}] run function cartographer_custom_statuses:tick_effects/stunned/apply_stun

#EXCEPT if the mob is already stunned
execute unless entity @s[tag=ca.applied_stunned] if score @s ca.effect_stun_duration matches 1.. run function cartographer_custom_statuses:tick_effects/stunned/replace_stun

#EXCEPT if they are currently using or are about to use a mob ability.
execute unless entity @s[tag=ca.applied_stunned] if entity @s[tag=tokened] run function cartographer_custom_statuses:tick_effects/stunned/apply_stun

scoreboard players set @s ca.effect_stun 0
tag @s remove ca.applied_stunned