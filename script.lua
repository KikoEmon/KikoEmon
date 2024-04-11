
gg.setVisible(true)
gg.alert("⚠️ WARNING ⚠️ \n \nPrivate Script WhooTao New Version!")
gg.toast("WhooTao ch") 

local targetName = [=====[Bounty]=====]
local targetPkg = 'com.bandainamcoent.opbrww'
local targetVersion = [=====['71010']=====]
local targetBuild = 71010
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
if v.versionCode ~= 71010 then
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
------ SCRIPT BY SaikyoMaou ------
'══✧══|| EXIT ||══✧══'},
'ken','══════════✧══════════\n ⟮One Piece Bounty Rush Hack⟯\n══════════✧══════════  \n   ➥ Script by WhooTao ch.\n Date: '..d)

if menu == 1 then bpas() end
if menu == 2 then longlite() end
if menu == 3 then speed() end
if menu == 4 then aura() end
if menu == 5 then multi() end
if menu == 6 then box() end
if menu == 7 then disablejump() end
if menu == 8 then nocd() end
if menu == 9 then keluartod() end
KENN=-1
end

function bpas()
local bypassed = gg.multiChoice({
"➜ Bypass Core [1]", 
"➜ Bypass Core [2]",
"➜ Bypass Core [3]",
"× Back ×",
}, nil, " Bypass Menu: (Aktifkan satu persatu agar tidak bug :D)")

if bypassed[1] == true then bpas1() end
if bypassed[2] == true then bpas2() end
if bypassed[3] == true then bpas3() end
if bypassed[4] == true then Main() end
end

function bpas1()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-788,429,825;964,687,496", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-788,429,825",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(450)
gg.searchNumber("960,535,552;956,341,256", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("960,535,552",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(450)
gg.searchNumber("960,534,528;956,341,256", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("960,534,528",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Protection [1] is Active :3")
end

function bpas2()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-113.230,848;963.600,008", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-113.230,848",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(450)
gg.searchNumber("-133.723,135;963,600,008", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-133.723,135",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(450)
gg.searchNumber("-113,155,072;961,249,280", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-113,155,072",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(450)
gg.searchNumber("-1,861.541,880;961,249,280", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,861.541,880",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Protection [2] is Active :3")
end


function bpas3()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("956,309,160;-698,416,192;956,339,208:177", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-698,416,192",4)
gg.getResults(50)
gg.editAll("-721,215,457", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("956,341,256;-132,182,018:9", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,182,018",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("960,512,264;-132,182,018;960,512,256:121", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,182,018",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("905,970,432;-132,313,098;963,130,056:133", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,313,098",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("958,936,712;-1,447,068,685;960,545,384:81", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,068,685",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,447,068,685;963,146,408:65", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,068,685",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,447,144,459;963,132,008:13", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,144,459",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-132,313,098;963,141,320:17", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,313,098",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,440,807,967;963,142,312:29", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,440,807,967",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,447,144,459;963,143,304:13", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,144,459",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("956,327,945;-132,313,098;963,138,216:29", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,313,098",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.toast("Protection [3] is Active :3")
end


function bpas4()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("956,481,544;-132,182,018;1,031,799,776", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,182,018",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("957,965,000;-1,447,144,459;962,215,592 ", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,144,459",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("956,334,696;960,536,576;962,267,816;922,747,176;958,073,512", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("960,536,576",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("905,965,271;-132,247,564;963,658,376", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,247,564",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,447,144,459;960,944,808", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,144,459",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-132,182,018;963,247,816", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,182,018",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("-1,447,144,459;957,265,576;922,747,464", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,144,459",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("960,837,320;-1,447,068,685;922,747,368", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,068,685",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("960,837,320;-1,447,207,945;922,747,368", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-1,447,207,945",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("956,643,048;-132,313,098;960,767,592;922,747,272", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,313,098",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.searchNumber("956,642,984;-132,247,564;960,768,648", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,247,564",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.sleep(350)
gg.alert("DONE FUCKING DETECTOR VALUE. CREDIT TO: @SaikyoMaou (WhooTao Ch)")
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
gg.searchNumber("-132,313,098;962,683,592:17", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-132,313,098",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("No CD is Active :3️")
end

function offcd()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-698416192;962,683,592", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-698416192",4)
gg.getResults(50)
gg.editAll("-132,313,098", gg.TYPE_DWORD)
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
gg.searchNumber("-65,138,712;963,022,472", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-65,138,712",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
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
gg.searchNumber("-788,397,057;-50,318,360;962,310,792", gg.TYPE_DWORD)
gg.getResults(100)
gg.refineNumber("-788,397,057",4)
gg.getResults(100)
gg.editAll("-698416192", gg.TYPE_DWORD)
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
gg.searchNumber("-788,413,441;-50,324,502;505,421,832;704,709,621", gg.TYPE_DWORD)
gg.getResults(50)
gg.refineNumber("-788,413,441",4)
gg.getResults(50)
gg.editAll("-698416192", gg.TYPE_DWORD)
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
