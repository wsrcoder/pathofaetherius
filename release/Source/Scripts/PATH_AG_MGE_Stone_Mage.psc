Scriptname PATH_AG_MGE_Stone_Mage extends activemagiceffect  


Float appliedFlatMagicka = 0.0

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

    ; Flat aplicado: 20 + 20 por cada 10 níveis
    appliedFlatMagicka = 20.0 + (Math.Ceiling(akTarget.GetLevel() /10) * 10)

    ; Aplicar valores
    akTarget.ModActorValue("Magicka", appliedFlatMagicka)

    Debug.Notification("Mage Stone Blessing: +" + Math.Floor(appliedFlatMagicka) + " Magicka.")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Remover exatamente o que foi aplicado
    akTarget.ModActorValue("Magicka", -appliedFlatMagicka)

    appliedFlatMagicka = 0.0
EndEvent