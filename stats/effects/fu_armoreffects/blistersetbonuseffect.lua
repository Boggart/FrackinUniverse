setName="fu_blisterset"

weaponEffect={}
  
armorBonus={ 
  {stat = "poisonResistance", amount = 0.25},
  {stat = "protoImmunity", amount = 1.0}
  }

require "/stats/effects/fu_armoreffects/setbonuses_common.lua"

function init()
	setSEBonusInit(setName)
	weaponHandle=effect.addStatModifierGroup({})
	armorHandle=effect.addStatModifierGroup(armorBonus)	
end

function update(dt)
	if not checkSetWorn(self.setBonusCheck) then
		effect.expire()
		status.removeEphemeralEffect( "glowpurple" )
	else
		status.addEphemeralEffect( "glowpurple" )
	end	
end

