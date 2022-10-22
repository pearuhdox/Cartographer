function inv:internal/reset
function inv:save
data modify storage cartographer_charon:player inv set value []
function cartographer_charon:bundle/rec_inv
data modify storage inv:main inv.all set from storage cartographer_charon:player inv
function inv:load