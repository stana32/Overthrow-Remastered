_me = _this select 0;
_uid = _this select 2;

if(_me getVariable ["ACE_isUnconscious",false]) then {
	removeAllWeapons _me;
	removeAllItems _me;
	removeAllAssignedItems _me;
	removeBackpack _me;
	removeVest _me;
	removeGoggles _me;
	removeHeadgear _me;

	_me addItem "ItemMap";
};

_data = [];

{
	if(_x != "ot_loaded" && _x != "morale" && _x != "player_uid" && _x != "sa_tow_actions_loaded" && _x != "hiding" && _x != "randomValue" && _x != "saved3deninventory" && (_x select [0,11]) != "MissionData" && (_x select [0,4]) != "ace_" && (_x select [0,4]) != "cba_" && (_x select [0,4]) != "bis_") then {
		_data pushback [_x,_me getVariable _x];
	};
}foreach(allVariables _me);

server setVariable [_uid,_data,false];

server setVariable [format["loadout%1",_uid],getUnitLoadout _me,false];
