gg.setVisible(true)
gg.alert("⚠️ WARNING ⚠️ \n \nPrivate Script WhooTao New Version!")
gg.toast("WhooTao ch") 

local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libil2cpp.so')
	for i, v in ipairs(ranges) do
		if v.state == "Xa" then
			startAddress = v.start
			endAddress = ranges[#ranges]['end']
			break
		end
	end
	return startAddress, endAddress
end

local function setHexMemory(libname, offset, hex)
	name(libname)
	local t, total = {}, 0
	for h in string.gmatch(hex, "%S%S") do
	    table.insert(t, {
	        address = startAddress + offset + total,
	        flags = gg.TYPE_BYTE,
	        value = h .. "r"
	    })
	    total = total + 1
	end
	local res = gg.setValues(t)
	if type(res) ~= 'string' then
		return true
	else
		gg.alert(res)
		return false
	end
end

local targetName = [=====[Bounty]=====]
local targetPkg = 'com.bandainamcoent.opbrww'
local targetVersion = [=====['72000']=====]
local targetBuild = 72000
local checkTarget = 3
gg.alert("checking app..")
gg.sleep(500)

local pkg = gg.getTargetInfo()
if pkg.packageName ~= targetPkg then
print("⚠️ Please select Bounty to Process, this process selected to: ", pkg)
os.exit()
else
gg.toast("Checking Version... ")
gg.sleep(2000)
end

local v = gg.getTargetInfo()
if v.versionCode ~= 72000 then
 print('⚠️ Your Bounty version is: ', v.versionCode, ' Please use the right one.')
os.exit()
end

function Main()
local d = os.date()
menu = gg.choice({
'➜ ❲Main Protection❳ Full Core', 
'➜ ❲Long Range❳ Safe', 
'➜ ❲Speed Hack❳ Safe',
'➜ ❲Aura❳ Safe',
'➜ ❲MultiHit❳ Safe',
'➜ ❲Box❳ Must',
'➜ ❲Disable Jump❳ Safe',
'➜ ❲No CD❳ Safe',
'➜ ❲Active Skill Jump❳ Safe',
------ SCRIPT BY SaikyoMaou ------
'══✧══|| EXIT ||══✧══'},
'ken','══════════✧══════════\n ⟮One Piece Bounty Rush Hack⟯\n══════════✧══════════  \n   ➥ Script by WhooTao ch.\n User: @MemoKeTu\n Date: ', d)

if menu == 1 then bpas() end
if menu == 2 then longlite() end
if menu == 3 then speed() end
if menu == 4 then aura() end
if menu == 5 then multi() end
if menu == 6 then box() end
if menu == 7 then disablejump() end
if menu == 8 then nocd() end
if menu == 9 then skilljump() end
if menu == 10 then keluartod() end
KENN=-1
end

function skilljump()
setHexMemory("libil2cpp.so",0x1345E3C,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x13F2DE4,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x14D73E8,"C0 03 5F D6")
setHexMemory("libil2cpp.so",0x14D5F4C,"C0 03 5F D6")
setHexMemory("libil2cpp.so",0x266785C,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x12F6CD0,"C0 03 5F D6")
gg.toast("Always Active Skill Jump: ON")
end

function bpas()
local bypassed = gg.multiChoice({
"➜ Bypass Core [1]", 
"➜ Bypass Core [2] + New Hacks",
"➜ Disable All AntiCheat ToolKit [3]",
"➜ Delete Report [4]",
"➜ Delete Server Logs (Sus Code) [5]",
"× Back ×",
}, nil, " Bypass Menu: ")

if bypassed[1] == true then bpas1() end
if bypassed[2] == true then bpas2() end
if bypassed[3] == true then bpas3() end
if bypassed[4] == true then bpas4() end
if bypassed[5] == true then bpas5() end
if bypassed[6] == true then Main() end
end

function bpas1()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x139B554,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE4C,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE44,"C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE38,"C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139AE30,"C0 03 5F D6")
gg.alert("Protection [1] is Active :3")
end

function bpas2()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x153B6D0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x153B6F0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x153FC7C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x162A13C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x145C7D8,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0xFA523C,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0xFA5244,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x14A90C4,"20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x14A90CC,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x14A90D4,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x14A90DC,"20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139AE1C,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139AE24,"20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139AE58,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x10E7478,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139DC48,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x139DD1C,"00 00 80 D2 C0 03 5F D6")
gg.clearResults()
setHexMemory("libil2cpp.so",0x2AF4E34,"C0 03 5F D6")
setHexMemory("libil2cpp.so",0x2AF4E70,"C0 03 5F D6")
gg.clearResults()
--AllowHDR
setHexMemory("libil2cpp.so",0x2AF4F3C,"20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x2AF4FBC,"20 00 80 D2 C0 03 5F D6")
--Servers
setHexMemory("libil2cpp.so", 0x139B554, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x139AE38, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x139AE44, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x145C7D8, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x145C674, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1380D8C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1380C64, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x153B6D0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1381408, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13812CC, "C0 03 5F D6")
--Errors
setHexMemory("libil2cpp.so", 0x136649C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13664A4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1366994, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x136C4F8, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x136C7EC, "C0 03 5F D6")
--[[TimeOut
setHexMemory("libil2cpp.so", 0x285CEA0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x285D1C4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2855014, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x285D47C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2882E78, "C0 03 5F D6") --]]
--Point
setHexMemory("libil2cpp.so", 0x13CEF00, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x140583C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x144C8F0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14706FC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1229F14, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x122A670, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162A13C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x16298A0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1074268, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x160B320, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x160B3A4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x160B52C, "C0 03 5F D6")
--CheckScoreClass
setHexMemory("libil2cpp.so", 0x162EBFC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162EC24, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162EC28, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162ED64, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162ED6C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x162EDAC, "C0 03 5F D6")
--Unli Aura
setHexMemory("libil2cpp.so", 0xD83704, "00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C94F4, "C0 03 5F D6")
--[[setHexMemory("libil2cpp.so", 0x14C7EE4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14AEEEC, "C0 03 5F D6")--]]
setHexMemory("libil2cpp.so", 0x14AEE44, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14AEE24, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x149F11C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x148A4EC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14249CC, "C0 03 5F D6")
--[[setHexMemory("libil2cpp.so", 0x13B0DB0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13B0D78, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13B0D70, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13B0D68, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13B0CA0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13B0C94, "C0 03 5F D6")--]]
setHexMemory("libil2cpp.so", 0x134F378, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x134F370, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x134F27C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x134F274, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x134DA78, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x134CE90, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1340910, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x13408F0, "C0 03 5F D6")
--perfect
setHexMemory("libil2cpp.so", 0x1522F9C, "20 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1522D48, "20 00 80 D2 C0 03 5F D6")
--[[DisabledAcc
setHexMemory("libil2cpp.so", 0x2B4CAA4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2B7AEFC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2B7AF8C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2B7AF94, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2B7AF9C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2CD4B70, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2A8CA3C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2A8CCF0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2A8CE60, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2A8CE7C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2A8CD20, "C0 03 5F D6")
--
setHexMemory("libil2cpp.so", 0x2B890DC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2892D50, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2897A68, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2D1D76C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x2D1D838, "C0 03 5F D6")
--
setHexMemory("libil2cpp.so", 0x2D1F45C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x115FED0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x115FD60, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x129934C, "C0 03 5F D6")

setHexMemory("libil2cpp.so", 0xEB2900, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0xEB4910, "C0 03 5F D6")--]]
--[[
--InvincibleTest 
setHexMemory("libil2cpp.so", 0x14C7D68, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C7F28, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CB12C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CBE34, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CA1B0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CACF0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CAAAC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C8ED0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C8BEC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C74FC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C75A0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C75B0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C9350, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C947C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C8E5C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CAFD4, "C0 03 5F D6")
--
setHexMemory("libil2cpp.so", 0x14CB028, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14CC0D0, "20 00 80 52") --
setHexMemory("libil2cpp.so", 0x14CC3F4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14F9D28, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14FC298, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14F5630, "20 00 80 52") -- 
setHexMemory("libil2cpp.so", 0x152458C, "C0 03 5F D6") ---

setHexMemory("libil2cpp.so", 0x12B0F2C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C7EA0, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14C7EE4, "C0 03 5F D6")
--
setHexMemory("libil2cpp.so", 0x14F45A8, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14F4E70, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14E9844, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x14E5370, "C0 03 5F D6")--]]
--ReportV2 and Restriction
setHexMemory("libil2cpp.so", 0x29D5C50, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F4E00, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F4E18, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F4E30, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F4E88, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F4EC4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15EA78C, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F17EC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F1BB4, "C0 03 5F D6")
--
setHexMemory("libil2cpp.so", 0x15F1D28, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F2064, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15F8B64, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x15EA78C, "C0 03 5F D6")
--[[
setHexMemory("libil2cpp.so", 0x2C15094, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x27F41DC, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x27FD9C4, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0xF73738, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0xF73848, "C0 03 5F D6")
--ServerLogs
setHexMemory("libil2cpp.so", 0x1385110, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1373A68, "C0 03 5F D6")
gg.alert("Protection [2] Active")--]]
end


function bpas4()
gg.setRanges(gg.REGION_CODE_APP)
-- ReportPenaltyRequest
setHexMemory("libil2cpp.so",0x116F32C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F334,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F33C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F344,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F34C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F354,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F35C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F364,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F5CC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F410,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F690,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F6E8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F760,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F99C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F9A4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x116F9B4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- ReportPenaltyResponse
setHexMemory("libil2cpp.so",0x15EA78C,"00 00 80 D2 C0 03 5F D6")
-- SimContext
setHexMemory("libil2cpp.so",0x15F17EC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x15F1BB4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x15F1D28,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x15F2064,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
gg.alert("Anti Report [4]: Done @SaikyoMaou")
end

function bpas3()
gg.setRanges(gg.REGION_CODE_APP)
-- AtcDetectorBase
setHexMemory("libil2cpp.so",0xD8BCFC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8BE1C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8BE84,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8BFC8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C0C4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C11C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C124,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- InjectionDetector
setHexMemory("libil2cpp.so",0xD8C19C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C410,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C604,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C700,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C7D8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C820,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C434,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C888,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8CA40,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8CA44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8C274,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D1D0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D278,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D404,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D098,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D4E0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D0C4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D550,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8CB2C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D64C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D768,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- ObscuredCheatingDetector
setHexMemory("libil2cpp.so",0xD8D80C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D94C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DC14,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DCEC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DD34,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D96C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD84E68,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DDA8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DF60,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8DF64,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8D8E0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E04C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E05C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E0A4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- SpeedHackDetector
setHexMemory("libil2cpp.so",0xD8E180,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E30C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E500,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E534,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E578,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E698,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E770,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E7B8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E330,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E838,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E9F0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E9F4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8EADC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E260,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8ED6C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8ED88,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8EDD0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8EAE8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8E330,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- TimeCheatingDetector
setHexMemory("libil2cpp.so",0xD8EEAC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F050,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F244,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F34C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F424,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F46C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F074,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F534,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F6EC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F6F0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8EF84,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F7D8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F7EC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F874,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F950,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8F980,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- WallHackDetector
setHexMemory("libil2cpp.so",0xD8FF48,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8FF50,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD918AC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD918B4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91B00,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91B08,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91C7C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91C84,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91DE4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91F80,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92178,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD921C4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD922F4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD923CC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92414,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91FA8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92528,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92818,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9281C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92904,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92A30,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91EC4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92BB8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92C08,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92CAC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD8FFF0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92B44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91610,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91954,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91BA8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD932D4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93340,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD91D24,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD933DC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD917D8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92F94,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93198,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92EE0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD930E4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD929D8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92D88,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD92DE0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- ActRotatorExample
setHexMemory("libil2cpp.so",0xD93BBC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- ActTesterGui
setHexMemory("libil2cpp.so",0xD93C18,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93C8C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93D00,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93D74,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93E0C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93E80,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93EF4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD93FA0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD940E4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9510C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD94160,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD94330,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD94924,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD94C98,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD95198,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD951A4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD951B0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9B39C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9B7A4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9B804,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9BB0C,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0xD9CEF4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- ObscuredPerformanceTests
setHexMemory("libil2cpp.so",0xD9D648,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0xD9D698,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- isCheatRunning
setHexMemory("libil2cpp.so",0x153B6D0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- SpActplayCheatRequest
setHexMemory("libil2cpp.so",0x10ED4B8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED4C0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED4D8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED4E0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED4E8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED4F8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED500,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED768,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10ED5AC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EDC60,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EDCB8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EE0A4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EEFCC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF094,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF09C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF0AC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- SpActplayCheatDisconnectRequest
setHexMemory("libil2cpp.so",0x10EF2FC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF304,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF314,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF31C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF324,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF32C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF33C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF344,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF5B0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF3F0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF6C0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF718,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EF7E8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EFA44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EFBA8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EFBB0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x10EFBC0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
-- Player
setHexMemory("libil2cpp.so",0x139AE30,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE38,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139AE4C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x139B554,"00 00 80 D2 C0 03 5F D6")
-- Score
gg.sleep(2)
setHexMemory("libil2cpp.so",0x153B6F0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x153FC7C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x162A13C,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2) 
-- isSuspend
setHexMemory("libil2cpp.so",0x14AD1C8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x14AEEC0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x14AEECC,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x14CDDC4,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x14CDDD0,"00 00 80 D2 C0 03 5F D6")
-- IsBan 
setHexMemory("libil2cpp.so",0x14CDDB4,"00 00 80 D2 C0 03 5F D6")
-- Disconnect
setHexMemory("libil2cpp.so",0x299AC44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x2B15888,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x2551140,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x29426A0,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x299AC44,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x28DAA80,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x28DAB78,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x28DAD48,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x2AF4918,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x2AF48F0,"00 00 80 D2 C0 03 5F D6")
setHexMemory("libil2cpp.so",0x2B155F8,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x2B15888,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x28F5434,"00 00 80 D2 C0 03 5F D6")
gg.sleep(2)
setHexMemory("libil2cpp.so",0x28FD4F8,"00 00 80 D2 C0 03 5F D6")
gg.alert("Fuck All AntiCheat and Disconnect Problem [3]: Done")
end

function bpas5()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so", 0x1385110, "C0 03 5F D6")
setHexMemory("libil2cpp.so", 0x1373A68, "C0 03 5F D6")
gg.alert('Delete Server Logs [5]: Done')
end

function nocd()
local cdhack = gg.multiChoice({
"[ × ] No CD (On),", 
"[ × ] NO CD (Off)",
"× Back ×",
}, nil, " Nk CD Hack Menu: (visual if u trying to hit enemy with this)")

if cdhack[1] == true then oncd() end
if cdhack[2] == true then offcd() end
if cdhack[3] == true then Main() end
end

function oncd()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x14DDEB8,"00 00 80 D2 C0 03 5F D6")
gg.clearResults()
gg.toast("No CD is Active :3️")
end

function offcd()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x14DDEB8,"F6 0F 1D F8")
gg.clearResults()
gg.toast("No CD is Off :3️")
end

function longlite() 
gg.setRanges(gg.REGION_CODE_APP)
local input = gg.prompt({"Enter Custom Long Range Value: (Backup: 1 & Max: 69)"},
{[1] = "1"}) 
gg.searchNumber('2,139,095,040;2,139,095,040;2,139,095,040;1~69F;1~69F;1~69F;1~69F:37',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll(input[1],gg.TYPE_FLOAT)
gg.toast("Done Set Value To: "..input[1])
end

function speed()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x15240B4,"C0 03 5F D6")
gg.clearResults()
gg.toast("Speed Hack is Active :3️")
end

function aura()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,119,838,208;446,683,104;756,285,440", gg.TYPE_DWORD)
gg.getResults(100)
gg.refineNumber("-1,119,838,208")
gg.getResults(100)
gg.editAll("763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(500)
gg.searchNumber("960,704,512;956,510,216;960,705,536", gg.TYPE_DWORD)
gg.getResults(100)
gg.refineNumber("960,704,512")
gg.getResults(100)
gg.editAll("763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(500)
gg.searchNumber("960,591,872;956,397,576", gg.TYPE_DWORD)
gg.getResults(100)
gg.refineNumber("960,591,872")
gg.getResults(100)
gg.editAll("763363296", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Aura is Active")
end

-- ril: -763363296

function multi()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x14A2D38,"C0 03 5F D6")
setHexMemory("libil2cpp.so",0x134CE90,"C0 03 5F D6")
gg.clearResults()
gg.toast("MultiHit is Active️")
end

function box()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,840,724,975;-788,020,225", gg.TYPE_DWORD)
gg.getResults(100)
gg.refineNumber("1,840,724,975",4)
gg.getResults(100)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Box is Active")
end

function disablejump()
gg.setRanges(gg.REGION_CODE_APP)
setHexMemory("libil2cpp.so",0x1529520,"00 00 80 D2 C0 03 5F D6")
gg.clearResults()
gg.toast("Disable Jump is Active️")
end

function keluartod() 
local ex = gg.alert("Exit Script?", "YES", " NO") 
if ex == 1 then exit() end
if ex == 2 then Main() end
end

function exit() 
gg.setVisible(true)
print("ᴛʜᴀɴᴋ ʏᴏᴜ ᴀʟʟ")
print("Thanks For Subscriber & Member Telegram")
os.exit()
end

cs = 'Oof'
while(true)do
if gg.isVisible(true) then
KENN=1
gg.setVisible(false)
end
gg.clearResults()
if KENN==1 then
Main()
end
end
