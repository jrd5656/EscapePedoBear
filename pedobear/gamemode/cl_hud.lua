
local CompletedMap = false
local FinishTime = 0

net.Receive("FinishedMap", function()
	FinishTime = net.ReadFloat()
	CompletedMap = true
end)

net.Receive("ResetFinished", function()
	CompletedMap = false
end)

surface.CreateFont( "BhopTime", {font = "Default",size = 15,weight = 100,blursize = 0,scanlines = 200,antialias = true,underline = false,italic = false} )
surface.CreateFont( "BhopVel", {font = "Default",size = 14,weight = 500,blursize = 0,scanlines = 200,antialias = true,underline = false,italic = true} )
surface.CreateFont( "BhopPB", {font = "Default",size = 11,weight = 500,blursize = 0,scanlines = 200,antialias = true,underline = false,italic = false} )

--[[
 _       ______  ____  ___________   _       _______  __
| |     / / __ \/ __ \/ ___/_  __/  | |     / /   \ \/ /
| | /| / / / / / /_/ /\__ \ / /     | | /| / / /| |\  / 
| |/ |/ / /_/ / _, _/___/ // /      | |/ |/ / ___ |/ /  
|__/|__/\____/_/ |_|/____//_/       |__/|__/_/  |_/_/   
                                                        
--]]

local centertx3 = -30
local savex = 1

local centertx = 300 --this is the middle x cordinate
local centerty = ScrH()-60 --this is the middle y cordinate
local trianglevertex = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex[1]["x"] = centertx
trianglevertex[1]["y"] = centerty
trianglevertex[1]["u"] = 0 //Top Left
trianglevertex[1]["v"] = 0
 
trianglevertex[2]["x"] = centertx + 30
trianglevertex[2]["y"] = centerty + 30
trianglevertex[2]["u"] = 1 //Top Right
trianglevertex[2]["v"] = 0
 
trianglevertex[3]["x"] = centertx
trianglevertex[3]["y"] = centerty + 30
trianglevertex[3]["u"] = 0 //Bottom Left
trianglevertex[3]["v"] = 1

local centertx2 = 301 --this is the middle x cordinate
local centerty2 = ScrH()-61 --this is the middle y cordinate
local trianglevertex2 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex2[1]["x"] = centertx2
trianglevertex2[1]["y"] = centerty2
trianglevertex2[1]["u"] = 0 //Top Left
trianglevertex2[1]["v"] = 0
 
trianglevertex2[2]["x"] = centertx2 + 32
trianglevertex2[2]["y"] = centerty2 + 32
trianglevertex2[2]["u"] = 1 //Top Right
trianglevertex2[2]["v"] = 0
 
trianglevertex2[3]["x"] = centertx2
trianglevertex2[3]["y"] = centerty2 + 32
trianglevertex2[3]["u"] = 0 //Bottom Left
trianglevertex2[3]["v"] = 1

 --this is the middle x cordinate
local centerty3 = ScrH()-59 --this is the middle y cordinate
local trianglevertex3 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex3[1]["x"] = centertx3
trianglevertex3[1]["y"] = centerty3
trianglevertex3[1]["u"] = 0 //Top Left
trianglevertex3[1]["v"] = 0
 
trianglevertex3[2]["x"] = centertx3 + 28
trianglevertex3[2]["y"] = centerty3 + 28
trianglevertex3[2]["u"] = 1 //Top Right
trianglevertex3[2]["v"] = 0
 
trianglevertex3[3]["x"] = centertx3
trianglevertex3[3]["y"] = centerty3 + 28
trianglevertex3[3]["u"] = 0 //Bottom Left
trianglevertex3[3]["v"] = 1

local centertx4 = 70
local centerty4 = ScrH()-86 --this is the middle y cordinate
local trianglevertex4 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex4[1]["x"] = centertx4
trianglevertex4[1]["y"] = centerty4
trianglevertex4[1]["u"] = 0 //Top Left
trianglevertex4[1]["v"] = 0
 
trianglevertex4[2]["x"] = centertx4 + 22
trianglevertex4[2]["y"] = centerty4 + 22
trianglevertex4[2]["u"] = 1 //Top Right
trianglevertex4[2]["v"] = 0
 
trianglevertex4[3]["x"] = centertx4
trianglevertex4[3]["y"] = centerty4 + 22
trianglevertex4[3]["u"] = 0 //Bottom Left
trianglevertex4[3]["v"] = 1

local centertx5 = 69
local centerty5 = ScrH()-85 --this is the middle y cordinate
local trianglevertex5 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex5[1]["x"] = centertx5
trianglevertex5[1]["y"] = centerty5
trianglevertex5[1]["u"] = 0 //Top Left
trianglevertex5[1]["v"] = 0
 
trianglevertex5[2]["x"] = centertx5 + 20
trianglevertex5[2]["y"] = centerty5 + 20
trianglevertex5[2]["u"] = 1 //Top Right
trianglevertex5[2]["v"] = 0
 
trianglevertex5[3]["x"] = centertx5
trianglevertex5[3]["y"] = centerty5 + 20
trianglevertex5[3]["u"] = 0 //Bottom Left
trianglevertex5[3]["v"] = 1


local centertx6 = 240
local centerty6 = ScrH()-26 --this is the middle y cordinate
local trianglevertex6 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex6[1]["x"] = centertx6
trianglevertex6[1]["y"] = centerty6
trianglevertex6[1]["u"] = 0 //Top Left
trianglevertex6[1]["v"] = 0
 
trianglevertex6[2]["x"] = centertx6 + 10
trianglevertex6[2]["y"] = centerty6
trianglevertex6[2]["u"] = 1 //Top Right
trianglevertex6[2]["v"] = 0
 
trianglevertex6[3]["x"] = centertx6
trianglevertex6[3]["y"] = centerty6 + 10
trianglevertex6[3]["u"] = 0 //Bottom Left
trianglevertex6[3]["v"] = 1

local centertx7 = 239
local centerty7 = ScrH()-25 --this is the middle y cordinate
local trianglevertex7 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex7[1]["x"] = centertx7
trianglevertex7[1]["y"] = centerty7
trianglevertex7[1]["u"] = 0 //Top Left
trianglevertex7[1]["v"] = 0
 
trianglevertex7[2]["x"] = centertx7 + 8
trianglevertex7[2]["y"] = centerty7
trianglevertex7[2]["u"] = 1 //Top Right
trianglevertex7[2]["v"] = 0
 
trianglevertex7[3]["x"] = centertx7
trianglevertex7[3]["y"] = centerty7 + 8
trianglevertex7[3]["u"] = 0 //Bottom Left
trianglevertex7[3]["v"] = 1

local centertx8 = 238
local centerty8 = ScrH()-24 --this is the middle y cordinate
local trianglevertex8 = {{ },{ },{ }} --create the two dimensional table
 
trianglevertex8[1]["x"] = centertx8
trianglevertex8[1]["y"] = centerty8
trianglevertex8[1]["u"] = 0 //Top Left
trianglevertex8[1]["v"] = 0
 
trianglevertex8[2]["x"] = centertx8 + 6
trianglevertex8[2]["y"] = centerty8
trianglevertex8[2]["u"] = 1 //Top Right
trianglevertex8[2]["v"] = 0
 
trianglevertex8[3]["x"] = centertx8
trianglevertex8[3]["y"] = centerty8 + 6
trianglevertex8[3]["u"] = 0 //Bottom Left
trianglevertex8[3]["v"] = 1

local HUD = {}
function HUD:Paint()

	if GetConVar("bhop_no_hud"):GetInt() == 1 then return end
	if LocalPlayer():GetNWBool("SPECTATOR") and !IsValid(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]) then return end
	
	if(!LocalPlayer():IsValid())then return end
	local LerpedTime = 0
	local col = nil
	local LerpedVel = nil
	local vel = nil
	local pb = nil
	
	if LocalPlayer():GetNWBool("SPECTATOR") and IsValid(player.GetByID(LocalPlayer():GetNWInt("Spectating"))) then
		vel = player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetVelocity():Length2D()
		pb = player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetNWInt("Personal_Best")
		LerpedVel = Lerp(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetVelocity():Length2D()/1500, -30, 238)
		col = team.GetColor(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:Team())
		LerpedTime = Lerp((CurTime()-tonumber(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetNWInt("StartTime")))/tonumber(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetNWInt("Personal_Best")), -30, 301)
	else
		vel = LocalPlayer():GetVelocity():Length2D()
		pb = LocalPlayer():GetNWInt("Personal_Best")
		LerpedVel = Lerp(LocalPlayer():GetVelocity():Length2D()/1500, -30, 238)
		col = team.GetColor(LocalPlayer():Team())
		LerpedTime = Lerp((CurTime()-tonumber(LocalPlayer():GetNWInt("StartTime")))/tonumber(LocalPlayer():GetNWInt("Personal_Best")), -30, 301)
	end
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 25, 25, 25, 255)
	surface.DrawRect( 0 , ScrH()-61 , 302, 32 )
	surface.DrawPoly( trianglevertex2 )
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 40, 40, 40, 255)
	surface.DrawRect( 0 , ScrH()-60 , 300, 30 )
	surface.DrawPoly( trianglevertex )
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( col )
	surface.DrawPoly( trianglevertex3 )
	surface.DrawRect( 0 , ScrH()-59 , LerpedTime, 28 )
	centertx3 = LerpedTime-1
	trianglevertex3[1]["x"] = centertx3
	trianglevertex3[2]["x"] = centertx3 + 28
	trianglevertex3[3]["x"] = centertx3
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 25, 25, 25, 255)
	surface.DrawRect( 0 , ScrH()-86 , 70, 22 )
	surface.DrawPoly( trianglevertex4 )
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 40, 40, 40, 255)
	surface.DrawRect( 0 , ScrH()-85 , 70, 20 )
	surface.DrawPoly( trianglevertex5 )
	
	if LocalPlayer():GetNWBool("SPECTATOR") and IsValid(player.GetAll()[LocalPlayer():GetNWInt("Spectating")]) then
		draw.SimpleText(string.ToMinutesSecondsMilliseconds(math.Round(CurTime()-player.GetAll()[LocalPlayer():GetNWInt("Spectating")]:GetNWInt("StartTime"), 2)), "BhopTime", 5, ScrH() - 83, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	elseif CompletedMap then
		draw.SimpleText(string.ToMinutesSecondsMilliseconds(FinishTime), "BhopTime", 5, ScrH() - 83, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	else
		draw.SimpleText(string.ToMinutesSecondsMilliseconds(math.Round(CurTime()-LocalPlayer():GetNWInt("StartTime"), 2)), "BhopTime", 5, ScrH() - 83, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	end
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 25, 25, 25, 255)
	surface.DrawPoly( trianglevertex6 )
	surface.DrawRect( 0 , ScrH()-26 , 240, 10 )
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( 40, 40, 40, 255)
	surface.DrawPoly( trianglevertex7 )
	surface.DrawRect( 0 , ScrH()-25 , 240, 8 )
	
	surface.SetMaterial(Material("vgui/white"))
	surface.SetDrawColor( col )
	
	centertx8 = LerpedVel-1
	trianglevertex8[1]["x"] = centertx8
	trianglevertex8[2]["x"] = centertx8 + 6
	trianglevertex8[3]["x"] = centertx8
	surface.DrawPoly( trianglevertex8 )
	surface.DrawRect( 0 , ScrH()-24 , LerpedVel, 6 )
	
	draw.SimpleText( math.floor(vel), "BhopVel", 250, ScrH() - 28, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	draw.SimpleText(string.ToMinutesSecondsMilliseconds(tonumber(pb)), "BhopPB", 285, ScrH() - 41, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
end
vgui.Register("BHOP_HUD", HUD)
BHOP_HUD = vgui.Create("BHOP_HUD") 
BHOP_HUD:SetSize(ScrW(),ScrH())