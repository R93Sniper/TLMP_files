;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; debug ignore me!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(script static void test0
	(object_teleport (player0) nuke_test_player0)
	(sleep 15)
	(effect_new "huge\weapons\nuke\effects\detonation" nuke_test)
)

(script static void test1
	(object_teleport (player0) nuke_test_player1)
	(sleep 15)
	(effect_new "huge\weapons\nuke\effects\detonation" nuke_test)
)