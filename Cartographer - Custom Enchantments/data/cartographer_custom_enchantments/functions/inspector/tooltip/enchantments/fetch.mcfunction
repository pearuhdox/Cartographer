data modify storage cartographer_custom_enchantments:inspector description set value []
$data modify storage cartographer_custom_enchantments:inspector description set from storage cartographer_core:descriptions Enchantments[{id:"$(id)"}].description

$data modify storage cartographer_custom_enchantments:inspector lore append from storage cartographer_core:descriptions Enchantments[{id:"$(id)"}].name

function cartographer_custom_enchantments:inspector/tooltip/enchantments/fetch_recurse 
