local mod = get_mod("endlessChaos")

local LootTables = {}

LootTables.boss = {
	exotic = 1000
}

LootTables.exotic = {
	exotic = 10,
	unique = 50,
	rare = 100
}

LootTables.unique = {
	unique = 50,
	rare = 100,
	stats = 100
}

LootTables.rare = {
	rare = 10,
	stats = 25
}

LootTables.stats = {
	stats = 10
}

Pickups = Pickups

Pickups.special = Pickups.special

Pickups.special.endless_chaos_buff_pickup_stats = {
	only_once = true,
	hide_on_pickup = true,
	type = "custom_buff",
	pickup_sound_event = "hud_pickup_loot_die",
	debug_pickup_category = "special",
	spawn_weighting = 1,
	unit_name = "units/props/dice_bowl/pup_loot_die",
	local_pickup_sound = true,
	item_name = "endless_chaos_buff_pickup_stats",
	hud_description = "endless_chaos_buff_pickup_stats_hud_desc",
	on_pick_up_func = function (world, interactor_unit, is_server)
		local player = Managers.player:local_player()
		mod:apply_buff("stats", player)
	end
} 

Pickups.special.endless_chaos_buff_pickup_rare = {
	only_once = true,
	hide_on_pickup = true,
	type =  "custom_buff",
	pickup_sound_event = "hud_pickup_loot_die",
	debug_pickup_category = "special",
	spawn_weighting = 1,
	unit_name = "units/props/dice_bowl/pup_loot_die",
	local_pickup_sound = true,
	item_name = "endless_chaos_buff_pickup_rare",
	hud_description = "endless_chaos_buff_pickup_rare_hud_desc",
	on_pick_up_func = function (world, interactor_unit, is_server)
		local player = Managers.player:local_player()
		mod:apply_buff("rare", player)
	end
} 

Pickups.special.endless_chaos_buff_pickup_exotic = {
	only_once = true,
	hide_on_pickup = true,
	type =  "custom_buff",
	pickup_sound_event = "hud_pickup_loot_die",
	debug_pickup_category = "special",
	spawn_weighting = 1,
	unit_name = "units/props/dice_bowl/pup_loot_die",
	local_pickup_sound = true,
	item_name = "endless_chaos_buff_pickup_exotic",
	hud_description = "endless_chaos_buff_pickup_exotic_hud_desc",
	on_pick_up_func = function (world, interactor_unit, is_server)
		local player = Managers.player:local_player()
		mod:apply_buff("exotic", player)
	end
}

Pickups.special.endless_chaos_buff_pickup_unique = {
	only_once = true,
	hide_on_pickup = true,
	type =  "custom_buff",
	pickup_sound_event = "hud_pickup_loot_die",
	debug_pickup_category = "special",
	spawn_weighting = 1,
	unit_name = "units/props/dice_bowl/pup_loot_die",
	local_pickup_sound = false,
	item_name = "endless_chaos_buff_pickup_unique",
	hud_description = "endless_chaos_buff_pickup_unique_hud_desc",
	on_pick_up_func = function (world, interactor_unit, is_server)
		local player = Managers.player:local_player()
		mod:apply_buff("unique", player)
	end
}

mod:add_pickup_template("endless_chaos_buff_pickup_stats", Pickups.special.endless_chaos_buff_pickup_stats)
mod:add_pickup_template("endless_chaos_buff_pickup_rare", Pickups.special.endless_chaos_buff_pickup_rare)
mod:add_pickup_template("endless_chaos_buff_pickup_exotic", Pickups.special.endless_chaos_buff_pickup_exotic)
mod:add_pickup_template("endless_chaos_buff_pickup_unique", Pickups.special.endless_chaos_buff_pickup_unique)

return LootTables