Scriptname PATH_AG_MGE_Stone_Lord extends activemagiceffect  



Float appliedFlatHealth = 0.0

Event OnEffectStart(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    if akTarget != Game.GetPlayer()
        return
    endif

    ;------------------------------
    ; HEALTH
    ;------------------------------

    ; Flat aplicado: 20 + 20 por cada 10 níveis
    appliedFlatHealth = 20.0 + (Math.Ceiling(akTarget.GetLevel() /10) * 10)

    ; Aplicar valores
    akTarget.ModActorValue("Health", appliedFlatHealth)

    Debug.Notification("Lord Stone Blessing: +" + Math.Floor(appliedFlatHealth) + " Health.")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Remover exatamente o que foi aplicado
    akTarget.ModActorValue("Health", -appliedFlatHealth)

    appliedFlatHealth = 0.0
EndEvent