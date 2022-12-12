#Set all tokens on players properly who do not have the "token_reset" tag
#Set unregistered players to have a cooldown score.
execute unless score @s cooldown matches -99..99 run scoreboard players set @s cooldown 0

execute unless entity @s[tag=token_reset] run function cartographer_mob_abilities:load/token_reset

execute if entity @s[scores={ca.logout=1..}] run function cartographer_mob_abilities:load/token_reset

#Remove effect tag assignments
#execute if entity @s[tag=ca.check_has_effect] run function cartographer_mob_abilities:passive/block_effects/player_tag/remove

#Check the effects of all players and assign tags
#execute if predicate cartographer_mob_abilities:block_effects/has_tracked_effect_previously run function cartographer_mob_abilities:passive/block_effects/player_tag/add

#For players we want to test were hit by a shulker bullet, verify that they were hit by a shulker bullet.
execute if entity @s[tag=clear_levitation] run effect clear @s levitation
tag @s[tag=clear_levitation] remove clear_levitation
#For all players who recently died, run the reset tag.

scoreboard players remove @s[scores={ca.orbit_timer=1..}] ca.orbit_timer 1

#Reduce the score of rift cooldown on players by 1
scoreboard players remove @s[scores={ca.rift_cooldown=1..}] ca.rift_cooldown 1

#For all players with the glacial slow debuff, reduce the debuff and run it.
execute if entity @s[scores={ca.glacial_slow=1..}] run function cartographer_mob_abilities:ability_traits/glacial/slow_tick

#For all players with the horrified debuff, reduce the debuff and run it.
execute if entity @s[scores={ca.horrified=1..}] run function cartographer_mob_abilities:ability_traits/horrifying/horrify_tick

#For all players with the hooked debuff, reduce the debuff and run it.
execute if entity @s[scores={ca.hooked=1..}] run function cartographer_mob_abilities:abilities/hookshot/player/timer

#Reduce the cooldown timer on parting gift cloud application
execute if score @s ca.linger_cooldown matches 1.. run scoreboard players remove @s ca.linger_cooldown 1

#Heat should never be below zero
execute unless score @s ca.heat matches 1.. run scoreboard players set @s ca.heat 0

#If the inventory changed, collect and store the player's current EPF values here. Override this if disabled
execute unless score $disable_epf_damage ca.gamerule matches 1.. unless score @s ca.core_delay_check matches 1.. if entity @s[tag=ca.core_check_inv] run function cartographer_mob_abilities:helper/epf/calculate/master