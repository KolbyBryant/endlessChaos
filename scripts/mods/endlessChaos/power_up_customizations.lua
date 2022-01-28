local mod = get_mod("endlessChaos")

buffs_to_customize = {
	attack_speed = {
		max_amount = 10
	},
	stamina = {
		max_amount = 10
	},
	push_block_arc = {
		max_amount = 2
	},
	crit_chance = {
		max_amount = 10
	},
	ability_cooldown_reduction = {
		max_amount = 3
	},
	crit_boost = {
		max_amount = 5
	},
	power_vs_skaven = {
		max_amount = 2
	},
	power_vs_chaos = {
		max_amount = 2
	},
	power_vs_unarmoured = {
		max_amount = 2
	},
	power_vs_armoured = {
		max_amount = 2
	},
	power_vs_large = {
		max_amount = 2
	},
	power_vs_frenzy = {
		max_amount = 2
	},
	health = {
		max_amount = 5
	},
	block_cost = {
		max_amount = 2
	},
	movespeed = {
		max_amount = 20
	}
}

mod:update_power_up_attributes(buffs_to_customize)