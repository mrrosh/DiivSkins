--[[	DiivSkins v2.0
	diiverr818@yahoo.com
	
	Thank you Gello, Kaelten, and especially Beladona from www.WoWInterface.com
	for all your assistance and guidance with my noobie questions. 
	I have much yet to learn, but I couldn't have come this far without you.
	Thank you also Cairenn for general support and for managing a great site. 
	
	DiivSkins is 100% open source. If you find something in here of mine that you 
	would actually like use, please, by all means feel free. Thank you. ]]


-- Global Functions ---------------------------------------
function DS_MainOnEvent()
	if (event == "VARIABLES_LOADED") then 
		if (not DiivSkinSettings) then DiivSkinSettings = {}; end
		if (not DiivSkinSettings.setup) then DS_FirstLoad(); end
	end
end

function DS_FirstLoad()
	DS_ControlConsole:Show();
	DS_Startup:Show();
	DiivSkinSettings.setup = true;
end

-- hbar Functions ---------------------------------
function DS_TextureOnEvent()
	local barid = "hbar"..this:GetID();
	if (event == "VARIABLES_LOADED") then 
		if (not DiivSkinSettings) then DiivSkinSettings = {}; end
		if (not DiivSkinSettings[barid]) then DiivSkinSettings[barid] = 0; end
		DS_TextureUpdate(barid);
	end
end

function DS_TextureUpdate(barid)
	local key = DiivSkinSettings[barid];
	local var = DiivSkinTextures[key];
	local texture = getglobal("DiivSkins_"..barid.."Texture");
	texture:SetTexCoord(var.a, var.b, var.c, var.d);
end

-- hbar Configuration Variables ---------------------------------
DiivSkinTextures = {};
DiivSkinTextures[0] = {a = 0.5, b = 0.6, c = 0.9, d = 1.0};
DiivSkinTextures[1] = {a = 0.0, b = 1.0, c = 0.9023437, d = 0.9824218};
DiivSkinTextures[2] = {a = 0.0, b = 1.0, c = 0.8203125, d = 0.9003906};
DiivSkinTextures[3] = {a = 0.0, b = 1.0, c = 0.7382812, d = 0.8183593};
DiivSkinTextures[4] = {a = 0.0, b = 1.0, c = 0.65625, d = 0.7363218};
DiivSkinTextures[5] = {a = 0.0, b = 1.0, c = 0.5742187, d = 0.6542968};
DiivSkinTextures[6] = {a = 0.0, b = 1.0, c = 0.4921875, d = 0.5722656};
DiivSkinTextures[7] = {a = 0.0, b = 1.0, c = 0.4101562, d = 0.4902343};
DiivSkinTextures[8] = {a = 0.0, b = 1.0, c = 0.328125, d = 0.4082031};
DiivSkinTextures[9] = {a = 0.0, b = 1.0, c = 0.2460937, d = 0.3261718};
DiivSkinTextures[10] = {a = 0.0, b = 1.0, c = 0.1640625, d = 0.2441406};
DiivSkinTextures[11] = {a = 0.0, b = 1.0, c = 0.0820312, d = 0.1621093};
DiivSkinTextures[12] = {a = 0.0, b = 1.0, c = 0.0, d = 0.0800781}; 

-- vbar Functions ---------------------------------
function DS_VBarTextureOnEvent()
	local vbarid = "vbar"..this:GetID();
	if (event == "VARIABLES_LOADED") then 
		if (not DiivSkinSettings) then DiivSkinSettings = {}; end
		if (not DiivSkinSettings[vbarid]) then DiivSkinSettings[vbarid] = 0; end
		DS_VBarTextureUpdate(vbarid);
	end
end

function DS_VBarTextureUpdate(vbarid)
	local key = DiivSkinSettings[vbarid];
	local var = DiivSkinVBarTextures[key];
	local vtexture = getglobal("DiivSkins_"..vbarid.."Texture");
	vtexture:SetTexCoord(var.a, var.b, var.c, var.d);
end

-- vbar Configuration Variables ---------------------------------
DiivSkinVBarTextures = {};
DiivSkinVBarTextures[0] = {a = 0.5, b = 0.6, c = 0.9, d = 1.0};
DiivSkinVBarTextures[1] = {a = 0.9121093, b = 0.9921875, c = 0.0, d = 1.0};
DiivSkinVBarTextures[2] = {a = 0.8300781, b = 0.9082031, c = 0.0, d = 1.0};
DiivSkinVBarTextures[3] = {a = 0.7480468, b = 0.8261718, c = 0.0, d = 1.0};
DiivSkinVBarTextures[4] = {a = 0.6660156, b = 0.7441406, c = 0.0, d = 1.0};
DiivSkinVBarTextures[5] = {a = 0.5839843, b = 0.6621093, c = 0.0, d = 1.0};
DiivSkinVBarTextures[6] = {a = 0.5019531, b = 0.5800781, c = 0.0, d = 1.0};
DiivSkinVBarTextures[7] = {a = 0.4199218, b = 0.4980468, c = 0.0, d = 1.0};
DiivSkinVBarTextures[8] = {a = 0.3378906, b = 0.4160156, c = 0.0, d = 1.0};
DiivSkinVBarTextures[9] = {a = 0.2558593, b = 0.3339843, c = 0.0, d = 1.0};
DiivSkinVBarTextures[10] = {a = 0.1738281, b = 0.2519531, c = 0.0, d = 1.0};
DiivSkinVBarTextures[11] = {a = 0.0917968, b = 0.1699218, c = 0.0, d = 1.0};
DiivSkinVBarTextures[12] = {a = 0.0097656, b = 0.0878906, c = 0.0, d = 1.0}; 

-- endcap Functions ---------------------------------
function DS_CapTextureOnEvent()
	local endcapid = "endcap"..this:GetID();
	if (event == "VARIABLES_LOADED") then 
		if (not DiivSkinSettings) then DiivSkinSettings = {}; end
		if (not DiivSkinSettings[endcapid]) then DiivSkinSettings[endcapid] = 0; end
		DS_CapTextureUpdate(endcapid);
	end
end

function DS_CapTextureUpdate(endcapid)
	local key = DiivSkinSettings[endcapid];
	local var = DiivSkinCapTextures[key];
	local captexture = getglobal("DiivSkins_"..endcapid.."Texture");
	captexture:SetTexCoord(var.e, var.f, var.g, var.h);
end

-- endcap Configuration Variables ---------------------------------
DiivSkinCapTextures = {};
DiivSkinCapTextures[0] = {e = 0.75, f = 0.8, g = 0.75, h = 0.8};
DiivSkinCapTextures[1] = {e = 0.0, f = 0.25, g = 0.0, h = 0.25};
DiivSkinCapTextures[2] = {e = 0.25, f = 0.0, g = 0.0, h = 0.25};
DiivSkinCapTextures[3] = {e = 0.25, f = 0.5, g = 0.0, h = 0.25};
DiivSkinCapTextures[4] = {e= 0.5, f = 0.25, g = 0.0, h = 0.25};
DiivSkinCapTextures[5] = {e = 0.5, f = 0.75, g = 0.0, h = 0.25};
DiivSkinCapTextures[6] = {e = 0.75, f = 0.5, g = 0.0, h = 0.25};
DiivSkinCapTextures[7] = {e = 0.75, f = 1.0, g = 0.0, h = 0.25};
DiivSkinCapTextures[8] = {e = 1.0, f = 0.75, g = 0.0, h = 0.25};
DiivSkinCapTextures[9] = {e = 0.0, f = 0.25, g = 0.25, h = 0.5};
DiivSkinCapTextures[10] = {e = 0.25, f = 0.0, g = 0.25, h = 0.5};
DiivSkinCapTextures[11] = {e = 0.25, f = 0.5, g = 0.25, h = 0.5};
DiivSkinCapTextures[12] = {e = 0.5, f = 0.25, g = 0.25, h = 0.5};
DiivSkinCapTextures[13] = {e = 0.5, f = 0.75, g = 0.25, h = 0.5};
DiivSkinCapTextures[14] = {e = 0.75, f = 0.5, g = 0.25, h = 0.5};
DiivSkinCapTextures[15] = {e = 0.75, f = 1.0, g = 0.25, h = 0.5};
DiivSkinCapTextures[16] = {e = 1.0, f = 0.75, g = 0.25, h = 0.5};
DiivSkinCapTextures[17] = {e = 0.0, f = 0.25, g = 0.5, h = 0.75};
DiivSkinCapTextures[18] = {e = 0.25, f = 0.0, g = 0.5, h = 0.75};
DiivSkinCapTextures[19] = {e = 0.25, f = 0.5, g = 0.5, h = 0.75};
DiivSkinCapTextures[20] = {e = 0.5, f = 0.25, g = 0.5, h = 0.75};
DiivSkinCapTextures[21] = {e = 0.5, f = 0.75, g = 0.5, h = 0.75};
DiivSkinCapTextures[22] = {e = 0.75, f = 0.5, g = 0.5, h = 0.75};
DiivSkinCapTextures[23] = {e = 0.75, f = 1.0, g = 0.5, h = 0.75};
DiivSkinCapTextures[24] = {e = 1.0, f = 0.75, g = 0.5, h = 0.75};
DiivSkinCapTextures[25] = {e = 0.0, f = 0.25, g = 0.75, h = 1.0};
DiivSkinCapTextures[26] = {e = 0.25, f = 0.0, g = 0.75, h = 1.0};
DiivSkinCapTextures[27] = {e = 0.25, f = 0.5, g = 0.75, h = 1.0};
DiivSkinCapTextures[28] = {e = 0.5, f = 0.25, g = 0.75, h = 1.0};
DiivSkinCapTextures[29] = {e = 0.5, f = 0.75, g = 0.75, h = 1.0};
DiivSkinCapTextures[30] = {e = 0.75, f = 0.5, g = 0.75, h = 1.0};
DiivSkinCapTextures[31] = {e = 0.75, f = 1.0, g = 0.75, h = 1.0};
DiivSkinCapTextures[32] = {e = 1.0, f = 0.75, g = 0.75, h = 1.0};

-- misc bit Functions ---------------------------------
function DS_BitTextureOnEvent()
	local miscbitid = "miscbit"..this:GetID();
	if (event == "VARIABLES_LOADED") then 
		if (not DiivSkinSettings[miscbitid]) then DiivSkinSettings[miscbitid] = 0; end
		DS_BitTextureUpdate(miscbitid);
	end
end

function DS_BitTextureUpdate(miscbitid)
	local key = DiivSkinSettings[miscbitid];
	local var = DiivSkinBitTextures[key];
	local bittexture = getglobal("DiivSkins_"..miscbitid.."Texture");
	bittexture:SetTexCoord(var.e, var.f, var.g, var.h);
end

-- misc bit Configuration Variables ---------------------------------
DiivSkinBitTextures = {};
DiivSkinBitTextures[0] = {e = 0.75, f = 0.8, g = 0.75, h = 0.8};
DiivSkinBitTextures[1] = {e = 0.0, f = 0.25, g = 0.0, h = 0.25};
DiivSkinBitTextures[2] = {e = 0.25, f = 0.0, g = 0.0, h = 0.25};
DiivSkinBitTextures[3] = {e = 0.25, f = 0.5, g = 0.0, h = 0.25};
DiivSkinBitTextures[4] = {e= 0.5, f = 0.25, g = 0.0, h = 0.25};
DiivSkinBitTextures[5] = {e = 0.5, f = 0.75, g = 0.0, h = 0.25};
DiivSkinBitTextures[6] = {e = 0.75, f = 0.5, g = 0.0, h = 0.25};
DiivSkinBitTextures[7] = {e = 0.75, f = 1.0, g = 0.0, h = 0.25};
DiivSkinBitTextures[8] = {e = 1.0, f = 0.75, g = 0.0, h = 0.25};
DiivSkinBitTextures[9] = {e = 0.0, f = 0.25, g = 0.25, h = 0.5};
DiivSkinBitTextures[10] = {e = 0.25, f = 0.0, g = 0.25, h = 0.5};
DiivSkinBitTextures[11] = {e = 0.25, f = 0.5, g = 0.25, h = 0.5};
DiivSkinBitTextures[12] = {e = 0.25, f = 0.5, g = 0.5, h = 0.25};
DiivSkinBitTextures[13] = {e = 0.5, f = 0.75, g = 0.25, h = 0.5};
DiivSkinBitTextures[14] = {e = 0.75, f = 0.5, g = 0.25, h = 0.5};
DiivSkinBitTextures[15] = {e = 0.75, f = 0.5, g = 0.5, h = 0.25};
DiivSkinBitTextures[16] = {e = 0.5, f = 0.75, g = 0.5, h = 0.25};
DiivSkinBitTextures[17] = {e = 0.75, f = 1.0, g = 0.25, h = 0.5};
DiivSkinBitTextures[18] = {e = 1.0, f = 0.75, g = 0.25, h = 0.5};
DiivSkinBitTextures[19] = {e = 1.0, f = 0.75, g = 0.5, h = 0.25};
DiivSkinBitTextures[20] = {e = 0.75, f = 1.0, g = 0.5, h = 0.25};
DiivSkinBitTextures[21] = {e = 0.0, f = 0.25, g = 0.5, h = 0.75};
DiivSkinBitTextures[22] = {e = 0.25, f = 0.5, g = 0.5, h = 0.75};
DiivSkinBitTextures[23] = {e = 0.5, f = 0.75, g = 0.5, h = 0.75};
DiivSkinBitTextures[24] = {e= 0.75, f = 1.0, g = 0.5, h = 0.75};
DiivSkinBitTextures[25] = {e = 0.0, f = 0.25, g = 0.75, h = 1.0};
DiivSkinBitTextures[26] = {e = 0.25, f = 0.0, g = 0.75, h = 1.0};
DiivSkinBitTextures[27] = {e = 0.25, f = 0.5, g = 0.75, h = 1.0};
DiivSkinBitTextures[28] = {e = 0.5, f = 0.25, g = 0.75, h = 1.0};
DiivSkinBitTextures[29] = {e = 0.5, f = 0.75, g = 0.75, h = 1.0};
DiivSkinBitTextures[30] = {e = 0.75, f = 1.0, g = 0.75, h = 1.0};



-- Console button toggles ---------------------------------
function DS_MinimizeToggle()
	if(DS_Page1:IsVisible()) then
		DS_ControlCloseButton:Hide();
		DS_ControlMinimizeButton:Show();
	elseif(DS_Page2:IsVisible()) then
		DS_ControlCloseButton:Hide();
		DS_ControlMinimizeButton:Show();
	elseif(DS_Page3:IsVisible()) then
		DS_ControlCloseButton:Hide();
		DS_ControlMinimizeButton:Show();
	elseif(DS_Startup:IsVisible()) then
		DS_ControlCloseButton:Hide();
		DS_ControlMinimizeButton:Show();
	elseif(DS_CreditsPage:IsVisible()) then
		DS_ControlCloseButton:Hide();
		DS_ControlMinimizeButton:Show();
	else
		DS_ControlCloseButton:Show();
		DS_ControlMinimizeButton:Hide();
	end
end
function DS_MAOptionsToggle()
	if(MAOptions:IsVisible()) then
		PlaySound("igMiniMapClose");
		MAOptions:Hide();
	else
		PlaySound("igMiniMapOpen");
		MAOptions:Show();
	end
end
function DS_BarsToggle()
	if(DS_Page1:IsVisible()) then
		PlaySound("igMiniMapClose");
		DS_Page1:Hide();
	else
		PlaySound("igMiniMapOpen");
		DS_Page1:Show();
		DS_Page2:Hide();
		DS_Page3:Hide();
		DS_Page10:Hide();
		DS_Startup:Hide();
		DS_CreditsPage:Hide();
	end
end
function DS_EndCapsToggle()
	if(DS_Page2:IsVisible()) then
		PlaySound("igMiniMapClose");
		DS_Page2:Hide();
	else
		PlaySound("igMiniMapOpen");
		DS_Page2:Show();
		DS_Page1:Hide();
		DS_Page3:Hide();
		DS_Page10:Hide();
		DS_Startup:Hide();
		DS_CreditsPage:Hide();
	end
end
function DS_MiscBitsToggle()
	if(DS_Page3:IsVisible()) then
		PlaySound("igMiniMapClose");
		DS_Page3:Hide();
	else
		PlaySound("igMiniMapOpen");
		DS_Page3:Show();
		DS_Page1:Hide();
		DS_Page2:Hide();
		DS_Page10:Hide();
		DS_Startup:Hide();
		DS_CreditsPage:Hide();
	end
end



-- Skrag's GameMenuButton function ---------------------------------
function GameMenu_AddButton( button )
	if( GameMenu_InsertAfter == nil ) then
		GameMenu_InsertAfter = GameMenuButtonMacros;
	end
	if( GameMenu_InsertBefore == nil ) then
		GameMenu_InsertBefore = GameMenuButtonLogout;
	end

	button:ClearAllPoints();
	button:SetPoint( "TOP", GameMenu_InsertAfter:GetName(), "BOTTOM", 0, -1 );
	GameMenu_InsertBefore:SetPoint( "TOP", button:GetName(), "BOTTOM", 0, -1 );
	GameMenu_InsertAfter = button;
	GameMenuFrame:SetHeight( GameMenuFrame:GetHeight() + button:GetHeight() + 2 );
end