#> vdv_iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load
# @context any

# Data-pack Helper Plus storage definitions
#define storage vdv_iris:data
#define storage vdv_iris:input
#define storage vdv_iris:output

execute unless data storage vdv_iris:data is_setup run function vdv_iris:setup/scoreboard
execute unless data storage vdv_iris:data is_setup run function vdv_iris:setup/storage