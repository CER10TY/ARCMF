f_cam_forcedExit = true;
// call ARC_fnc_enableAllChannels;
[] call f_fnc_removeAllTracers;
if (!isNil "f_cam_tracerPFH") then {[f_cam_tracerPFH] call CBA_fnc_removePerFrameHandler;};
closeDialog 1;
["f_spect_tags", "onEachFrame"] call bis_fnc_removeStackedEventHandler;
["f_spect_cams", "onEachFrame"] call bis_fnc_removeStackedEventHandler;
terminate f_cam_updatevalues_script;
(call f_cam_GetCurrentCam) cameraEffect ["terminate", "back"];
hintSilent "Spectator system has been forcefully closed";
{
    _var = _x getVariable ["f_cam_fired_eventid", nil];
    if (!isNil "_var") then {
        _x removeEventHandler ["fired", _var];
    };
    false
} count (allunits + vehicles);