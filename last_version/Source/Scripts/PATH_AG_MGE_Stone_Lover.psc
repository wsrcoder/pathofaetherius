Scriptname PATH_AG_MGE_Stone_Lover extends activemagiceffect  



Float appliedFlatStamina = 0.0

Event OnEffectStart(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    if akTarget != Game.GetPlayer()
        return
    endif

    ;------------------------------
    ; STAMINA
    ;------------------------------

    ; Flat aplicado: 20 + 20 por cada 10 níveis
    appliedFlatStamina = 20.0 + (Math.Ceiling(akTarget.GetLevel() /10) * 10)

    ; Aplicar valores
    akTarget.ModActorValue("Stamina", appliedFlatStamina)

    Debug.Notification("Lover Stone Blessing: +" + Math.Floor(appliedFlatStamina) + " Stamina.")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Remover exatamente o que foi aplicado
    akTarget.ModActorValue("Stamina", -appliedFlatStamina)

    appliedFlatStamina = 0.0
EndEvent