RegisterCommand("In", function()

BeginTextCommandThefeedPost("STRING")
AddTextComponentSubstringPlayerName("You Are Now ~g~Active ~r~Staff")
EndTextCommandThefeedPostTicker(true, true)

TriggerServerEvent("StaffA")

Citizen.SetTimeout(3000, function()
    local player = GetPlayerName(playerId)
    TriggerEvent('chat:addMessage', {
        color = {255,0,0},
        multiline = true,
        args = {'[Server]', player.. ' Is now ~g~Active ~r~Staff'}
        })
  end)
  
end)

RegisterCommand("Out", function()

  BeginTextCommandThefeedPost("STRING")
  AddTextComponentSubstringPlayerName("You Are No longer ~r~Active ~r~Staff")
  EndTextCommandThefeedPostTicker(true, true)
  
  TriggerServerEvent("StaffO")
  
  Citizen.SetTimeout(3000, function()
      local player = GetPlayerName(playerId)
      TriggerEvent('chat:addMessage', {
          color = {255,0,0},
          multiline = true,
          args = {'[Server]', player.. ' Is no longer ~r~Active Staff'}
          })
    end)
    
  end)




