Scriptname PATH_AG_MGE_Stone_Apprentice extends activemagiceffect  


Float appliedMagickaRegen = 0.0

Event OnEffectStart(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    if akTarget != Game.GetPlayer()
        return
    endif

    ; Percentuais
    Float PercentRegen = 0.20       ; +20% MagickaRegen

    ; Baseline antes de mods
    Float baselineRegen = akTarget.GetBaseActorValue("MagickaRate")

    appliedMagickaRegen = PercentRegen * akTarget.GetBaseActorValue("MagickaRate")

    ; Aplicar modificadores
    akTarget.ModActorValue("MagickaRate", appliedMagickaRegen)

    Debug.Notification("Apprentice Stone Blessing: +" + Math.Floor(appliedMagickaRegen) + " Magicka regen.")
EndEvent


Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Reverter exatamente o aplicado
    akTarget.ModActorValue("MagickaRate", -appliedMagickaRegen)


    appliedMagickaRegen = 0.0

EndEvent