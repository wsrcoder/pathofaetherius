Scriptname PATH_AG_MGE_Stone_Tower extends activemagiceffect  


Float appliedDamageResist = 0.0

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
    appliedDamageResist = 20.0 + (Math.Ceiling(akTarget.GetLevel() /10) * 10)

    ; Aplicar valores
    akTarget.ModActorValue("DamageResist", appliedDamageResist)

    Debug.Notification("Tower Stone Blessing: +" + Math.Floor(appliedDamageResist) + " Damage Resist.")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Remover exatamente o que foi aplicado
    akTarget.ModActorValue("DamageResist", -appliedDamageResist)

    appliedDamageResist = 0.0
EndEvent