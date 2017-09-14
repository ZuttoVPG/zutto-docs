SELECT
	roll_tables.name AS table_name,
    roll_tiers.tier,
    roll_tiers.chance_percent AS tier_pct,
    string_agg(roll_list_objects.object_type || ':' || roll_list_objects.object_id || ' - ' || roll_list_objects.chance_percent || '%', ', ') AS drops
FROM roll_tables
INNER JOIN roll_tiers ON roll_tables.id = roll_tiers.roll_table_id
INNER JOIN roll_tier_lists ON roll_tiers.roll_tier_list_id = roll_tier_lists.id
INNER JOIN roll_list_objects ON roll_tier_lists.id = roll_list_objects.roll_tier_list_id
GROUP BY table_name, roll_tiers.tier, tier_pct
ORDER BY table_name, roll_tiers.tier, tier_pct;
