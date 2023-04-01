#execute if entity @s[tag=ca.prevent_effects,tag=!ca.prevent_effects_creeper_applied] run function cartographer_mob_abilities:passive/block_effects/creepers/apply_creeper
#execute if entity @s[tag=ca.prevent_effects_creeper_applied] run scoreboard players set $block_effects_creeper ca.var 2

#execute if entity @s[tag=ca.deathbomb,tag=!ca.deathbomb_creeper_setup] run function cartographer_mob_abilities:death/deathbomb/apply_creeper
#execute if entity @s[tag=ca.deathbomb_creeper_setup] run function cartographer_mob_abilities:loop/tick/deathbomb_creeper

