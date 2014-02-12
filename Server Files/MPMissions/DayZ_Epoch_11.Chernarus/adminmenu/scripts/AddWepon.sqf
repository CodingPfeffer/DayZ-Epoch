//hint format["%1,%2,%3",_this select 0,_this select 1,_this select 2];


_unit=player;
//if (!local _unit) exitWith {};

removeallweapons _unit;
_weapon=_this select 1;
_unit addWeapon _weapon;
player addWeapon "Binocular";
player addWeapon "NVGoggles";
player addWeapon "ItemGPS";




_magazines = getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");

{
player addmagazine _x;
player addmagazine _x;
player addmagazine _x;
player addmagazine _x;
}foreach _magazines;

reload player;

hint format ["%1 Added.",_weapon];




		//hint format["%1,%2,%3",_weapon,_this select 1,_this select 2];


