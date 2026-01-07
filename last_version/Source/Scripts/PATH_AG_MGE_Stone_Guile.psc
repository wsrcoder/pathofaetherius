Scriptname PATH_AG_MGE_Stone_Guile extends activemagiceffect  



Float appliedFlatSpeed = 0.0

Event OnEffectStart(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    if akTarget != Game.GetPlayer()
        return
    endif

    ;------------------------------
    ; MAGICKA
    ;------------------------------

    ; Flat aplicado: 10 = 10%
    appliedFlatSpeed = 10.0

    ; Aplicar valores
    akTarget.ModActorValue("SpeedMult", appliedFlatSpeed)

    Debug.Notification("Guile Stone Blessing: +" + Math.Floor(appliedFlatSpeed) + " Speed.")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Remover exatamente o que foi aplicado
    akTarget.ModActorValue("SpeedMult", -appliedFlatSpeed)

    appliedFlatSpeed = 0.0
EndEvent