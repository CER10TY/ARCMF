if (!f_cam_toggleTags || f_cam_mapMode == 2) exitWith {};

#define FADE_DISTANCE 2000

{
    _group = _x;
    _drawUnits = [];
    _drawGroup = false;
    _isPlayerGroup = false;
    _groupSide = side _x;
    _tagsSide = west;
    
    switch (f_cam_tagsButton) do {
        case 3: {_tagsSide = west;};
        case 4: {_tagsSide = east;};
        case 5: {_tagsSide = resistance;};
        case 6: {_tagsSide = civilian;};
    };
    
    // 0 = "Off", 1 = "All Sides", 2 = "All Players", 3 = "BLUFOR", 4 = "OPFOR", 5 = "INDFOR", 6 = "CIV"
    /*"RobotoCondensedBold"
      "RobotoCondensed"
      "RobotoCondensedLight"*/
    if (_groupSide == _tagsSide || f_cam_tagsButton == 1) then {
        {
            _distToCam = (call f_cam_GetCurrentCam) distance _x;
            if (isPlayer _x) then {_isPlayerGroup = true};
            if (_distToCam < FADE_DISTANCE) then {
                _drawUnits pushBack _x;
            } else {
                _drawGroup = true;
            };
            
            false
        } count units _x;
        
        if (f_cam_tagsButton == 2 && !_isPlayerGroup) exitWith {};
        
        _color = switch (side _x) do {
            case blufor: {f_cam_blufor_color};
            case opfor: {f_cam_opfor_color};
            case independent: {f_cam_indep_color};
            case civilian: {f_cam_civ_color};
            default {f_cam_empty_color};
        };
        
        if (_drawGroup) then {
            if (isPlayer (leader _x) && ({alive _x} count (units _x)) > 0) then {
                _distToCam = (call f_cam_GetCurrentCam) distance (leader _x);
                if (_distToCam > FADE_DISTANCE) then {
                    _visPos = getPosATLVisual leader _x;
                    if (surfaceIsWater _visPos) then { _visPos = getPosASLVisual leader _x; };

                    _str = _x getVariable ["f_cam_nicename", ""];
                    
                    if (_str == "") then {
                        _str = (toString(toArray(groupID (_x)) - [45]));
                        _x setVariable ["f_cam_nicename", _str];
                    };
                    
                    _alpha = linearConversion [0, FADE_DISTANCE, _distToCam, 1, 0, true];
                    _color set [3, _alpha];
                    
                    drawIcon3D [
                        "\A3\ui_f\data\map\markers\nato\b_inf.paa",
                        _color,
                        [
                            _visPos select 0,
                            _visPos select 1,
                            (_visPos select 2) + 2
                        ],
                        1,
                        1,
                        0,
                        _str,
                        2,
                        0.03,
                        "PuristaBold",
                        "center"
                    ];
                };
            };
        };

        {
            if (vehicle _x == _x && alive _x || vehicle _x != _x && (crew vehicle _x) select 0 == _x && alive _x) then {
                _distToCam = (call f_cam_GetCurrentCam) distance _x;
                _visPos = getPosATLVisual _x;
                if (surfaceIsWater _visPos) then { _visPos = getPosASLVisual _x; };
                _str = if (isPlayer _x) then {name _x} else {""};
                _alpha = linearConversion [0, FADE_DISTANCE, _distToCam, 1, 0, true];
                _color set [3, _alpha];
                
                drawIcon3D [
                    "\A3\ui_f\data\map\markers\military\dot_CA.paa",
                    _color,
                    [
                        _visPos select 0,
                        _visPos select 1,
                        (_visPos select 2) + 2
                    ],
                    1,
                    1,
                    0,
                    _str,
                    2,
                    0.03,
                    "PuristaBold",
                    "center"
                ];
            };
            
            false
        } count _drawUnits;
    };
    
    false
} count allGroups;