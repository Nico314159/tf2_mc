#> vdv_iris:setup/storage
#
# @context any
# @within vdv_iris:setup/load
# @writes
#	storage vdv_iris:data
#		is_setup: bool Whether storage has already been setup

data merge storage vdv_iris:data {is_setup: 1b}
data merge storage vdv_iris:input {TargetEntities: false, MaxRecursionDepth: 16}