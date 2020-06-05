local psw = 'PSW'
local Blips = {}
local spawnpoints = {
    --Restart required
    {x = -787.00300000002, y = -405.31499999994, z = 35.195999999996},
{x = -282.14899999998, y = -617.93900000002, z = 32.721000000006},
 {x = -493.14599999994, y = -451.603, z = 33.550000000002},
 {x = -21.756999999998, y = -226.972, z = 45.524999999994},
 {x = 332.16299999994, y = -184.37400000002, z = 57.038},
 {x = 300.90099999996, y = 64.804000000004, z = 99.239000000002},
 {x = 185.25699999998, y = 303.115, z = 104.769},
 {x = 374.36800000002, y = 266.86300000002, z = 102.372},
 {x = 370.02399999998, y = 349.22499999998, z = 102.271},
 {x = 491.22499999998, y = -32.520999999994, z = 77.068999999988},
 {x = -298.36899999994, y = -979.24200000008, z = 30.430999999996},
 {x = 106.13, y = -347.90500000002, z = 41.816000000006},
 {x = -324.03500000004, y = -1338.634, z = 30.696000000004},
 {x = -213.72999999998, y = -1359.721, z = 30.608999999996},
 {x = 23.510999999998, y = -1414.051, z = 28.724000000002},
 {x = 151.99, y = -1546.6490000002, z = 28.491999999998},
 {x = -787.00300000002, y = -405.31499999994, z = 35.195999999996},
 {x = -21.756999999998, y = -226.972, z = 45.524999999994},
 {x = 332.16299999994, y = -184.37400000002, z = 57.038},
 {x = -493.14599999994, y = -451.603, z = 33.550000000002},
 {x = 300.90099999996, y = 64.804000000004, z = 99.239000000002},
 {x = 185.25699999998, y = 303.115, z = 104.769},
 {x = 374.36800000002, y = 266.86300000002, z = 102.372},
 {x = 370.02399999998, y = 349.22499999998, z = 102.271},
 {x = 491.22499999998, y = -32.520999999994, z = 77.068999999988},
 {x = 106.13, y = -347.90500000002, z = 41.816000000006},
 {x = -298.36899999994, y = -979.24200000008, z = 30.430999999996},
 {x = -324.03500000004, y = -1338.634, z = 30.696000000004},
 {x = -213.72999999998, y = -1359.721, z = 30.608999999996},
 {x = 23.510999999998, y = -1414.051, z = 28.724000000002},
 {x = 151.99, y = -1546.6490000002, z = 28.491999999998},
 {x = -282.14899999998, y = -617.93900000002, z = 32.721000000006},
 {x = -794.78570556641, y = -1261.5651855469, z = 10.62328338623},
 {x = 1206.5080566406, y = -3199.4140625, z = 6.0280394554138},
 {x = 1516.5589599609, y = -2127.4106445313, z = 76.443962097168},
 {x = 2774.8522949219, y = -711.57720947266, z = 6.1827282905579},
 {x = 2687.970703125, y = 2873.76171875, z = 36.051296234131},
 {x = 3316.1218261719, y = 5149.9423828125, z = 18.314764022827},
 {x = 713.35980224609, y = 4101.751953125, z = 35.785194396973},
 {x = 90.352104187012, y = 3670.9833984375, z = 39.685768127441},
 {x = 2741.2209472656, y = 1468.9516601563, z = 30.791572570801},
 {x = 1448.8211669922, y = 1110.6960449219, z = 114.33632659912},
 {x = 1261.7510986328, y = 336.10516357422, z = 85.990463256836},
 {x = -75.689025878906, y = 898.85119628906, z = 235.5520324707},
 {x = 1077.5974121094, y = 2296.6623535156, z = 45.504287719727},
 {x = -1167.7478027344, y = 1755.9501953125, z = 154.88696289063},
 {x = -1912.1706542969, y = 2050.9396972656, z = 140.7374420166},
 {x = -2151.0949707031, y = 3407.2106933594, z = 33.34790802002},
 {x = -76.761871337891, y = 1879.5970458984, z = 197.15249633789},
 {x = 1542.5987548828, y = 2199.8452148438, z = 78.662841796875},
 {x = 1733.4714355469, y = 2605.3740234375, z = 45.050350189209},
 {x = -1822.927734375, y = -2814.7739257813, z = 13.944289207458},
 {x = -2275.4697265625, y = 311.06228637695, z = 184.59715270996},
 {x = -3410.6735839844, y = 967.3583984375, z = 8.3330783843994},
 {x = 489.62649536133, y = -3346.5720214844, z = 6.069908618927},
 {x = -451.83843994141, y = -2440.1879882813, z = 6.0007829666138},
 {x = -508.2526550293, y = 5269.775390625, z = 80.61003112793},
 {x = -1169.8259277344, y = 4926.482421875, z = 224.38471984863},
 {x = 2692.6838378906, y = 3476.6689453125, z = 61.525493621826},
 {x = 3438.9653320313, y = 3768.7934570313, z = 30.514209747314},
 {x = 1365.4530029297, y = -578.42193603516, z = 74.380325317383},
 {x = -1810.07421875, y = -1249.2269287109, z = 8.6157836914063},
}
local max = 0
    local CcS = 0
  local PcS = 0
    local policeBase = {  
      {x = -1145.96, y = -848.471, z = 14.27},
      {x = 420.00, y = -1012.00, z = 30.29},
    }
    local criminalBase = {
    {x = 1731.836386407766, y = 3296.4997029035976, z = 41.22},
    {x = 1400.00, y = 3597.00 - 3, z = 34.98},
    {x = -413.00, y = -1715.00, z = 19.42},
    
    }
    local Cowners = {}
    local model = "ba_prop_battle_rsply_crate_02a"
local randsC = {}
local packages = {}

    

function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)  
    DrawNotification(true, false)
  end

  function ind(values, table)
    for k,v in pairs(table) do
       table[v]=k
    end
    return table[values]
    end
    function has_value (tab, val)
        for i, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
      
        return false
      end  
  function hash(obj)
    return GetHashKey(obj)
    end
    function makeBlip(sprite, color, size, title, ent)
        local blip = AddBlipForEntity(ent)
        
                SetBlipSprite(blip, sprite)
                SetBlipColour(blip, color)
                SetBlipDisplay(blip, 6)
                SetBlipScale(blip, size)
                BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(title)
          EndTextCommandSetBlipName(blip)
                table.insert(Blips, blip)
                print('Blips made!')
      end

    
  function chat(txt)
    TriggerEvent('chat:addMessage', {
        args = {txt}
        })
end
function addMarker(x, y, z, typ)
    DrawMarker(typ, x, y, z + 1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 8.0, 8.0, 8.0, 255, 255, 0, 40, false, true, 2, nil, nil, false)
  end
RegisterNetEvent('PACKAGE:Sync')
AddEventHandler('PACKAGE:Sync', function(server, client)
client = server
print('Packages Synced!')
end)
RegisterNetEvent('PACAKGE:StoS')
AddEventHandler('PACAKGE:StoS', function(name, args)
TriggerServerEvent(name, args)
print('StoS/name '..name)
print('StoS/args '..args)

end)

RegisterNetEvent('notifyALL')
AddEventHandler('notifyALL', function(txt)
notify(txt)
end)
 
RegisterNetEvent('PACKAGE:SetMAX')
AddEventHandler('PACKAGE:SetMAX', function(limit)
local max = limit
print('MAX: '..max)
while true do
    Wait(5000)
    print(#packages)
end
end)
RegisterNetEvent('PACKAGE:trigger')
AddEventHandler('PACKAGE:trigger', function(quan)
    TriggerServerEvent('PACKAGE:CtoGC', 'PACKAGE:SetMAX', quan)
    print('Quan: '..quan)

for i = 1, quan do
TriggerServerEvent('PACKAGE:random', #spawnpoints)
print('TriggeredSERVER')
end

end)

RegisterNetEvent('PACKAGE:Scoresync')
AddEventHandler('PACKAGE:Scoresync', function(Police, Criminal)
    CcS = Criminal
    PcS = Police
    print('Synced server with client!')
end)
RegisterNetEvent('PACKAGE:PickedUp')
AddEventHandler('PACKAGE:PickedUp', function(packageID)
TriggerServerEvent('PACKAGE:CtoGC', 'Package:DeleteObject', packageID)
TriggerServerEvent('PACKAGE:CtoGC', 'notifyALL', '~r~Egy csomagot felvettek!')
while true do
    local ped = GetPlayerPed(-1)
    Wait(0)
    addMarker(policeBase[1].x, policeBase[1].y, policeBase[1].z, 1)
    addMarker(policeBase[2].x, policeBase[2].y, policeBase[2].z, 1)
    addMarker(criminalBase[1].x, criminalBase[1].y, criminalBase[1].z, 1)
    addMarker(criminalBase[2].x, criminalBase[2].y, criminalBase[2].z, 1)
    addMarker(criminalBase[3].x, criminalBase[3].y, criminalBase[3].z, 1)
    local ped = GetPlayerPed(-1)
    if IsPedDeadOrDying(ped, 1) then
        local ped = GetPlayerPed(-1)
    Cowners[ind(ped, Cowners)] = nil
    local coords = GetEntityCoords(ped)
    print('Coords: '..coords.x.. ", "..coords.y.. ", "..coords.z)
    TriggerServerEvent('PACKAGE:GlobalizeCoords', 0, coords.x, coords.y, coords.z)
    TriggerServerEvent('PACKAGE:CtoGC', 'notifyALL', '~g~Egy játékos meghalt, és eldobta a csomagját')
    break
    end
    if GetDistanceBetweenCoords(GetEntityCoords(ped), criminalBase[1].x, criminalBase[1].y, criminalBase[1].z, true) < 8 or GetDistanceBetweenCoords(GetEntityCoords(ped), criminalBase[2].x, criminalBase[2].y, criminalBase[2].z, true) < 8 or GetDistanceBetweenCoords(GetEntityCoords(ped), criminalBase[3].x, criminalBase[3].y, criminalBase[3].z, true) < 8 then
        Cowners[ind(ped, Cowners)] = nil
        TriggerServerEvent('PACKAGE:CtoGC', 'notifyALL', '~r~A Criminal oldal leszállított csomagot!')
        CcS = CcS + 1
        TriggerServerEvent('PACKAGE:SQL/Upload', PcS, CcS)
        break
    end
    if GetDistanceBetweenCoords(GetEntityCoords(ped), policeBase[1].x, policeBase[1].y, policeBase[1].z, true) < 8 or GetDistanceBetweenCoords(GetEntityCoords(ped), policeBase[2].x, policeBase[2].y, policeBase[2].z, true) < 8 then
        Cowners[ind(ped, Cowners)] = nil
        TriggerServerEvent('PACKAGE:CtoGC', 'notifyALL', '~b~A  Police oldal leszállított csomagot!')
        PcS = PcS + 1
        TriggerServerEvent('PACKAGE:SQL/Upload', PcS, CcS)
        break
    end
end
end)
RegisterNetEvent('Package:DeleteObject')
AddEventHandler('Package:DeleteObject', function(ID)
    local cc = GetEntityCoords(packages[ID])
    print(cc.x)
    ClearAreaOfObjects(cc.x, cc.y, cc.z, 10, 1)
    print(cc.x)
    print(ind(ID, packages))
    packages[ind(ID, packages)] = nil
    
    DeleteObject(packages[ID])
    

print('Object: Deleted package, ID: '..ID)
end)
RegisterNetEvent('PACKAGE:ObjectCirc')
AddEventHandler('PACKAGE:ObjectCirc', function(r, x, y, z)
TriggerServerEvent('PACKAGE:ObjectSpawn', r, x, y, z)
print('Server hooked back!')
end)
RegisterNetEvent('PACKAGE:Detect')
AddEventHandler('PACKAGE:Detect', function()
while true do 
    local ped = GetPlayerPed(-1)
Wait(0)
for i = 1, #packages do
if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(packages[i]), true) < 2 then
    if not has_value(Cowners, ped) then
        table.insert(Cowners, ped)
        notify('~g~Felvéve!')
        TriggerEvent('PACKAGE:PickedUp', i)
        break
    else
        notify('~r~Nálad már van egy csomag!')
    end
end
end
end

end)
--If seed is 0 then it spawns at the preset location
RegisterNetEvent('PACKAGE:CreateObject')
AddEventHandler('PACKAGE:CreateObject', function(seed, x, y, z)
    TriggerServerEvent('PACKAGE:CtoGC', 'PACKAGE:Cleanup')
    Wait(1000)
    if seed ~= 0 then
        ClearAreaOfObjects(spawnpoints[seed].x, spawnpoints[seed].y, spawnpoints[seed].z, 10, 1)
        packages[#packages + 1] = CreateObject(hash(model), spawnpoints[seed].x, spawnpoints[seed].y, spawnpoints[seed].z, true, true, true)
        PlaceObjectOnGroundProperly(packages[#packages])
        makeBlip(501, 2, 1.00, "Drop", packages[#packages])
        print('Spawned, with seed: '..seed)
        print(#packages)
    
    else
        ClearAreaOfObjects(x, y, z, 10, 1)  
        packages[#packages + 1] = CreateObject(hash(model), x, y, z, true, true, true)
        PlaceObjectOnGroundProperly(packages[#packages])
        makeBlip(501, 2, 1.00, "Drop", packages[#packages])
        print('Spawned, without seed: '..seed)
        print(#packages)
    end
    Wait(1000)
end)
RegisterNetEvent('PACKAGE:Clear')
AddEventHandler('PACKAGE:Clear', function()
for i = 1, #packages do
DeleteObject(packages[i])
end
local Cowners = {}
local randsC = {}
local packages = {}
end)

RegisterCommand('dbg', function(source, args)
    print('Started')
    local ar = args[2]
    if args[1] == psw then
        print(ar)
    TriggerEvent('PACKAGE:trigger', ar)
    print('Triggered')
    else
        chat('Ez egy admin parancs, ne basztassad!')
    end 
    end, false)
    
    RegisterCommand('clr', function(source, args)
        print('Started')
        if args[1] == psw then
            TriggerEvent('PACKAGE:Clear')
            print('Triggered')
            else
                chat('Ez egy admin parancs, ne basztassad!')
            end
    end, false)
RegisterNetEvent('PACKAGE:Cleanup')
AddEventHandler('PACKAGE:Cleanup', function()
    --[[
while true do
    Wait(10000)
    
for i = 1, #packages do
local pack = GetEntityCoords(packages[i])
DeleteObject(packages[i])
packages[i] = CreateObject(hash(model), pack.x, pack.y, pack.z, true, true, true)
makeBlip(501, 2, 1.00, "Drop", packages[i])
end
print('Cleaned up!')
end]]

end)