local randsS = {}
local out = {}
function has_value (tab, val)
    for i, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
  
    return false
  end  
RegisterServerEvent('PACKAGE:random')
AddEventHandler('PACKAGE:random', function(length)
    print('Length: '..length)
    math.randomseed(GetGameTimer())
    local ret = math.random(1, length)
    print('Ret: '..ret)
    if not has_value(randsS, ret) then
        table.insert(randsS, ret)
        TriggerClientEvent('PACKAGE:Sync', -1, randsS, randsC)
        TriggerClientEvent('PACKAGE:ObjectCirc', -1, ret, 0.00, 0.00, 0.00)
        TriggerClientEvent('PACKAGE:Detect', -1)
        print('All events triggered ret: '..ret)
    else 
        TriggerClientEvent('PACKAGE:StoS', -1, 'PACKAGE:random', length)
    end
end)
RegisterServerEvent('PACKAGE:CtoGC')
AddEventHandler('PACKAGE:CtoGC', function(name, args)
TriggerClientEvent(name, -1, args)
print('CtoG/Name: '..name)
print('CtoG/Args: '..args)
end)
RegisterServerEvent('PACKAGE:ObjectSpawn')
AddEventHandler('PACKAGE:ObjectSpawn', function(q, x, y, z)
TriggerClientEvent('PACKAGE:CreateObject', -1, q, x, y, z)

end)
RegisterServerEvent('PACKAGE:SQL/Sync')
AddEventHandler('PACKAGE:SQL/Sync', function()
    local fetchC = MySQL.Sync.fetchAll('SELECT Score FROM Criminal')
     local CriminalScoreS = math.floor(fetchC[#fetchC].Score)
       print(CriminalScoreS)
       local fetchP = MySQL.Sync.fetchAll('SELECT Score FROM Police')
      local PoliceScoreS = math.floor(fetchP[#fetchP].Score)
       print(PoliceScoreS)
       TriggerClientEvent('notifyALL', -1, "~s~Pontok: ~n~~r~Criminal: "..CriminalScoreS.." ~n~~b~Police: "..PoliceScoreS)
       TriggerClientEvent('PACKAGE:Scoresync', -1, PoliceScoreS, CriminalScoreS)
       print('---------------------')
end)

RegisterServerEvent('PACKAGE:SQL/Upload')
AddEventHandler('PACKAGE:SQL/Upload', function(Police, Criminal)
    --MySQL.Async.execute("INSERT INTO Police (Score) VALUES (@SP)", {['@SP'] = Police})
   -- MySQL.Async.execute("INSERT INTO Criminal (Score) VALUES (@CP)", {['@CP'] = Criminal})
local ind = 898
MySQL.Sync.execute("UPDATE Police SET Score=@Score WHERE id=@id", {['@id'] = 898, ['@Score'] = Police})

MySQL.Sync.execute("UPDATE Criminal SET Score=@Score WHERE id=@id", {['@id'] = 898, ['@Score'] = Criminal})

    Wait(100)
    TriggerEvent('PACKAGE:SQL/Sync')
    print('Uploaded with DB')
end)
RegisterServerEvent('PACKAGE:GlobalizeCoords')
AddEventHandler('PACKAGE:GlobalizeCoords', function(q, x, y, z)
TriggerClientEvent('PACKAGE:CreateObject', -1, q, x, y, z)
end)
