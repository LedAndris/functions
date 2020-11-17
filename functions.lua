--[[
    Made by: ReincarnatedJesus#7545
]]--
--MANIF:CL
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
--Sends a basic text notification
--Return: nil
function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)  
    DrawNotification(true, false)
  end
  --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
  --Sends an advanced notification, with icons etc
  --Return: nil
  function ADnotify(icon, type, sender, title, text) 
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    SetNotificationMessage(icon, icon, true, type, sender, title, text)
    DrawNotification(false, true)
end
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
  --Finds an elements index in a table
  --Return: integer(index)/nil
  function ind(table, value)
    for k,v in pairs(table) do
       table[v]=k
    end
    return table[value]
    end
    --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
    --Checks if a table contains a value
    --Return: true/false
    function has_value (tab, val)
        for i, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
      
        return false
      end  
      --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Gets the hash key of a string
      --Return: the hash
      function hash(obj)
        return GetHashKey(obj)
        end
        --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
        --Sends a basic white chat message
        --Return: nil
        function chat(txt)
            TriggerEvent('chat:addMessage', {
                args = {txt}
                })
        end
        --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
        --Makes a marker, (has to be in a while loop)
        --Return: nil
        function addMarker(x, y, z, typ, sx, sy, sz, r, g, b, a)
            DrawMarker(typ, x, y, z + 1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, sx, sy, sz, r, g, b, a, false, true, 2, nil, nil, false)
          end
          --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
          --Makes a blip for an entity
          --Return: the blip handle
          function makeENTBlip(sprite, color, size, title, ent)
            local blip = AddBlipForEntity(ent)
            
                    SetBlipSprite(blip, sprite)
                    SetBlipColour(blip, color)
                    SetBlipDisplay(blip, 6)
                    SetBlipScale(blip, size)
                    BeginTextCommandSetBlipName("STRING")
              AddTextComponentString(title)
              EndTextCommandSetBlipName(blip)
                    print('Blips made!')
                    return blip
          end
          --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
          --Adds a blip to a coord
          --Return: the blip handle
          function makeBlip(x, y, z, sprite, color, title)
            local blip = AddBlipForCoord(x, y, z)
                    SetBlipSprite(blip, sprite)
                    SetBlipColour(blip, color)
                    SetBlipDisplay(blip, 6)
                    SetBlipScale(blip, 1.0)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString(title)
                    EndTextCommandSetBlipName(blip)
                    return blip
          end
    --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Sends an advanced chat message
          --Return: nil
          function ADchat(txt, r, g, b, mline, auth)
            TriggerEvent('chat:addMessage', {
                color = {r, g, b},
                multiline = mline,
                args = {auth, txt}
                })
        end
    --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Splits the string at a separator
      --Return: table of strings


        function split (inputstr, sepa)
          sep = sepa or "%s"
         
          local t={}
          for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                  table.insert(t, str)
          end
          return t
  end

   --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Sends a notification to the top left corner of the screen

  function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Gets all identifiers of a player (server side)
      --returns: 
      --[[
        .steam: steam id
        .license: fivem license
        .dsicord: discord id
        it returns more ids but I've never really used those
      ]]
      function GetAllIdentifiers(player)
        local identifiers = {}
        for i = 0, GetNumPlayerIdentifiers(player) - 1 do
            local raw = GetPlayerIdentifier(player, i)
            local source, value = raw:match("^([^:]+):(.+)$")
            if source and value then
                identifiers[source] = value
            end
        end
        return identifiers
    end

--Finds the highest number in a table
    function highest(tbl)
      local ttbl = {}
      for k,v in pairs(tbl) do
      table.insert(ttbl, k)
      end
      local ret = math.max(table.unpack(ttbl))
      return ret
      end
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
--Removes holes from a table
      function remnils(t)
          local ans = {}
          for _,v in pairs(t) do
            ans[ #ans+1 ] = v
          end
          return ans
        end
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--

--Dumps a table (very useful)
        function dump(o)
          if type(o) == 'table' then
             local s = '{ '
             for k,v in pairs(o) do
                if type(k) ~= 'number' then k = '"'..k..'"' end
                s = s .. '['..k..'] = ' .. dump(v) .. ','
             end
             return s .. '} '
          else
             return tostring(o)
          end
       end
       --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
--Cleans a table from annoying nils
function clean(t)
	local ans = {}
	for _,v in pairs(t) do
	  ans[ #ans+1 ] = v
	end
	return ans
  end
     
        --[[
        ####################################################################################################################################################################################################################
        ####################################################################################################################################################################################################################
        ####################################################################################################################################################################################################################
              ]]--
              --Opens a textbox for the player to input something (untested)
              function read()

                DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
                while UpdateOnscreenKeyboard() == 0 do
                    DisableAllControlActions(0);
                    Wait(0);
                end
                if GetOnscreenKeyboardResult() then
                    local result = GetOnscreenKeyboardResult()
                end
                return result
            end


--some api shit for me

            RegisterNetEvent(':Notif')
AddEventHandler(':Notif', function(exc, ico, nm, titl, txt)
  local src = source
  local nm = GetPlayerName(src)
  txt = string.gsub(txt, '/name/', nm)
TriggerClientEvent(':Cl_Notif', -1, exc, ico, nm, titl, txt, name)
print('[:Notif]: Client notif triggered')

end)

--some api shit for me

RegisterNetEvent(':Cl_Notif')
AddEventHandler(':Cl_Notif', function(exc, ico, nm, titl, txt, pn)
if PlayerPedId() ~= exc then
  ADnotify(ico, 0, nm, titl, txt)

end
end)

        --[[
        ####################################################################################################################################################################################################################
        ####################################################################################################################################################################################################################
        ####################################################################################################################################################################################################################
              ]]--
                --Reverses a table
function reverse(tbl)
  local ret = {}
  table.sort(tbl)
  for i=1, #tbl do
     table.insert(ret, tbl[#tbl + 1 - i])
  end
  return ret
  end


       --Draws a text somewhere
  function drawTxt(x, y ,width, height, text, r,g,b,a, font)
    SetTextFont(0) -- 0-4
    SetTextScale(width, height) -- Size of text
    SetTextColour(r, g, b, a) -- RGBA
    SetTextEntry("STRING")
    AddTextComponentString(txt) -- Main Text string
    DrawText(x, y)
    end
--Gets the minimap coords
    function GetMinimapAnchor()
        -- Safezone goes from 1.0 (no gap) to 0.9 (5% gap (1/20))
        -- 0.05 * ((safezone - 0.9) * 10)
        local safezone = GetSafeZoneSize()
        local safezone_x = 1.0 / 20.0
        local safezone_y = 1.0 / 20.0
        local aspect_ratio = GetAspectRatio(0)
        local res_x, res_y = GetActiveScreenResolution()
        local xscale = 1.0 / res_x
        local yscale = 1.0 / res_y
        local Minimap = {}
        Minimap.width = xscale * (res_x / (4 * aspect_ratio))
        Minimap.height = yscale * (res_y / 5.674)
        Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
        Minimap.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
        Minimap.right_x = Minimap.left_x + Minimap.width
        Minimap.top_y = Minimap.bottom_y - Minimap.height
        Minimap.x = Minimap.left_x
        Minimap.y = Minimap.top_y
        Minimap.xunit = xscale
        Minimap.yunit = yscale
        return Minimap
    end

    --completely useless
    function conc(args)
      local subs = {}
      if #args ~= 0 then
        if #args > 1  then
        for k,v in pairs(args) do
        table.insert(subs, v..' ') 
        end
        local str= table.concat(subs)
                print(str)
                return str
        else
            local str = args[1]
                    print(str)
                    return str
        end
        end
    end

--Returns true if a number is even
    function isEven(num)
      if (num % 1 == 0) then
      return true
      else
      return false
      end
      end

      --Checks whether an array contains something or no (wihtout ifs!!)
      function contains(tbl, vl)
        for k,v in pairs(tbl) do
        tbl[v] = true 
        end
        return tbl[vl] or false
        end
        
--converts string, numbers to booleans (actually pretty useful)
        function tobool(str)
          str = tostring(str)
                 local vals = {
                   ['false'] = false,
                   ['true'] = true,
                   ['0'] = true,
                   ['1'] = false
                 }
                 return vals[str] or false
         
                 end
--Checks whether an array contains something or no (wihtout ifs!!, but in an other way) (thank you GlitchDetector <3)
                 function isValueInList(list, value)
                  local function iter(n)
                      return list[n] == value or (n <= #list and iter(n+1) or false)
                  end
                  return iter(1)
              end

--Spawns a vehicle
              function spawncar(vehicleName)
                if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
                      print('Car denied')
                       return
                   end
                       print('Loading car...')
                       RequestModel(vehicleName)
                           while not HasModelLoaded(vehicleName) do
                               Wait(500) 
                           end
                           local pid = PlayerPedId()
                           local vehicle = CreateVehicle(vehicleName, GetEntityCoords(pid), GetEntityHeading(pid), true, true)
                           SetEntityAsNoLongerNeeded(vehicle)
                           print('Spawned vehicle with id: '..vehicle)
               end

--Gets a players id by its name
               function getId(name)
                local names = {}
                local ptable = GetActivePlayers()
                for _, i in ipairs(ptable) do
                names[GetPlayerName(i)] = GetPlayerServerId(i)
                end
                return names[name] or -1
                end
--I have no idea wtf is this 
                function equal(o1, o2)
                  if type(o1) == 'table' and type(o2) == table then
                  local function d(o)
                      if type(o) == 'table' then
                         local s = '{ '
                         for k,v in pairs(o) do
                            if type(k) ~= 'number' then k = '"'..k..'"' end
                            s = s .. '['..k..'] = ' .. d(v) .. ', \n'
                         end
                         return s .. '} '
                      else
                         return tostring(o)
                      end
                   end
                  if d(o1) == d(o2) then
                  return true
                  else
                  return false
                  end
              else
                  if o1 == o2 then
                      return true
                  end
                  return false
                  end
              end
                  --Gets a players id by its fivem license
              function GetIdByLicense(license)
                local players = GetPlayers()
                local ret = {}
                for k,v in pairs(players) do
                ret[srl.GetAllIdentifiers(v).license] = v
                end
                return ret[license] or false
                end
                
--benchmarks a function
                function benchmark(func)
                  local t1 = os.clock() * 1000
                  func()
                  local t2 = math.abs(t1 - os.clock() * 1000)
                  return (string.format('%f', tostring(t2)))
                  end

--vector math distance calculation
                  dist = function(vec1 , vec2, useZ)
                    if useZ then
                    return #(vec1 - vec2)
                    else
                    return #(vec1.xy - vec2.xy)
                    end
                    end
                    function firstToUpper(str)
                      return (str:gsub("^%l", string.upper))
                  end
--This checks the bigger difference between 2 numbers
--Example
--checkBiggerDiff(10, 15, 1, 2) --will return a (first 2 numbers)
                  function checkBiggerDiff(num1_1, num1_2, num2_1, num2_2)
                    local diff = num1_1 - num1_2
                    local diff2 = num2_1 - num2_2
                    if diff > diff2 then
                    return 'b'
                    elseif diff < diff2 then
                    return 'a'
                    else
                    return 'ab'
                    end
                    end

                    --converts a strings first character to uppercase
                    function firstToUpper(str)
                      return (str:gsub("^%l", string.upper))
                  end
                  --gets an array of integers average
                  function avg(numbs)
                    local val = 0
                    for k,v in ipairs(numbs) do
                    val = val + v
                    end
                    local avg = val / #numbs
                    return avg
                    end

                    --SHORTCUTS:
--These are used by me, but you can use it too
                    async = CreateThread
regev = RegisterNetEvent
handle = AddEventHandler
trigger = {}
trigger.sv = TriggerServerEvent
trigger.cl = TriggerClientEvent
trigger.curr = TriggerEvent

--Should I explain this?
function round(num, numOfPlaces)
  numOfPlaces = numOfPlaces or 0
  local result = math.floor(num * 10^numOfPlaces + 0.5) / 10^numOfPlaces
  return numOfPlaces == 0 and math.floor(result) or result
end
--Sets the blips title
function SetBlipTitle(blip, text)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(text)
  EndTextCommandSetBlipName(blip)
end


--Splits a string to words
function tokenize(str)
  local tokens = {}
  for token in str:gmatch("%w+") do tokens[#tokens + 1] = token end
  return tokens
  end