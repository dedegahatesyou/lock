getgenv().techware_aimlock = {
    ["configuracion general"] = {
        -- // general
        -- note: solo podes activar uno no seas gay
        ["modo metametodos"] = true, -- manda las balas a la posicion de la cabeza del otro (no recomendable)
        ["modo manipulacion de camara"] = false, -- te pone primera persona y bloquea tu camara a "lockear_a"
        ["lockear_a"] = "Head", -- el nombre de la parte que se lockea

        -- // configuración del "modo manipulacion de camara"
        ["Y"] = 0, -- lo cuanto que la camara mirara para abajo (ponlo en 0 si no quieres que baje)
        ["sos down"] = true, -- no lo cambies, sos down

        -- // configuración del "modo metametodos"
        ["pornografia"] = 0.230, -- numero el cual se le multiplica a la posicion del "lockear_a" para predecir movimientos
        ["predice_movimientos"] = true, -- se explica por si solo
    },
    ["teclas"] = {
        ["tecla1"] = "Q", -- locka
        ["tecla2"] = "Z", -- desloca
        ["tecla3"] = "K", -- desliga/liga
    },
}

--[[
                                  ███▄,                              ,╓╖╓,
                                   ╙█████░▒▄'                      ▄███▒▓▓╣╣╢╗
                                      ▀▀█████▄,:                  ▐█████████▓▓▓▄
                                          ` █▓░  █╖               ████████▓▄▓▀██
                                            '██▄▄█▓▒╗,             ███████▀▀▀██▀
                                              ▀█████▓▒╢╖            ▀██▄▄░░░░sT
                                                ██████▓╬╢╖          └███░░░░░─
                                                 ▀█████▓╣╣▒╣         ███▄µ▒░░
                                                   ▀████▓▓▓▓╫┐       ,██▀▀
                                                     ████▓▓█▓▌@▓▒▓▒▄@▓█▓µ▌\  ┌╖
                                                      ▐███████▓▓▓▓▓▒▄▌╢╢╣▀▒ ,░░░▒▒∩,,
                                                       ▀███████▓█▓▓╩▒▀█▄▒▒▒▄▒░░░|░▒░░]▒
                                                          ▀████████▓▓▓▒▀███Ñ▓▒░▒░░░░░▒▒▒
                                                           ░`▀██████▓▓▓@▒███▒▒▒▒▀▒¢g▄╢▒░
                                                              ▐█████▓▓▓▓╣▓▒██▌▒▒▒▒▒▒▐███▄
                                                             ░ ██████▓▓▓▓▌Ñ▓▓▀██▄▒╢¼████æ▄
                                                               ▀███████▓███▓▓▓▓█░░░░▀▀▀▀██▄
                                                              ╒█████████▓██▓▓▓▓█▒▒▒▒▒▒▒▒▒░░▄
                                                             ,▓█╣▓██▓▓███████▓▓█▒▒▒╢╢▒▒▒▒▒▒░
                                                            ▄▓█▓▄▓███▓█████████████▄▒╢▓╣▓▓╜
                                                           ▐████▓▓██▓▓▓▓▒▒╢╣╣▒▒▒▀█▀█-└▀▀`
								   zdedega lock
       								    by zdedega
						                    








-- // INFO:
-- silent aim que faz predic do movimento do jogador
-- aimlock que controla a camera quando aponta ao jogador
-- KRNL and SYNAPSE/SCRIPTWARE only
-- tecla1 para lockar
-- tecla2 para deslockar 
-- tecla3 para desativar/ativar o lock
-- // CREDITOS:
-- feito por zdedega/dedega#0001
]]

-- // servicios
local DAHOODPLAYERS = game:GetService("Players")
local thisaudiowasmadebytueniSEXdrip = game:GetService("StarterGui")
local FIVE_NIGHTS_AT_FREDDYS_IS_GOING_TO_BE_REAL_IN_60_SECONDS = game:GetService("RunService")

-- // objetos
local THISAUDIOWASMADEBYDRIZZY = DAHOODPLAYERS.LocalPlayer
local mordida_del_87 = THISAUDIOWASMADEBYDRIZZY:GetMouse()
local camara_de_la_porno = workspace:FindFirstChildOfClass("Camera") -- por si los devs de da hood intentan parchearlo cambiando el nombre de la camara :]

-- // variables
local TECLAS_PARA_BUSCAR_PORNOGRAFIA = techware_aimlock.teclas
local doxxeados_asesinos = getrawmetatable(game)
local dahood = doxxeados_asesinos.__namecall
local drizzy_groomer = {
  ["activado"] = true,
  ["victima_de_grooming"] = nil,
}

-- // evita ejecutar el script si ya se ejecuto antes o el juego no es da hood
if not techware_aimlock["configuracion general"]["sos down"] then 
	thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
	    Title="zDedeGa Lock",
	    Text = "o script se recusa a executar porque você tem o valor de sos down em falso"
	})
    return
end 

if game.PlaceId ~= 2788229376 or TECHWARESILENTAIM_LOADED then
	thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
	    Title="zDedeGa Lock",
	    Text = "O JOGO NÃO E DA HOOD OU O SCRIPT JA ESTA EXECUTANDO ANTES",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
	})
    return
end

if techware_aimlock["configuracion general"]["modo metametodos"] and techware_aimlock["configuracion general"]["modo manipulacion de camara"] then
    thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
	    Title="zDedeGa Lock",
	    Text = "você tem ambos os métodos ativados, ative apenas um e execute novamente.",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
	})
    return
end

getgenv().TECHWARESILENTAIM_LOADED = true

-- // creditos (si de verdad eliminas/editas esto para poner tus creditos, sos la persona mas triste del mundo)
if techware_aimlock["configuracion general"]["modo metametodos"] then
	thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
		Title="zDedeGa Lock",
		Text = "AIMLOCK ATIVADO NO MODO: METATABLAS POSITION SPOOFING\nHECHO POR CUTE_MISAEL sei la q porra é essa",
	        Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
	})
elseif techware_aimlock["configuracion general"]["modo manipulacion de camara"] then 
	thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
		Title="zDedeGa Lock",
		Text = "AIMLOCK ATIVADO NO MODO: MANIPULACION DE CAMARA\nHECHO POR CUTE_MISAEL seila q porra é essa",
	        Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
	})
end 

wait(1.5)

thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
    Title="zDedeGa Lock",
    Text = "APERTE A TECLA "..TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla3.." PARA ATIVAR O ZDEDEGA AIMLOCK",
    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
})
thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
    Title="zDedeGa Lock",
    Text = "APERTE A TECLA "..TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla2.." PARA DESLOCKAR NOS FAVELADO",
    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
})
thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
    Title="zDedeGa Lock",
    Text = "APERTE A TECLA "..TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla1.." PARA LOCKAR NOS POBRE (bota o mouse na pessoa pra loka)",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
})

-- // funciones utiles
function esautista(minino_asesino)
    if DAHOODPLAYERS:GetPlayerFromCharacter(minino_asesino) then
        return true
    else
        return false
    end
end

function matar_y_violar_su_cuerpo_putrefacto_como_haria_kiIIuli(victima)
    return DAHOODPLAYERS:GetPlayerFromCharacter(victima)
end

function groomear(pedofilo,victima,genitales,esmujer,esmenor)
	if pedofilo == "Drizzy" and victima and esmujer and esmenor then
        if techware_aimlock["configuracion general"].predice_movimientos then
            return victima.Character[genitales].Position + victima.Character.UpperTorso.Velocity * techware_aimlock["configuracion general"].pornografia
        else
            return victima.Character[genitales].Position
        end
    end
end

function espedofilo(jugadorDeDH,fdmg)
	if jugadorDeDH == "Drizzy" then
		if tostring(fdmg) == "MainEvent" then
			return true
		end
	end
end

function suicidio(mongolico)
	local feo = mongolico.Character
    feo.Humanoid.Died:Connect(function()
		drizzy_groomer.activado = false
        THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic
        thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
            Title="zDedeGa Lock",
            Text = "tu é mo ruim, morreu e o aimlock desativou",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
        })
    end)
    feo.BodyEffects["K.O"].Changed:Connect(function()
        if feo.BodyEffects["K.O"].Value == true then
            drizzy_groomer.activado = false
            THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic
            thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
                Title="zDedeGa Lock",
                Text = "kk foi deitado ai kid, aperta K pra liga o lock dnv ai pobre",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
            })
        end
    end)
end

function muerte(mongolico)
    local feo = mongolico.Character
	if feo:FindFirstChild("BodyEffects") and feo.BodyEffects:FindFirstChild("K.O") then
		hong_kong = feo.BodyEffects["K.O"].Changed:Connect(function()
			if feo.BodyEffects["K.O"].Value == true and drizzy_pedofilo["victima_de_grooming"] == mongolico then
				drizzy_groomer.activado = false
				drizzy_groomer.victima_de_grooming = nil
				THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic
				thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
					Title="zDedeGa Lock",
					Text = "Mataram o pobre que vc deu lock, lock desativado",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
				})
			end
			hong_kong:Disconnect() -- no queremos lag en el cliente
		end)
	end
	china = feo.Humanoid.Died:Connect(function()
		if drizzy_pedofilo["victima_de_grooming"] == mongolico then
			drizzy_groomer.activado = false
			drizzy_groomer.victima_de_grooming = nil
			THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic
			thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
				Title="zDedeGa Lock",
				Text = "o favelado que vc cravo morreu, ggs ez",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
			})
		end
		china:Disconnect() -- no queremos lag en el cliente
	end)
end

function ir_a_hong_kong(ubicacion_geografica)
	-- esto antes era un Tween, pero decidi cambiarlo a esto de abajo
	-- ya que habian muchos bugs con eso
	-- :]
    camara_de_la_porno.CoordinateFrame = ubicacion_geografica
end

-- // desactivar el aimlock al morir
suicidio(THISAUDIOWASMADEBYDRIZZY)

THISAUDIOWASMADEBYDRIZZY.CharacterAdded:Connect(function(asjfkg)
	repeat wait() until asjfkg:FindFirstChild("Humanoid")
	repeat wait() until asjfkg:FindFirstChild("BodyEffects")
	wait(0.2)
    suicidio(THISAUDIOWASMADEBYDRIZZY)
end)

-- // por si el maricon que estabas lockeando se va
DAHOODPLAYERS.PlayerRemoving:Connect(function(pelotudo)
    if pelotudo == drizzy_groomer["victima_de_grooming"] then
        drizzy_groomer["victima_de_grooming"] = nil
        drizzy_groomer.activado = false
        thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
            Title="zDedeGa Lock",
            Text = "O lgbt q vc atirou kitou, lock desativado",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
        })
    end
end)

-- // conexion
mordida_del_87.KeyDown:Connect(function(AMONGUS)
    if AMONGUS:lower() == TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla1:lower() then
        local genital = mordida_del_87.Target
        if genital then
            local victima_de_grooming = genital.Parent
            if victima_de_grooming:IsA("Accessory") then
                victima_de_grooming = victima_de_grooming.Parent
            elseif victima_de_grooming.Name == "SpecialParts" then
                victima_de_grooming = victima_de_grooming.Parent.Parent
            end
            if victima_de_grooming:FindFirstChild("Humanoid") and esautista(victima_de_grooming) then
                drizzy_groomer.victima_de_grooming = matar_y_violar_su_cuerpo_putrefacto_como_haria_kiIIuli(victima_de_grooming)
                thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
                    Title = "zDedega Lock",
                    Text = "Lockado no pobre chamado: "..victima_de_grooming.Name,
		    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
                })
                if victima_de_grooming:FindFirstChild("BodyEffects") and victima_de_grooming.BodyEffects:FindFirstChild("K.O") then 
					if victima_de_grooming.BodyEffects["K.O"].Value == false then
						muerte(matar_y_violar_su_cuerpo_putrefacto_como_haria_kiIIuli(victima_de_grooming))
					end
                end
           end
        end
    elseif AMONGUS:lower() == TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla2:lower() then
        if drizzy_groomer.victima_de_grooming then
            local anterior_victima = drizzy_groomer.victima_de_grooming
            drizzy_groomer.victima_de_grooming = nil
            thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
                Title = "zDedeGa Lock",
                Text = "Lock desativado em: "..anterior_victima.Name,
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
            })
	    wait(0.3)
	    THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic 
        end
    elseif AMONGUS:lower() == TECLAS_PARA_BUSCAR_PORNOGRAFIA.tecla3:lower() then
        if drizzy_groomer.activado == true then
            drizzy_groomer.activado = false
            thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
                Title = "zDedeGa",
                Text = "Lock desligado",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
            })
            wait(0.3)
            THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.Classic 
        else
            drizzy_groomer.activado = true
            thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
                Title = "zDedeGa Lock",
                Text = "Lock Ligado",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
            })
        end
    end
end)

if techware_aimlock["configuracion general"]["modo metametodos"] then
    -- // momento metamethods
    setreadonly(doxxeados_asesinos,false)
    doxxeados_asesinos.__namecall = newcclosure(function(self,...) 
        local metodos_de_audios_de_dripin = {...}
        local creacion_de_audios_loud = getnamecallmethod()
        if creacion_de_audios_loud == "FireServer" and espedofilo("Drizzy",self) and metodos_de_audios_de_dripin[1] == "UpdateMousePos" and drizzy_groomer.activado and drizzy_groomer["victima_de_grooming"] then 
            metodos_de_audios_de_dripin[2] = groomear("Drizzy",drizzy_groomer["victima_de_grooming"],techware_aimlock["configuracion general"].lockear_a or "Head",true,true)
        end
        return dahood(self,unpack(metodos_de_audios_de_dripin))
    end)
    setreadonly(doxxeados_asesinos,true)
elseif techware_aimlock["configuracion general"]["modo manipulacion de camara"] then
	-- // BindToRenderStep es mas rapido que usar solo RenderStepped
FIVE_NIGHTS_AT_FREDDYS_IS_GOING_TO_BE_REAL_IN_60_SECONDS:BindToRenderStep("HONG KONG",Enum.RenderPriority.First.Value,function()
	local nombre_del_genital = techware_aimlock["configuracion general"].lockear_a
        if drizzy_groomer.activado and drizzy_groomer["victima_de_grooming"] then
		-- esta mierda se ve asi ya que queria que se vea mas organizado :]
            	THISAUDIOWASMADEBYDRIZZY.CameraMode = Enum.CameraMode.LockFirstPerson
            	ir_a_hong_kong(
			CFrame.new(
				camara_de_la_porno.CoordinateFrame.p, 
				CFrame.new(drizzy_groomer["victima_de_grooming"].Character[nombre_del_genital].Position - Vector3.new(0,techware_aimlock["configuracion general"].Y,0)).p 
			)
		)
        end
end)
else
    thisaudiowasmadebytueniSEXdrip:SetCore("SendNotification",{
        Title="zDedeGa",
        Text = "de algum modo, nenhuma das opcoes esta ativada",
	    Icon = "rbxthumb://type=Asset&id=7188921028&w=150&h=150";
    })
    return
end
