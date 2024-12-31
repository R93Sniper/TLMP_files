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

(script startup setup_movers
	(object_create mov0)
	(object_create mov1)
	(object_create mov2)
	(object_create mov3)

	(ai_place test)

	(vehicle_load_magic mov0 "g-driver" (ai_actors test/mov0))
	(vehicle_load_magic mov1 "p-pilot" (ai_actors test/mov1))
	(vehicle_load_magic mov2 "w-driver" (ai_actors test/mov2))
	(vehicle_load_magic mov3 "g-driver" (ai_actors test/mov3))
)

(script continuous reset_movers
	(print "guh")

	(sleep 600)
	(object_teleport mov0 mov0)
	(object_teleport mov1 mov1)
	(object_teleport mov2 mov2)
	(object_teleport mov3 mov3)
)

(global vehicle current_rec none)
(global cutscene_recording rec_type primary)
(global boolean rec_go false)

(script static void (rec_set (vehicle VEHICLE) (cutscene_recording RECORDING) (string SEAT))
	(object_create rec0)

	(sleep 1)
	(set current_rec VEHICLE)
	(set rec_type RECORDING)

	(sleep 1)
	(unit_enter_vehicle rec0 VEHICLE SEAT)

	(sleep 1)
	(set rec_go true)
)

(script continuous currect_rec_update
	(sleep_until rec_go 1)
	(object_teleport current_rec rec_flag)
	(sleep 1)
)

(script continuous currect_rec_update_guh
	(sleep_until rec_go 1)
	(recording_kill rec0)
	(sleep 1)
	(recording_play rec0 rec_type)
	(sleep 700)
)

(script startup rec_startup
	(rec_set r_kestrel primary "g-driver")
)

(script static void longsword
	(unit_enter_vehicle (player0) veh17 "w-driver")
)

(script static void pelican
	(unit_enter_vehicle (player0) veh16 "p-pilot")
)