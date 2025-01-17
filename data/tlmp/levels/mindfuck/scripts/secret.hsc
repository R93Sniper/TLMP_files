(script startup secret_tank
	(if (game_is_authoritative) (begin
		(sleep_until (and (volume_test_objects secret_0 (players)) (volume_test_objects secret_1 (players))) 90)
		(object_create gold_tank)
	))
)