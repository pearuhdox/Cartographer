#Run the particles
function cartographer_mob_abilities:abilities/rift/particle_spot

#Transfer parent tags over to AEC
data modify entity @s Tags set from storage cartographer_mob_abilities:info rift.Tags

#Transfer damage amount over to AEC
scoreboard players operation @s ca.ability_dmg = $rift_damage ca.ability_dmg