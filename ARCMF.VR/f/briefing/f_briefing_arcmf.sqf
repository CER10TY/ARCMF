player createDiarySubject ["ARCMF", "ARCMF"];

_zeus = "<br/><font size='18'>Positional Audio - <execute expression=""[true] call acre_api_fnc_setSpectator"">Enable</execute> / <execute expression=""[false] call acre_api_fnc_setSpectator"">Disable</execute></font><br/>Toggling positional audio puts you into the ACRE spectator mode which allows you to hear player voices relative to the Zeus perspective.";
player createDiaryRecord ["ARCMF", ["Zeus", _zeus]];

if ((call ARC_fnc_isRespawnEnabled)) then {
    _spect = "<br/><font size='18'>Spectator - <execute expression=""[player, player, 3, 1, true] call f_fnc_CamInit"">Forcefully Start Spectator</execute></font><br/>Forcefully starting spectator means your player unit will leave its group and disappear. Exiting the spectator is a complex process and may cause unexpected behaviour.";
    player createDiaryRecord ["ARCMF", ["Spectator", _spect]];
};

_radios = "<br/><font size='18'>Missing Radios</font><br/><font size='16'>AN/PRC-343 - <execute expression=""[player, '343'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/><font size='16'>AN/PRC-148 - <execute expression=""[player, '148'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/><font size='16'>AN/PRC-152 - <execute expression=""[player, '152'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/>Do not abuse these functions. They are only to be used if you are missing a radio and it's not by mission design.";
player createDiaryRecord ["ARCMF", ["Radios", _radios]];

if (serverCommandAvailable "#kick" || isServer) then {
    _gear = "<br/><font size='18'>Assign Gear to Player</font><br/><font size='16'><execute expression=""openMap false; createDialog 'GUI_Gear';"">Open Gear Manager</execute></font><br/><br/><execute expression=""openMap false; [west] call ARC_fnc_reassignGear;"">Re-Assign BLUFOR</execute><br/><execute expression=""openMap false; [east] call ARC_fnc_reassignGear;"">Re-Assign OPFOR</execute><br/><execute expression=""openMap false; [resistance] call ARC_fnc_reassignGear;"">Re-Assign INDFOR</execute>";
    player createDiaryRecord ["ARCMF", ["Gear", _gear]];

    _grp = "<br/><font size='18'>Manage Group Names</font><br/><font size='16'><execute expression=""openMap false; createDialog 'GUI_Groups';"">Open Group Manager</execute></font>";
    player createDiaryRecord ["ARCMF", ["Groups", _grp]];

    _reinf = "<br/><font size='18'>Reinforcements - <execute expression=""[true] call ARC_fnc_toggleReinforcements"">Enable</execute> / <execute expression=""[false] call ARC_fnc_toggleReinforcements"">Disable</execute></font><br/>Enabling reinforcements will let the current spectating players to rejoin the mission as a new unit by clicking the 'Rejoin Mission' button. Any new spectators will also have that option until you disable reinforcements again.<br/><br/>All reinforcements spawn at the mission starting position with standard rifleman gear. Use the gear manager to assign the appropriate loadout.";
    player createDiaryRecord ["ARCMF", ["Reinforcements", _reinf]];
};

if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
    _advMode = "<br/><font size='18'>Adversarial Mode - <execute expression=""[true] call ARC_fnc_toggleAdversarial"">Enable</execute> / <execute expression=""[false] call ARC_fnc_toggleAdversarial"">Disable</execute></font><br/>Enabling adversarial mode will automatically make players enter spectator upon respawn. This is useful for off-day team vs team scenarios.<br/><br/><execute expression=""[west] call ARC_fnc_setAdversarialStart"">SET BLUFOR START</execute><br/><execute expression=""[east] call ARC_fnc_setAdversarialStart"">SET OPFOR START</execute><br/><execute expression=""[resistance] call ARC_fnc_setAdversarialStart"">SET INDFOR START</execute>";
    player createDiaryRecord ["ARCMF", ["Adversarial", _advMode]];
};

_debug = "<br/><font size='18'>Client Weapon Safety - <execute expression=""[true] call f_fnc_safety"">Enable</execute> / <execute expression=""[false] call f_fnc_safety"">Disable</execute></font>";
player createDiaryRecord ["ARCMF", ["Debug", _debug]];

player createDiaryRecord ["ARCMF", ["Version", format ["<br/>%1", (loadFile "version.txt")]]];