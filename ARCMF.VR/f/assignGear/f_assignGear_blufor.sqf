removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

switch (_typeOfUnit) do
{
// LOADOUT: COMMANDER
    case "co":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
for "_i" from 1 to 2 do {this addItemToUniform "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToUniform "UGL_FlareGreen_F";};
this addVest "MNP_Vest_Germany_2";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36A1AG36";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
for "_i" from 1 to 2 do {this addItemToUniform "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToUniform "UGL_FlareGreen_F";};
this addVest "MNP_Vest_Germany_2";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36A1AG36";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIC
    case "m":
    {
		this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "MNP_Vest_Germany";
		for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
		for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
		for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 25 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_bloodIV";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36C";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
for "_i" from 1 to 2 do {this addItemToUniform "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToUniform "UGL_FlareGreen_F";};
this addVest "MNP_Vest_Germany_2";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36A1AG36";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: RIFLEMAN
    case "r":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_200rnd_556x45_T_SAW";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "rhs_weap_m249_pip_L";
this addPrimaryWeaponItem "RH_eotech553";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addItemToVest "rhs_200rnd_556x45_T_SAW";
this addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW"};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "rhs_weap_M136";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
for "_i" from 1 to 2 do {this addItemToUniform "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToUniform "UGL_FlareGreen_F";};
this addVest "MNP_Vest_Germany_2";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36A1AG36";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG GUNNER
    case "mmgg":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51_m993";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "rhs_weap_m240B";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addItemToVest "rhs_200rnd_556x45_T_SAW";
this addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m993"};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
for "_i" from 1 to 2 do {this addItemToUniform "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToUniform "UGL_FlareGreen_F";};
this addVest "MNP_Vest_Germany_2";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36A1AG36";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 5 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addBackpack "B_AssaultPack_blk";
this addItemToBackpack "tf47_smaw_HEDP";
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "tf47_smaw";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 5 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addBackpack "B_Kitbag_mcamo";
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: PILOT
    case "p":
    {
this forceAddUniform "MNP_CombatUniform_Germany_S";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 4 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {this addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_green";};
this addHeadgear "rhsusf_hgu56p_mask";

comment "Add weapons";
this addWeapon "hlc_rifle_G36C";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: CO-PILOT
    case "cp":
    {
this forceAddUniform "MNP_CombatUniform_Germany_S";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 4 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {this addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_green";};
this addHeadgear "rhsusf_hgu56p_mask";

comment "Add weapons";
this addWeapon "hlc_rifle_G36C";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE COMMANDER
    case "vc":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE DRIVER
    case "vd":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE GUNNER
    case "vg":
    {
this forceAddUniform "MNP_CombatUniform_Germany";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addVest "MNP_Vest_Germany";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_30rnd_556x45_SOST_G36";};
this addHeadgear "MNP_Helmet_Germany";

comment "Add weapons";
this addWeapon "hlc_rifle_G36KA1";
this addPrimaryWeaponItem "HLC_Optic_G36dualoptic15x";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default
    {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;