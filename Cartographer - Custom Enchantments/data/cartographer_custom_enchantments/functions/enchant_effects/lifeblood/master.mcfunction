execute if score @s ca.lifeblood matches 1.. if score @s ca.kill_entity matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifeblood/branch 
execute if score @s ca.lifeblood_main matches 1.. if score @s ca.mine_spawner matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifeblood/branch 

function #minecraft:cartographer/events/enchantments/passive/lifeblood