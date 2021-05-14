//VOREstation Mining "Fridge"//
/obj/machinery/smartfridge/mining
	name = "\improper Smart Sheet Storage"
	desc = "A storage unit for stacks of refined material."
	icon = 'icons/obj/vending_vr.dmi'
	icon_state = "minestore"
	icon_base = "minestore"
	stored_datum_type = /datum/stored_item/stack

/obj/machinery/smartfridge/mining/persistent
	persistent = /datum/persistent/storage/smartfridge/sheet_storage

/obj/machinery/smartfridge/mining/accept_check(var/obj/item/O)
	return istype(O, /obj/item/stack/material)

/obj/machinery/smartfridge/mining/vend(datum/stored_item/stack/I, var/count)
	var/amount = I.get_amount()
	if(amount < 1)
		return

	while(count > 0)
		var/obj/item/stack/S = I.get_product(get_turf(src), min(count, amount))
		count -= S.amount
	SStgui.update_uis(src)

/obj/machinery/smartfridge/sheets/find_record(var/obj/item/O)
	for(var/datum/stored_item/stack/I as anything in item_records)
		if(istype(O, I.item_path)) // Typecheck should evaluate material-specific subtype
			return I
	return null

/obj/machinery/smartfridge/mining/update_icon() //Needed for overlay to work
	cut_overlays()
	if(stat & (BROKEN|NOPOWER))
		icon_state = "[icon_base]-off"
	else
		icon_state = icon_base

	if(panel_open)
		add_overlay("mine-panel")

	var/is_off = ""
	if(inoperable())
		is_off = "-off"

	// Fridge contents
	if(contents)
		switch(contents.len)
			if(0)
				add_overlay("mine-empty[is_off]")
			if(1 to 2)
				add_overlay("mine-1[is_off]")
			if(3 to 5)
				add_overlay("mine-2[is_off]")
			if(6 to 8)
				add_overlay("mine-3[is_off]")
			else
				add_overlay("mine-4[is_off]")