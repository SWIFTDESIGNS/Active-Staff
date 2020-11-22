--Webhook
local SL = "https://discord.com/api/webhooks/775792720110420000/LAOo2F5caf3gtkQugMmLn9lR7CgL0_gsE-f5Tv405eCV27_91mqj3c1COJYA3xFjz2O9"

PerformHttpRequest(SL, function(err, text, headers) end, 'POST', json.encode({username = "StaffSystem", embeds = active}), { ['Content-Type'] = 'application/json' })

print("^7====================")
print("^1Active Staff System")
print("^7====================")


--Only Edit Below if you know what you are doing.

RegisterServerEvent("StaffA")
AddEventHandler("StaffA", function(reason)
local Script_name = "Active Staff"
local day = os.date("%Y/%m/%d")
local time = os.date("%X")
local status = "Active"
local player = GetPlayerName(source)
local active = {
    {
        ["color"] = "5420608",
        ["title"] = "Staff Logs",
        ["description"] = "StaffMember: **"..player.."**\nIs Now: **"..status.."**\n Time Clocked in: **"..time.."**\n Day:**"..day.."**",
        ["footer"] = {
            ["text"] = Script_name,
        },
    }
}
PerformHttpRequest(SL, function(err, text, headers) end, 'POST', json.encode({username = "StaffSystem", embeds = active}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("StaffO")
AddEventHandler("StaffO", function(reason)
local Script_name = "Active Staff"
local day = os.date("%Y/%m/%d")
local time = os.date("%X")
local status = "Active"
local player = GetPlayerName(source)
local Inactive = {
    {
        ["color"] = "16711680",
        ["title"] = "Staff Logs",
        ["description"] = "StaffMember: **"..player.."**\nIs No longer: **"..status.."**\n Time Clocked Out: **"..time.."**\n Day:**"..day.."**",
        ["footer"] = {
            ["text"] = Script_name,
        },
    }
}
PerformHttpRequest(SL, function(err, text, headers) end, 'POST', json.encode({username = "StaffSystem", embeds = Inactive}), { ['Content-Type'] = 'application/json' })
end)


