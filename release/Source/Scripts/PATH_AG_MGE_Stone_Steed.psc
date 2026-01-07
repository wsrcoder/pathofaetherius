Scriptname PATH_AG_MGE_Stone_Steed extends activemagiceffect  



Float appliedStaminaRegen = 0.0

Event OnEffectStart(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    if akTarget != Game.GetPlayer()
        return
    endif

    ; Percentuais
    Float PercentRegen = 0.20       ; +20% Stamina Regen

    ; Baseline antes de mods
    Float baselineRegen = akTarget.GetBaseActorValue("StaminaRate")

    appliedStaminaRegen = PercentRegen * akTarget.GetBaseActorValue("StaminaRate")

    ; Aplicar modificadores
    akTarget.ModActorValue("StaminaRate", appliedStaminaRegen)

    Debug.Notification("Steed Stone Blessing: +" + Math.Floor(appliedStaminaRegen) + " Stamina regen.")
EndEvent


Event OnEffectFinish(Actor akTarget, Actor akCaster)

    if akTarget == None
        return
    endif

    ; Reverter exatamente o aplicado
    akTarget.ModActorValue("StaminaRate", -appliedStaminaRegen)


    appliedStaminaRegen = 0.0

EndEvent