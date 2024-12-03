(script startup guh_test
	(object_create veh0)
	(object_create veh1)
	(object_create veh2)
	(object_create veh3)
	(object_create veh4)
	(object_create veh5)
	(object_create veh6)
	(object_create veh7)
	(object_create_containing "veh1")

	(object_create bip0)
	(object_create bip1)
	(object_create bip2)
	(object_create bip3)
	(object_create bip4)
	(object_create bip5)
	(object_create bip6)
	(object_create bip7)
	(object_create bip8)
	(object_create bip9)

	(unit_enter_vehicle bip0 veh0 "w-driver")
	(unit_enter_vehicle bip1 veh1 "w-driver")
	(unit_enter_vehicle bip2 veh2 "w-driver")
	(unit_enter_vehicle bip3 veh3 "scorpion-driver")
	(unit_enter_vehicle bip4 veh4 "p-pilot")
	(unit_enter_vehicle bip5 veh5 "W-driver")
	(unit_enter_vehicle bip6 veh6 "g-driver")
	(unit_enter_vehicle bip7 veh7 "w-gunner")

	(object_teleport (player0) debug)

	(object_teleport veh4 debug_veh4)
	(object_teleport veh5 debug_veh5)
)

(script continuous guh_test_hold
	(sleep 1)
	
	(object_teleport veh6 debug_veh6)
)