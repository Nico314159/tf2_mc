#> vdv_iris:get_hitbox/block/cubic
#
# Runs for 1x1x1 cubic blocks and for any other block that isn't supported by vdv_iris
#
# @within vdv_iris:get_hitbox/block

data modify storage vdv_iris:data Surfaces.Top set value [[    0,       1000000, 0,       1000000, 1000000, 1000000 ]]
data modify storage vdv_iris:data Surfaces.Bottom set value [[ 0,       0,       0,       1000000, 0,       1000000 ]]
data modify storage vdv_iris:data Surfaces.West set value [[   0,       0,       0,       0,       1000000, 1000000 ]]
data modify storage vdv_iris:data Surfaces.East set value [[   1000000, 0,       0,       1000000, 1000000, 1000000 ]]
data modify storage vdv_iris:data Surfaces.North set value [[  0,       0,       0,       1000000, 1000000, 0       ]]
data modify storage vdv_iris:data Surfaces.South set value [[  0,       0,       1000000, 1000000, 1000000, 1000000 ]]