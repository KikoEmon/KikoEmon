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
gg.sleep(1500)

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
"➜ Bypass Core [2]",
"➜ Block/Anti Report [3]",
"× Back ×",
}, nil, " Bypass Menu: (Aktifkan satu persatu agar tidak bug :D)")

if bypassed[1] == true then bpas1() end
if bypassed[2] == true then bpas2() end
if bypassed[3] == true then bpas3() end
if bypassed[4] == true then Main() end
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
gg.toast("Protection [1] is Active :3")
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
gg.clearResults()
gg.toast("Protection [2] is Active :3")
end


function bpas3()
gg.setRanges(gg.REGION_CODE_APP)
gg.alert("Maintenance, Akan diumumkan jika sudah bisa digunakan")
Main()
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
