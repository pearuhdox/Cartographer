data modify storage cartographer_mob_abilities:alchemist Effects set value []
data modify storage cartographer_mob_abilities:alchemist Effects set from entity @s HandItems[1].tag.CustomPotionEffects

data modify storage cartographer_mob_abilities:alchemist Potion set value []
data modify storage cartographer_mob_abilities:alchemist Potion set from entity @s HandItems[1].tag.Potion

data modify storage cartographer_mob_abilities:alchemist Owner set value []
data modify storage cartographer_mob_abilities:alchemist Owner set from entity @s HandItems[1].tag.UUID