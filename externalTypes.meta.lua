---@meta
---[Documentation](https://warcraft.wiki.gg/wiki/API_CastingInfo)
---@return string name
---@return string text
---@return string texture
---@return number startTimeMS
---@return number endTimeMS
---@return boolean isTradeSkill
---@return string castID
---@return boolean notInterruptible
---@return number spellId
function CastingInfo () end

---[Documentation](https://warcraft.wiki.gg/wiki/API_ChannelInfo)
---@return string name
---@return string text
---@return string texture
---@return number startTimeMS
---@return number endTimeMS
---@return boolean isTradeSkill
---@return boolean notInterruptible
---@return number spellId
function ChannelInfo() end

C_Seasons = {
    ---@return number? seasonID # `Enum.SeasonID` for the currently active season.
    GetActiveSeason = function() end,
    ---@return boolean # `true` if player is logged into a server with an active season.
    HasActiveSeason = function() end,
}
---Returns the number of talents in a given specialization tab.
---@param tabIndex number  Ranging from 1 to `GetNumTalentTabs()`.
---@return number numTalents
function GetNumTalents(tabIndex) end

---Returns the total number of talent tabs for the player. 
---@param isInspect boolean? Return the number of talent tabs for the current inspect target if `true`
---@return number numTabs
function GetNumTalentTabs(isInspect) end

---Returns information on a glyph socket. 
---@param socketID number  The socket index to query, ranging from 1 through `NUM_GLYPH_SLOTS`.
---@param talentGroup number?  The talent specialization group to query. Defaults to 1.
---@return boolean? enabled `true` if the socket has a glyph in it.
---@return string? glyphType The type of glyph accepted by this socket. Either `GLYPHTYPE_MAJOR` or `GLYPHTYPE_MINOR`.
---@return number? glyphSpellID The spell ID of the socketed glyph.
---@return number? iconFile FileID - The file ID of the sigil icon associated with the socketed glyph
function GetGlyphSocketInfo (socketID, talentGroup) end

---Returns the number of glyph sockets the player will have access to at max level. 
---@return number numSockets
function GetNumGlyphSockets () end
