Citizen.CreateThread(function() 
    while true do   

        Citizen.Wait(0)  

            if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId())) then
            local veh = GetVehiclePedIsTryingToEnter(PlayerPedId())
            local lock = GetVehicleDoorLockStatus(veh)
            local x = math.random(2,2)
                
                if lock == 7 then
                    if x ~= 1 then
                    SetVehicleDoorsLocked(veh, 2)
                    StartVehicleAlarm(veh)
                    else
                    SetVehicleDoorsLocked(veh, 0)
                    StartVehicleAlarm(veh)
                    end
                end     
            local ped = GetPedInVehicleSeat(veh, -1)

                if ped then
                    if x ~= 1 then
                    SetPedCanBeDraggedOut(ped, false)
                    Citizen.Wait(2000)
                    SetPedCanBeDraggedOut(ped, true)
                    else
                    Citizen.Wait(3000)
	
                    end
                end
            end   
    end
end)

