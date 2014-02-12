deleteVehicle cursorTarget;
_objectID = cursorTarget getVariable ["ObjectID", "0"];
_objectUID = cursorTarget getVariable ["ObjectUID", "0"];
PVDZE_obj_Delete = [_objectID, _objectUID, player];
publicVariableServer "PVDZE_obj_Delete";
