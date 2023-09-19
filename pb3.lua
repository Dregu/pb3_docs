---@meta pb3.lua
---@diagnostic disable: unused-function,lowercase-global,missing-return,duplicate-doc-alias,duplicate-set-field



---A table of {x,y} used to represent coordinates on screen.
---@alias Vec2 { [1]: number, [2]: number }
---A table of {x,y,z} used to represent coordinates in the game world.
---@alias Vec3 { [1]: number, [2]: number, [3]: number }



---Permanently tints the texture of the given material. Note that Hydraulics and Roads use a secondary texture, which can be tinted using SetHydraulicsBaseTint and SetRoadEdgeTint respectively
---@cat Material
---@param materialName string The name of the material to permanently tint, see appendix for valid material names
---@param tintColor string The color to tint the material. Format: #RRGGBBAA
function SetMaterialTint(materialName, tintColor) end
---Permanently tints the texture of the base of the hydraulic. Note that the extending/contracting part of the hydraulic can be tinted using SetMaterialTint()
---@cat Material
---@param tintColor string The color to tint the material. Format: #RRGGBBAA
function SetHydraulicsBaseTint(tintColor) end
---Permanently tints the texture of the edge of the road. Note that the center part of the road can be tinted using SetMaterialTint()
---@cat Material
--@param tintColor string The color to tint the material. Format: #RRGGBBAA
function SetRoadEdgeTint(tintColor) end
---Returns the tint color string for this material
---@cat Material
---@param materialName string The name of the material to permanently tint, see appendix for valid material names
---@return string tintColor The tint color string for this material
function GetMaterialTint(materialName) end
---Returns the tint color string for hydraulics base texture
---@cat Material
---@return string tintColor The tint color string for hydraulics base texture
function GetHydraulicsBaseTint() end
---Returns the tint color string for road edge texture
---@cat Material
---@return string tintColor The tint color string for road edge texture
function GetRoadEdgeTint() end
---[CHEAT] Sets strength of a material
---@cat Material
---@cheat
---@param materialName string must match one of the material names in the Appendix.
---@param value number can be any decimal value.
function SetMaterialStrength(materialName, value) end
---[CHEAT] Sets cost of a material
---@cat Material
---@cheat
---@param materialName string must match one of the material names in the Appendix.
---@param value number can be any decimal value.
function SetMaterialCost(materialName, value) end
---[CHEAT] Sets the max length of a material, any value over 1000 is unlimited length.
---@cat Material
---@cheat
---@param materialName string must match one of the material names in the Appendix.
---@param value number can be any decimal value.
function SetMaterialMaxLength(materialName, value) end
---Returns the strength of the given material
---@cat Material
---@param materialName string must match one of the material names above.
---@return number strength The strength of the given material
function GetMaterialStrength(materialName) end
---Returns the cost per meter of the given material
---@cat Material
---@param materialName string must match one of the material names above.
---@return number cost The cost per meter of the given material
function GetMaterialCost(materialName) end
---Returns the max length of the given material
---@cat Material
---@param materialName string must match one of the material names above.
---@return number cost The max length of the given material
function GetMaterialMaxLength(materialName) end



---Add a translation for the game UI.
---A template for this file can be created on the Workshop -> Created panel.
---@cat Language
---@param filename string The name of the csv file located in the same directory as the lua script.
function AddLanguageCSV(filename) end



---Add custom shape(s) to be used in sandbox
---@cat Sandbox
---@param folderName string The name of directory containing the custom shape(s)
function AddCustomShape(folderName) end
---Disables the random vehicle spawning that occurs when a new Sandbox is created
---@cat Sandbox
function DisableRandomVehicleSpawn() end
---Adds a texture to be used in custom shapes in sandbox
---@cat Sandbox
---@param filename string The name of the png file located in the same directory as the lua script.
---@param textureName string The name that will appear in the dropdown when selecting custom shape textures.
---@param id string ID for this texture. If you have multiple textures in your mod, they must have unique id values. If you edit your mod after uploading, do not change this id value.
function AddCustomShapeTexture(filename, textureName, id) end



---Sets the sky color in different level themes
---@cat Theme
---@example SetThemeSky("rocks", "#FF0000", "#00FF00", "#0000FF", "0.5")
---@param themeName string name of the theme to be modified. Currently one of: Alpine, Rocks, HighDesert, SkyCreeper
---@param topColor string Color of top portion of sky using format: #RRGGBBAA
---@param midColor string Color of top portion of sky using format: #RRGGBBAA
---@param botColor string Color of top portion of sky using format: #RRGGBBAA
---@param offset number Value between 0 and 1 that controls how colors blend. 0: blend between top and mid colors, 0.5: ⅓ top, ⅓ mid, ⅓ bot, 1: blend between mid and bot colors
function SetThemeSky(themeName, topColor, midColor, botColor, offset) end



---Loads a decor asset from an addressable prefab to be used in sandbox and workshop.
---See the UGC Pipeline section of the documentation for more info.
---@cat UGC
---@param iconFilename string The name of the png file located in the same directory as the lua script, representing the icon that will appear in the dropdown to select this decor item.
---@param decorName string The name that will appear in the decor dropdown.
---@param prefabAddress string The address of the prefab object defined in the Mod Creation project. See the UGC Pipeline section for more info.
function AddAssetDecor(iconFilename, decorName, prefabAddress) end
---Loads a vehicle asset from an addressable prefab to be used in sandbox and workshop.
---See the UGC Pipeline section of the documentation for more info.
---@cat UGC
---@param iconFilename string is the name of the png file located in the same directory as the lua script, representing the icon that will appear in the dropdown to select this vehicle.
---@param vehicleName string is the name that will appear in the vehicle dropdown.
---@param prefabAddress string is the address of the prefab object defined in the Mod Creation project.
---@param mass number is the default mass of the object, used to sort UGC assets.
function AddAssetVehicle(iconFilename, vehicleName, prefabAddress, mass) end
---Loads a z-axis boat asset from an addressable prefab to be used in sandbox and workshop.
---See the UGC Pipeline section of the documentation for more info.
---@cat UGC
---@param iconFilename string is the name of the png file located in the same directory as the lua script, representing the icon that will appear in the dropdown to select this item.
---@param boatName string is the name that will appear in game.
---@param prefabAddress string is the address of the prefab object defined in the Mod Creation project.
---@param mass number is the default mass of the object, used to sort UGC assets.
function AddAssetBoat(iconFilename, boatName, prefabAddress, mass) end
---Loads a z-axis plane asset from an addressable prefab to be used in sandbox and workshop.
---See the UGC Pipeline section of the documentation for more info.
---@cat UGC
---@param iconFilename string is the name of the png file located in the same directory as the lua script, representing the icon that will appear in the dropdown to select this item.
---@param planeName string is the name that will appear in game.
---@param prefabAddress string is the address of the prefab object defined in the Mod Creation project.
---@param mass number is the default mass of the object, used to sort UGC assets.
function AddAssetPlane(iconFilename, planeName, prefabAddress, mass) end



---Returns a list of id strings for all currently active bridge edges(List<string>)
---@cat Bridge
---@return string[] edgeIds
function GetBridgeEdgeIds() end
---Returns the current game world position of the bridge edge as a float list of length 3 (corresponding to x, y, and z position) (List<float>)
---@cat Bridge
---@param id string is the id of the bridge edge, usually obtained from GetBridgeEdgeIds()
---@return Vec3 edgePos
function GetBridgeEdgePosition(id) end
---Returns the current normalized stress of the edge (float)
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
---@return number edgeStress
function GetBridgeEdgeStressNormalized(id) end
---Returns a list of id strings for all currently active foundations (List<string>)
---@cat Bridge
---@return string[] foundationIds
function GetFoundationIds() end
---Returns the material name of the edge, see appendix for valid material names
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return string edgeMaterial
function GetBridgeEdgeMaterial(id) end
---Returns the length of the edge
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return number edgeLength
function GetBridgeEdgeLength(id) end
---Returns the angle of the edge
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return number edgeAngle
function GetBridgeEdgeAngle(id) end
---Returns a list of id strings representing the two joints this edge is connected to (List<string>)
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return string[] jointIds
function GetBridgeEdgeJoints(id) end
---Returns true if the edge is broken, or false if it isn't
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return boolean isBroken
function GetBridgeEdgeIsBroken(id) end
---Set the color of this edge, overriding the normal texture and stress color visualization
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@param overrideColor string is the color to set the edge. Format: #RRGGBBAA
function SetOverrideEdgeColor(id, overrideColor) end
---Returns the override color string of this edge, returns empty string if uncolored
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@return string overrideColor
function GetOverrideEdgeColor(id) end
---[CHEAT] Breaks the edge if game is simulating
---@cat Bridge
---@cheat
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function BreakEdge(id) end
---Attempts to place an edge between two joints, respecting all placement restrictions to only place edges legally. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@param materialName string is the name of the desired material.
---@param jointIdA string is the id of the start joint, usually obtained from GetJointIds
---@param jointIdB string is the id of the end joint, usually obtained from GetJointIds
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgeJointToJoint(materialName, jointIdA, jointIdB) end
---[CHEAT] Attempts to place an edge between two joints, ignoring all placement restrictions. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@cheat
---@param materialName string is the name of the desired material.
---@param jointIdA string is the id of the start joint, usually obtained from GetJointIds
---@param jointIdB string is the id of the end joint, usually obtained from GetJointIds
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgeJointToJointCheat(materialName, jointIdA, jointIdB) end
---Attempts to place an edge starting at the given joint and ending at the given position, respecting all placement restrictions to only place edges legally. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@param materialName string is the name of the desired material.
---@param jointIdA string is the id of the start joint, usually obtained from GetJointIds.
---@param posB Vec3 is the end position of the edge.
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgeJointToPos(materialName, jointIdA, posB) end
---[CHEAT] Attempts to place an edge starting at the given joint and ending at the given position, ignoring all placement restrictions. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@cheat
---@param materialName string is the name of the desired material.
---@param jointIdA string is the id of the start joint, usually obtained from GetJointIds
---@param posB Vec3 is the end position of the edge.
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgeJointToPosCheat(materialName, jointIdA, posB) end
---Attempts to place an edge starting at posA and ending at posB, respecting all placement restrictions to only place edges legally. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@param materialName string is the name of the desired material.
---@param posA Vec3 is the start position of the edge. This MUST be near enough to an existing joint so that edge placement can begin at that joint.
---@param posB Vec3 is the end position of the edge.
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgePosToPos(materialName, posA, posB) end
---[CHEAT] Attempts to place an edge starting at posA and ending at posB, ignoring all placement restrictions. Can only be used in BUILD or SANDBOX modes. Returns “SUCCESS” on success, or an error message on failure.
---@cat Bridge
---@cheat
---@param materialName string is the name of the desired material.
---@param posA Vec3 is the start position of the edge. If there is no nearby joint, a joint will be created as the start joint.
---@param posB Vec3 is the end position of the edge.
---@return string success “SUCCESS” on success, or an error message on failure.
function PlaceEdgePosToPosCheat(materialName, posA, posB) end
---[CHEAT] If IgnoreEdgePlacementRestrictions is set to true, all placement restrictions (budget, material lengths, material limits, build zones, blocking terrain/props, etc.) will be ignored.
---@cat Bridge
---@cheat
---@param value boolean determines if edge placement restrictions are ignored or not.
function IgnoreEdgePlacementRestrictions(value) end
---Returns a list of id strings for all currently active joints (List<string>)
---@cat Bridge
---@return string[] jointIds list of id strings for all currently active joints
function GetJointIds() end
---Returns list of id strings representing all edges attached to this joint (List<string>)
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return string[] edgeIds list of id strings representing all edges attached to this joint
function GetJointEdges(id) end
---Returns the current game world position of the joint as a float list of length 3 (corresponding to x, y, and z position)
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return Vec3 jointPosition the current game world position of the joint as a float list of length 3
function GetJointPosition(id) end
---Returns true if the joint is a split joint, returns false if it isn't
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return boolean isSplit true if the joint is a split joint, returns false if it isn't
function GetJointIsSplit(id) end
---Returns true if the joint is an anchor, returns false if it isn't
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return boolean isAnchor true if the joint is an anchor, returns false if it isn't
function GetJointIsAnchor(id) end
---[CHEAT] Sets the current position of the joint
---@cat Bridge
---@cheat
---@param id string is the id of the joint, usually obtained from GetJointIds
---@param position Vec3 is the desired position of the joint
function SetJointPosition(id, position) end
---Attempts to set a joint’s position to the target position, following all normal joint movement restrictions
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@param targetPosition Vec3 is the position to move the joint to
function SetJointLegalPosition(id, targetPosition) end
---Returns true if the joint is unbuildable
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return boolean isUnbuildable true if the joint is unbuildable
function GetJointIsUnbuildable(id) end
---Sets joint split state. NOTE: joints can only be split in Build mode on levels with hydraulic phases
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@param isSplit boolean determines if the joint is split or not
function SetJointIsSplit(id, isSplit) end
---Returns a list of id strings for all foundations that are currently selected(List<string>)
---@cat Bridge
---@return string[] foundationIds list of id strings for all foundations that are currently selected
function GetFoundationIdsSelected() end
---Returns a list of id strings for all edges that are currently selected(List<string>)
---@cat Bridge
---@return string[] edgeIds list of id strings for all edges that are currently selected
function GetBridgeEdgeIdsSelected() end
---Returns a list of id strings for all joints that are currently selected(List<string>)
---@cat Bridge
---@return string[] jointIds list of id strings for all joints that are currently selected
function GetJointIdsSelected() end
---Returns the current unsigned normalized stress of the edge (float). 0 to +1 is compression, and 0 to -1 is tension.
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
---@return number edgeStress
function GetBridgeEdgeStressSigned(id) end
---Returns the permanent color string of this edge, returns empty string if uncolored
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
---@return string overrideColor the permanent color string of this edge, returns empty string if uncolored
function GetPermanentEdgeColor(id) end
---Set the color of this edge, overriding the normal texture and stress color visualization. This color will persist when switching between build mode and sim mode, as well as persist through save/load. Note that SetOverrideEdgeColor takes priority over the permanent color if it is used.
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
---@param overrideColor string is the color to set the edge. Format: #RRGGBBAA
function SetPermanentEdgeColor(id, overrideColor) end
---Returns true if the edge is prebuilt, or false if it isn't
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
---@return boolean isPrebuilt true if the edge is prebuilt, or false if it isn't
function GetBridgeEdgeIsPrebuilt(id) end
---Returns true if the edge is prebuilt, or false if it isn't
---@cat Bridge
---@param id string is the id of the joint, usually obtained from GetJointIds
---@return boolean isPrebuilt true if the edge is prebuilt, or false if it isn't
function GetJointIsPrebuilt(id) end



---Enables buttons in the top bar for navigation forward and backwards through campaign levels.
---@cat Debug
function EnableLevelNavArrows() end
---Shows the current level ID in the level info panel
---@cat Debug
function ShowLevelID() end
---Unlocks the debug console, allowing it to be opened using the ~ key
---@cat Debug
function EnableDebugConsole() end
---Adds a console command that calls a named function from ConsoleCommands.lua
---@cat Debug
---@example -- OnModLoad.lua:
---@example EnableDebugConsole()
---@example AddDebugConsoleCommand("set_material_cost", "usage: set_material_cost <material_name> <cost_value>", 2)
---@example -- ConsoleCommands.lua:
---@example function set_material_cost(args)
---@example   materialName = args[1]
---@example   costValue = tonumber(args[2])
---@example   SetMaterialCost(materialName, costValue)
---@example end
---@param commandName string is the name of the command the user will type into the debug console
---@param helpText string is the help text string the user will see when they type “help” in the debug console
---@param numParameters integer is the number of parameters the command requires (use 0 to make app parameters optional and use varargs (...) in the command function)
function AddDebugConsoleCommand(commandName, helpText, numParameters) end



---Adds a skin for a vanilla vehicle
---@cat Vehicle
---@param vehicleAddressableName string Unique name that is used to identify the vehicle type.  See Vehicle Addressable Names table in Appendix for list of all vehicle addressable names.
---@param filename string is the name of the png file located in the same directory as the lua script.
---@param displayName string is the name that will appear in the dropdown when selecting vehicle skins.
---@param flagColor string Default color to use for flag and checkpoints.  Format: #RRGGBBAA
---@param id string is an id for this skin. If you have multiple textures in your mod, they must have unique id values. If you edit your mod after uploading, do not change this id value.
function AddVehicleSkin(vehicleAddressableName, filename, displayName, flagColor, id) end
---Returns a list of id strings for all currently active vehicles (List<string>)
---@cat Vehicle
---@return integer[] vehicleIds list of id strings for all currently active vehicles
function GetVehicleIds() end
---Returns the current game world position of the vehicle as a float list of length 3 (corresponding to x, y, and z position) (List<float>)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return Vec3 position
function GetVehiclePosition(id) end
---Returns the current speed of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number speed the current speed of the vehicle
function GetVehicleSpeed(id) end
---Returns string representing vehicle game state: "REACHED_FLAG", "UNDERWATER", "DRIVING", "WAITING_START", "WAITING_CHECKPOINT", or "WAITING_BUILD_MODE"
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return string state string representing vehicle game state: "REACHED_FLAG", "UNDERWATER", "DRIVING", "WAITING_START", "WAITING_CHECKPOINT", or "WAITING_BUILD_MODE"
function GetVehicleGameState(id) end
---Returns true if the vehicle is flipped (facing left), otherwise returns false
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return boolean isFlipped true if the vehicle is flipped (facing left), otherwise returns false
function GetVehicleFlippedDirection(id) end
---Returns the current game world rotation of the vehicle as a float list of length 3 (corresponding to x, y, and z euler angles) (List<float>)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return Vec3 rotation the current game world rotation of the vehicle as a float list of length 3
function GetVehicleRotation(id) end
---Returns the acceleration of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number acceleration the acceleration of the vehicle
function GetVehicleAcceleration(id) end
---Returns the horsepower of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number horsepower the horsepower of the vehicle
function GetVehicleHorsepower(id) end
---Returns the target speed of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number targetSpeed the target speed of the vehicle
function GetVehicleTargetSpeed(id) end
---Returns the mass of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number mass the mass of the vehicle
function GetVehicleMass(id) end
---Returns the braking force of the vehicle (float)
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return number brakingForce the braking force of the vehicle
function GetVehicleBrakingForce(id) end
---Returns true if the idle downhill setting is true on the vehicle, otherwise returns false
---@cat Vehicle
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@return boolean idleDownhill true if the idle downhill setting is true on the vehicle, otherwise returns false
function GetVehicleIdleDownhill(id) end
---[CHEAT] Sets the acceleration of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value number is the desired acceleration of the vehicle
function SetVehicleAcceleration(id, value) end
---[CHEAT] Sets the horsepower of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value number is the desired horsepower of the vehicle
function SetVehicleHorsepower(id, value) end
---[CHEAT] Sets the target speed of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value number is the desired target speed of the vehicle
function SetVehicleTargetSpeed(id, value) end
---[CHEAT] Sets the mass of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value number is the desired mass of the vehicle
function SetVehicleMass(id, value) end
---[CHEAT] Sets the flipped direction of the vehicle to the desired value, note that true means facing to the left
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value boolean is the desired flipped direction of the vehicle
function SetVehicleFlippedDirection(id, value) end
---[CHEAT] Sets the braking force of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value number is the desired braking force of the vehicle
function SetVehicleBrakingForce(id, value) end
---[CHEAT] Sets the idle downhill setting of the vehicle to the desired value
---@cat Vehicle
---@cheat
---@param id string is the id of the vehicle, usually obtained from GetVehicleIds()
---@param value boolean is the desired idle downhill setting of the vehicle
function SetVehicleIdleDownhill(id, value) end



---Returns the current normalized sim speed (float)
---@cat Game State
---@return number simSpeed the current normalized sim speed
function GetSimSpeed() end
---Sets the current sim speed to the desired value, note that the desired value must be a valid sim speed in the current sim speed list. Default valid sim speeds are {0.1, 0.2, 0.5, 1, 2, 3, 5}
---@cat Game State
---@param speed number is the desired normalized sim speed
function SetSimSpeed(speed) end
---Returns the default normalized sim speed (float)
---@cat Game State
---@return number simSpeed the default normalized sim speed
function GetDefaultSimSpeed() end
---Returns the current level ID (string)
---@cat Game State
---@return string levelID the current level ID
function GetCurrentLevelID() end
---Starts simulation if you are in build mode, or resumes simulating if you are in a paused simulation. returns true if successful.
---@cat Game State
---@return boolean success
function SimulationStart() end
---Toggles pause state of simulation if you are in sim mode and the simulation has started. returns true if successful.
---@cat Game State
---@return boolean success
function SimulationTogglePause() end
---Pauses simulation if you are in sim mode and the simulation has started. returns true if successful.
---@cat Game State
---@return boolean success
function SimulationPause() end
---Unpauses simulation if you are in sim mode and the simulation has started. returns true if successful.
---@cat Game State
---@return boolean success
function SimulationUnpause() end
---Ends simulation if you are in sim mode and the simulation has started. returns true if successful.
---@cat Game State
---@return boolean success
function SimulationEnd() end
---[CHEAT] If you are in sim mode and the simulation has started, immediately end the simulation and go to level complete screen. returns true if successful.
---@cat Game State
---@cheat
---@return boolean success
function EndLevelSuccess() end
---If you are in sim mode and the simulation has started, immediately end the simulation and go to level failed screen, showing failReason text. returns true if successful.
---@cat Game State
---@param failReasonText string Message to show in the fail panel
---@return boolean success
function EndLevelFail(failReasonText) end
---Returns true if you are in sim mode and the simulation has started, otherwise returns false.
---@cat Game State
---@return boolean isSimulating
function IsSimulating() end
---Returns true or false based on if the game is currently simulating but pass/fail has yet to be determined
---@cat Game State
---@return boolean isSimulating
function IsSimulatingWithoutPassOrFail() end



---Creates a new text object
---@cat Screen UI
---@param objectId string is the name of the text object, used to update it later
---@param width integer is the width of the text field, used for pivot points and to determine when longer text will wrap
---@param height integer is the height of the text field, used for pivot points
function CreateTextObject(objectId, width, height) end
---Sets the text in a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param textString string is the string that will appear in the text field
function UpdateTextString(objectId, textString) end
---Sets the screen position of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param xScreenPos number is the x-axis screen position, 0 being the left side and 1 being the right side
---@param yScreenPos number is the y-axis screen position, 0 being the bottom and 1 being the top
function UpdateTextScreenPos(objectId, xScreenPos, yScreenPos) end
---Sets the alignment of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param horizontalAlign string is the horizontal text alignment, acceptable values are: “Left”, “Center”, “Right”, and “Justified”
---@param verticalAlign string is the vertical text alignment, acceptable values are: “Top”, “Middle”, and “Bottom”
function UpdateTextAlignment(objectId, horizontalAlign, verticalAlign) end
---Sets the pivot point of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param xPivot number is the x-axis of the text field’s pivot point, 0 being the left side and 1 being the right side
---@param yPivot number is the y-axis of the text field’s pivot point, 0 being the bottom and 1 being the top
function UpdateTextPivot(objectId, xPivot, yPivot) end
---Sets the font size of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param fontSize integer is the new font size value for the text field
function UpdateTextFontSize(objectId, fontSize) end
---Sets the color of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param colorString string is the new color value for the text field, using format: #RRGGBBAA
function UpdateTextColor(objectId, colorString) end
---Destroys a previously created text object with the given id
---@cat Screen UI
---@param objectId string is the name of the text object
function DestroyTextObject(objectId) end
---Enables the background of a text object
---NOTE: the background auto-scales to the display size of the text, which will prevent the text pivot and alignment from working as expected
---@cat Screen UI
---@param objectId string is the name of the text object
---@param bgActive boolean determines if the background is active or not.
function UpdateTextSetBackgroundActive(objectId, bgActive) end
---Sets the background color of a text object
---@cat Screen UI
---@param objectId string is the name of the text object
---@param bgColorString string is the new color value for the overall background, using format: #RRGGBBAA
---@param outlineColorString string is the new color value for the outline around the background, using format: #RRGGBBAA
function UpdateTextSetBackgroundColor(objectId, bgColorString, outlineColorString) end
---Sets the maximum width of a text object
---@cat Screen UI
---@param objectId string is the name of the text object used when calling CreateTextObject
---@param maxWidth integer is the max width value for the text field to start wrapping
function UpdateTextMaxWidth(objectId, maxWidth) end
---Creates a new sprite object
---@cat Screen UI
---@param spriteId string is the name of the sprite object, used to update it later
---@param imagePath string is the local path of the image file to use for this sprite object
---@param width integer is the width of the sprite object
---@param height integer is the height of the sprite object
function CreateSpriteObject(spriteId, imagePath, width, height) end
---Destroys a sprite object
---@cat Screen UI
---@param spriteId string is the name of the sprite object
function DestroySpriteObject(spriteId) end
---Sets the image of a sprite object
---@cat Screen UI
---@param spriteId string is the name of the sprite object
---@param imagePath string is the local path of the image file to use for this sprite object
function UpdateSpriteImage(spriteId, imagePath) end
---Sets the screen position of a sprite object
---@cat Screen UI
---@param spriteId string is the name of the sprite object
---@param xScreenPos number is the x-axis screen position, 0 being the left side and 1 being the right side
---@param yScreenPos number is the y-axis screen position, 0 being the bottom and 1 being the top
function UpdateSpriteScreenPos(spriteId, xScreenPos, yScreenPos) end
---Sets the pivot point of a sprite object
---@cat Screen UI
---@param spriteId string is the name of the sprite object
---@param xPivot number is the x-axis of the sprite’s pivot point, 0 being the left side and 1 being the right side
---@param yPivot number is the y-axis of the sprite’s pivot point, 0 being the bottom and 1 being the top
function UpdateSpritePivot(spriteId, xPivot, yPivot) end
---Sets the color filter of a sprite object. For example a 1x1 solid white image with a 50% transparent red color (#FF000080) will draw a 50% transparent red sprite.
---@cat Screen UI
---@param spriteId string is the name of the sprite object
---@param colorString string is the new color value for the sprite, using format: #RRGGBBAA
function UpdateSpriteColor(spriteId, colorString) end
---Creates a new button object
---NOTE: Please make your callback function name as unique as possible. If multiple callbacks across different mods share the same name, the one loaded last will overwrite the others.
---@cat Screen UI
---@param buttonId string is the name of the button object, used to update it later
---@param callback string is the name of the LUA function this button will execute when pressed
---@param width integer is the width of the button
---@param height integer is the height of the button
function CreateButtonObject(buttonId, callback, width, height) end
---Destroys a button by id
---@cat Screen UI
---@param buttonId string is the name of the button object
function DestroyButtonObject(buttonId) end
---Sets the button callback to a named global function name
---NOTE: Please make your callback function name as unique as possible. If multiple callbacks across different mods share the same name, the one loaded last will overwrite the others.
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param callback string is the name of the LUA function this button will execute when pressed
function UpdateButtonCallback(buttonId, callback) end
---Sets the text of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param buttonText string is the display text on the button object
function UpdateButtonText(buttonId, buttonText) end
---Sets the image of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param imagePath string is the local path of the image file to use for the sprite of this button
function UpdateButtonImage(buttonId, imagePath) end
---Sets the screen position of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param xScreenPos number is the x-axis screen position, 0 being the left side and 1 being the right side
---@param yScreenPos number is the y-axis screen position, 0 being the bottom and 1 being the top
function UpdateButtonScreenPos(buttonId, xScreenPos, yScreenPos) end
---sets the pivot point of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param xPivot number is the x-axis of the button’s pivot point, 0 being the left side and 1 being the right side
---@param yPivot number is the y-axis of the button’s pivot point, 0 being the bottom and 1 being the top
function UpdateButtonPivot(buttonId, xPivot, yPivot) end
---Sets the background color of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param normalColorStr string is the new color value for the color of the button when not being hovered, using format: #RRGGBBAA
---@param hoverColorStr string is the new color value for the color of the button when it is being hovered, using format: #RRGGBBAA
function UpdateButtonColor(buttonId, normalColorStr, hoverColorStr) end
---Sets the text color of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param colorStr string is the new color value for the display text of the button, using format: #RRGGBBAA
function UpdateButtonTextColor(buttonId, colorStr) end
---Sets the hover tooltip of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param tooltipText string is the display text of the tooltip when hovering the button
function UpdateButtonTooltipText(buttonId, tooltipText) end
---Enables the outline of a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param outlineActive boolean determines if the outline is active or not
function UpdateButtonSetOutlineActive(buttonId, outlineActive) end
---Adds a scale-up effect when the button is hovered
---@cat Screen UI
---@param buttonId string is the name of the button object
function UpdateButtonAddHoverScale(buttonId) end
---Enables or disables a button
---@cat Screen UI
---@param buttonId string is the name of the button object
---@param interactable boolean determines if the button can be clicked or not
function UpdateButtonSetInteractable(buttonId, interactable) end



---Shows an information popup message in the center of the screen with an OK button
---@cat UI
---@param text string is the text to show in a popup
function ShowMessage(text) end
---Returns true if any menu is open, otherwise returns false
---@cat UI
---@return boolean isOpen true if any menu (modal) is open, otherwise returns false
function IsMenuOpen() end
---Returns true if stress visibility is enabled, otherwise returns false
---@cat UI
---@return boolean isEnabled true if stress visibility is enabled, otherwise returns false
function IsStressVisibilityEnabled() end
---Sets the available simulation speeds to use in game as table of integers where 1000=1.0x. Default: {100, 200, 500, 1000, 2000, 3000, 5000}
---@cat UI
---@param speeds integer[] Simulation speeds to use in game
function SetSimSpeeds(speeds) end
---Sets the default sim speed from the available speeds. If speed does not exist in list of simulation speeds, then value is ignored
---@cat UI
---@param speed integer Default simulation speed
function SetDefaultSimSpeed(speed) end



---Returns the current game world position of the camera as a float list of length 3 (corresponding to x, y, and z position)
---@cat Camera
---@return Vec3 position the current game world position of the camera as a float list of length 3
function GetCameraPosition() end
---Sets the current game world position of the camera
---@cat Camera
---@param position Vec3 is the desired position of the camera (corresponding to x, y, and z position)
function SetCameraPosition(position) end
---Returns the current game world rotation of the camera as a float list of length 3 (corresponding to x, y, and z euler angles)
---@cat Camera
---@return Vec3 rotation the current game world rotation of the camera as a float list of length 3
function GetCameraRotation() end
---Sets the current game world rotation of the camera
---@cat Camera
---@param rotation Vec3 is the desired rotation of the camera (corresponding to x, y, and z euler angles)
function SetCameraRotation(rotation) end
---Sets the camera's rotation so that it looks at the desired object, note this will only work correctly if Orthographic is set to false
---@cat Camera
---@param objectId string is the id of the vehicle, edge, or joint to look at
function SetCameraLookAtObject(objectId) end
---Returns true if the camera is set to Orthographic, otherwise returns false
---@cat Camera
---@return boolean isOrthographic true if the camera is set to Orthographic, otherwise returns false
function GetCameraOrthographic() end
---Sets the Orthographic setting of the camera to the desired value
---@cat Camera
---@param value boolean is the desired Orthographic state
function SetCameraOrthographic(value) end
---Returns the Orthographic Size value of the camera (float)
---@cat Camera
---@return number size the Orthographic Size value of the camera
function GetCameraOrthographicSize() end
---Sets the Orthographic Size value of the camera to the desired value
---@cat Camera
---@param value number is the desired Orthographic Size value of the camera
function SetCameraOrthographicSize(value) end
---returns the Field Of View value of the camera (float)
---@cat Camera
---@return number fov the Field Of View value of the camera
function GetCameraFOV() end
---Sets the Field Of View value of the camera to the desired value
---@cat Camera
---@param value number is the desired Field Of View value of the camera
function SetCameraFOV(value) end



---Creates a workshop campaign, must happen before WorkshopCampaignCreateWorld or WorkshopCampaignAddLevelToWorld.
---@cat Workshop Campaign
---@param winMessage string is the message shown to the player when they beat all the levels in the campaign.
function WorkshopCampaignCreate(winMessage) end
---Creates a world for a workshop campaign, must happen after WorkshopCampaignCreate
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param prefix string is the two or three character prefix that appears before the level name.
---@param subtitle string is the world type, like Generic or Custom Shapes.
---@param worldDifficulty integer is the difficulty rating of the world, from 1 to 5.
function WorkshopCampaignCreateWorld(worldName, prefix, subtitle, worldDifficulty) end
---Sets the icon of the created world to the icon from the normal campaign mode world that matches the prefix.
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param prefix string is the two or three character prefix that appears before the level name.
function WorkshopCampaignSetWorldIconByPrefix(worldName, prefix) end
---Sets the icon of the created world to the given sprites.
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param iconSpritePath string is the path to the sprite for this world when it is unselected.
---@param selectedIconSpritePath string is the path to the sprite for this world when it is selected.
function WorkshopCampaignSetWorldIcon(worldName, iconSpritePath, selectedIconSpritePath) end
---Sets the position of the icon for the given world. Note that the X value is clamped between -125 and 125, and the Y value is clamped between -210 and 210.
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param iconPositionX number is the X position of the icon.
---@param iconPositionY number is the Y position of the icon.
function WorkshopCampaignSetWorldIconPosition(worldName, iconPositionX, iconPositionY) end
---Adds the given level to the given world.
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param levelId string is the steam workshop item id of the level, should be a long set of numbers.
function WorkshopCampaignAddLevelToWorld(worldName, levelId) end
---Adds the given level to the given world, and puts a T in front of the name to indicate it is a tutorial.
---@cat Workshop Campaign
---@param worldName string is the display name of the world.
---@param levelId string is the steam workshop item id of the level, should be a long set of numbers.
function WorkshopCampaignAddTutorialLevelToWorld(worldName, levelId) end



---Log a message to the consoles
---@cat Utils
---@param message string will be printed to the Unity Editor console
function ConsoleLog(message) end
---Returns the interval in seconds from the last frame to the current one (float)
---@cat Utils
---@return number interval the interval in seconds from the last frame to the current one
function GetUnscaledDeltaTime() end
---Returns the total number of frames since the start of the game (int)
---@cat Utils
---@return number frames the total number of frames since the start of the game
function GetFrameCount() end
---Returns the current game state (string). Valid values include: MAIN_MENU, BUILD, SANDBOX, SIM.
---@cat Utils
---@return string state the current game state (string). (MAIN_MENU, BUILD, SANDBOX, SIM)
function GetGameState() end
---Returns the screen position as a float list of length 3 (corresponding to x, y, and z position) representing the position on screen (List<float>)
---@cat Utils
---@param worldPos Vec3 is a float list of length 3 (corresponding to x, y, and z position) representing the game world position
---@return Vec3 screenPos the screen position as a float list of length 3
function WorldToScreenPos(worldPos) end
---Returns true if the key is currently held down, otherwise returns false
---@cat Utils
---@param keycodeString string is the name of the desired key, like "P" or "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
---@return boolean isDown
function GetKeyDown(keycodeString) end
---Returns true if the key is currently held down, otherwise returns false
---@cat Utils
---@param keycodeNumber integer is the integer value of the desired key, like 112 for "P" or 303 for "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
---@return boolean isDown
function GetKeycodeDown(keycodeNumber) end
---Returns true if the key was just pressed this frame, otherwise returns false
---@cat Utils
---@param keycodeString string is the name of the desired key, like "P" or "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
---@return boolean isPressed
function GetKeyJustPressed(keycodeString) end
---Returns true if the key was just pressed this frame, otherwise returns false
---@cat Utils
---@param keycodeNumber integer is the integer value of the desired key, like 112 for "P" or 303 for "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
---@return boolean isPressed
function GetKeycodeJustPressed(keycodeNumber) end
---Returns the name (string) of the first detected key pressed this frame
---@cat Utils
---@return string keyName
function GetNameOfKeyDownThisFrame() end
---After being set, holding down this key will cause normal game input to be ignored
---@cat Utils
---@param keycodeString string is the name of the desired key, like "P" or "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
function SetIgnoreGameInputKey(keycodeString) end
---After being set, holding down this key will cause normal game input to be ignored
---@cat Utils
---@param keycodeNumber integer is the integer value of the desired key, like 112 for "P" or 303 for "RightShift". Full list can be found here: https://gist.github.com/Extremelyd1/4bcd495e21453ed9e1dffa27f6ba5f69
function SetIgnoreGameInputKeycode(keycodeNumber) end
---Enables or disables normal game input completely
---@cat Utils
---@param isActive boolean determines if normal game input is active or not
function SetGameInputActive(isActive) end
---Returns the current x,y position of the mouse in pixels (List<float>)
---@cat Utils
---@return Vec2 screenPos
function GetMousePosition() end
---Returns the current x,y position of the mouse normalized to screen position, where 0,0 is the bottom left and 1,1 is the top right (List<float>)
---@cat Utils
---@return Vec2 screenPos
function GetMouseScreenPosition() end
---Returns the world position of the mouse (List<float>)
---@cat Utils
---@return Vec3 worldPos
function GetMouseWorldPosition() end
---Returns true if the button is currently held down, otherwise returns false
---@cat Utils
---@param mouseButton integer is the value of the desired mouse button: 0 is the primary button, 1 is the secondary button, and 2 is the middle button
---@return boolean isHeld
function GetMouseButtonDown(mouseButton) end
---Returns true if the button was just pressed this frame, otherwise returns false
---@cat Utils
---@param mouseButton integer is the value of the desired mouse button: 0 is the primary button, 1 is the secondary button, and 2 is the middle button
---@return boolean isPressed
function GetMouseButtonJustPressed(mouseButton) end
---Returns the time in seconds since the start of the game (float)
---@cat Utils
---@return number seconds
function GetGameTime() end
---Returns the current screen resolution as a float list of length 2 (corresponding to width and height) (List<float>)
---@cat Utils
---@return Vec2 resolution
function GetScreenResolution() end
---@cat Utils
---@param varName string is the name of the integer variable
---@param intValue integer is the value of the variable
function SetVar_Int(varName, intValue) end
---Returns the value of the variable (int)
---@cat Utils
---@param varName string is the name of the integer variable previously set using SetVar_Int
---@return integer intValue
function GetVar_Int(varName) end
---@cat Utils
---@param varName string is the name of the float variable
---@param floatValue number is the value of the variable
function SetVar_Float(varName, floatValue) end
---Returns the value of the variable (float)
---@cat Utils
---@param varName string is the name of the float variable previously set using SetVar_Float
---@return number floatValue
function GetVar_Float(varName) end
---@cat Utils
---@param varName string is the name of the string variable
---@param stringValue string is the value of the variable
function SetVar_String(varName, stringValue) end
---Returns the value of the variable (string)
---@cat Utils
---@param varName string is the name of the string variable previously set using SetVar_String
---@return string stringValue
function GetVar_String(varName) end
---@cat Utils
---@param varName string is the name of the integer list variable
---@param listValue integer[] is the value of the variable
function SetVar_IntList(varName, listValue) end
---Returns the value of the variable (List<int>)
---@cat Utils
---@param varName string is the name of the integer list variable previously set using SetVar_IntList
---@return integer[] listValue
function GetVar_IntList(varName) end
---@cat Utils
---@param varName string is the name of the float list variable
---@param listValue number[] is the value of the variable
function SetVar_FloatList(varName, listValue) end
---Returns the value of the variable (List<float>)
---@cat Utils
---@param varName string is the name of the float list variable previously set using SetVar_FloatList
---@return number[] listValue
function GetVar_FloatList(varName) end
---@cat Utils
---@param varName string is the name of the string list variable
---@param listValue string[] is the value of the variable
function SetVar_StringList(varName, listValue) end
---Returns the value of the variable (List<string>)
---@cat Utils
---@param varName string is the name of the string list variable previously set using SetVar_StringList
---@return string[] listValue
function GetVar_StringList(varName) end
---Evaluates and runs the given lua string after a delay
---NOTE: the given lua string must be formatted exactly as it would be written in a lua script, so you may need to use escape characters.
---@cat Utils
---@param luaString string is the lua string to be executed
---@param delaySeconds number is the number of seconds to wait before executing the string
function RunLuaDelayed(luaString, delaySeconds) end

-- Undocumented functions that seem to exist but might not even do anything
function OpenLevel(id) end
function OpenWorkshopLevel(id) end
function SetVehiclePhysicsVelocity(id, Vec3) end
function SetVehiclePosition(id, Vec3) end
function SetVehicleRotation(id, number) end
function SetVehicleSpeed(id, number) end
function GetVehiclePhysicsVelocity(id) end
