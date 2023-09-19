---@meta pb3.lua
---@diagnostic disable: unused-function,lowercase-global,missing-return,duplicate-doc-alias,duplicate-set-field

---A table of {x,y,z} used to represent coordinates in the game world or on screen.
---@alias Vec3 { [1]: number, [2]: number, [3]: number }


---Enables buttons in the top bar for navigation forward and backwards through campaign levels.
---@cat Dev
function EnableLevelNavArrows() end


---Permanently tints the texture of the given material. Note that Hydraulics and Roads use a secondary texture, which can be tinted using SetHydraulicsBaseTint and SetRoadEdgeTint respectively
---@cat Material
---@param materialName string The name of the material to permanently tint, see appendix for valid material names
---@param tintColor string The color to tint the material. Format is HTML format: #RRGGBB
function SetMaterialTint(materialName, tintColor) end
---Permanently tints the texture of the base of the hydraulic. Note that the extending/contracting part of the hydraulic can be tinted using SetMaterialTint()
---@cat Material
---@param tintColor string The color to tint the material. Format is HTML format: #RRGGBB
function SetHydraulicsBaseTint(tintColor) end
---Permanently tints the texture of the edge of the road. Note that the center part of the road can be tinted using SetMaterialTint()
---@cat Material
--@param tintColor string The color to tint the material. Format is HTML format: #RRGGBB
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
---> Example:
---```lua
---SetMaterialStrength("ROAD",1000)
---```
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
function SetMaterialMaxLength(materialName,value) end
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
---> Example (sky that blends from red to green to blue):
---```lua
---SetThemeSky("rocks", "#FF0000", "#00FF00", "#0000FF", "0.5")
---```
---@cat Theme
---@param themeName string name of the theme to be modified. Currently one of: Alpine, Rocks, HighDesert, SkyCreeper
---@param topColor string Color of top portion of sky using HTML format: #RRGGBB
---@param midColor string Color of top portion of sky using HTML format: #RRGGBB
---@param botColor string Color of top portion of sky using HTML format: #RRGGBB
---@param offset number Value between 0 and 1 that controls how colors blend. 0: blend between top and mid colors, 0.5: ⅓ top, ⅓ mid, ⅓ bot, 1: blend between mid and bot colors
function SetThemeSky(themeName, topColor, midColor, botColor, offset) end


---Loads a decor asset from an addressable prefab to be used in sandbox and workshop.
---See the UGC Pipeline section of the documentation for more info.
---> Example:
---```lua
---AddAssetDecor("rockFormation.png", "Rock Formation", "RockFormationPrefab")
---```
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
function GetBridgeEdgeIds() end
---Returns the current game world position of the bridge edge as a float list of length 3 (corresponding to x, y, and z position) (List<float>)
---@cat Bridge
---@param id string is the id of the bridge edge, usually obtained from GetBridgeEdgeIds()
function GetBridgeEdgePosition(id) end
---Returns the current normalized stress of the edge (float)
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds()
function GetBridgeEdgeStressNormalized(id) end
---Returns a list of id strings for all currently active foundations (List<string>)
---@cat Bridge
function GetFoundationIds() end
---Returns the material name of the edge, see appendix for valid material names
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function GetBridgeEdgeMaterial(id) end
---Returns the length of the edge
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function GetBridgeEdgeLength(id) end
---Returns the angle of the edge
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function GetBridgeEdgeAngle(id) end
---Returns a list of id strings representing the two joints this edge is connected to (List<string>)
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function GetBridgeEdgeJoints(id) end
---Returns true if the edge is broken, or false if it isn't
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
function GetBridgeEdgeIsBroken(id) end
---Set the color of this edge, overriding the normal texture and stress color visualization
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
---@param overrideColor string is the color to set the edge. Format is HTML format: #RRGGBB
function SetOverrideEdgeColor(id, overrideColor) end
---Returns the override color string of this edge, returns empty string if uncolored
---@cat Bridge
---@param id string is the id of the edge, usually obtained from GetBridgeEdgeIds
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
---@param overrideColor string is the color to set the edge. Format is HTML format: #RRGGBB
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





---Get the normalized 2D screen position for a 3D world position
---> Example: Print the screen position of the first joint in console
---```lua
---local pos = WorldToScreenPos(GetJointPosition(GetJointIds()[1]))
---ConsoleLog(table.concat(pos, ', '))
---```
---@cat Utils
---@param worldPos Vec3 The game world position as a table {x,y,z}
---@return Vec3 screenPos The normalized screen position as a table {x,y,z} where 0,0 is the left-bottom and 1,1 is the right-top corner
function WorldToScreenPos(worldPos) end
