_pos = _this;

_sorted = [OT_NATO_control,[],{(getMarkerPos _x) distance _pos},"ASCEND"] call BIS_fnc_SortBy;

_sorted select 0;