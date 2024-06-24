//////////////////////////////////////////////////////////////////////
// OpenTibia - an opensource roleplaying game
//////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//////////////////////////////////////////////////////////////////////
#include "otpch.h"

#include "definitions.h"
#include "vocation.h"
#include <iostream>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <cmath>

#include "tools.h"
#include "player.h"

bool Vocations::loadFromXml(const std::string& datadir)
{
	std::string filename = datadir + "vocations.xml";

	xmlDocPtr doc = xmlParseFile(filename.c_str());
	if(doc){
		xmlNodePtr root, p;
		root = xmlDocGetRootElement(doc);
		
		if(xmlStrcmp(root->name,(const xmlChar*)"vocations") != 0){
			xmlFreeDoc(doc);
			return false;
		}
		
		p = root->children;
		
		while(p){
			std::string str;
			int intVal;
			float floatVal;
			if(xmlStrcmp(p->name, (const xmlChar*)"vocation") == 0){
				Vocation* voc = new Vocation();
				uint32_t voc_id;
				xmlNodePtr skillNode;
				if(readXMLInteger(p, "id", intVal)){
					voc_id = intVal;
					if(readXMLString(p, "name", str)){
						voc->name = str;
					}
					if(readXMLString(p, "description", str)){
						voc->description = str;
					}
					if(readXMLInteger(p, "gaincap", intVal)){
						voc->gainCap = intVal;
					}
					if(readXMLInteger(p, "gainhp", intVal)){
						voc->gainHP = intVal;
					}
					if(readXMLInteger(p, "gainmana", intVal)){
						voc->gainMana = intVal;
					}
					if(readXMLInteger(p, "gainhpticks", intVal)){
						voc->gainHealthTicks = intVal;
					}
					if(readXMLInteger(p, "gainhpamount", intVal)){
						voc->gainHealthAmount = intVal;
					}
					if(readXMLInteger(p, "gainmanaticks", intVal)){
						voc->gainManaTicks = intVal;
					}
					if(readXMLInteger(p, "gainmanaamount", intVal)){
						voc->gainManaAmount = intVal;
					}
					if(readXMLInteger(p, "gainsoulticks", intVal)){
						voc->gainSoulTicks = intVal;
					}
					if(readXMLInteger(p, "gainsoulamount", intVal)){
						voc->gainSoulAmount = intVal;
					}
					if(readXMLInteger(p, "maxsoul", intVal)){
						if(intVal > 255){
							intVal = 255;
						}
						
						voc->soulMax = intVal;
					}
					if(readXMLFloat(p, "manamultiplier", floatVal)){
						voc->manaMultiplier = floatVal;
					}
					if(readXMLInteger(p, "attackspeed", intVal)){
						voc->attackSpeed = intVal;
					}
					if(readXMLInteger(p, "prevoc", intVal)){
						voc->preVocation = intVal;
					}
					if(readXMLInteger(p, "basespeed", intVal)){
						voc->baseSpeed = intVal;
					}
					
					skillNode = p->children;
					while(skillNode){
						if(xmlStrcmp(skillNode->name, (const xmlChar*)"skill") == 0){
							uint32_t skill_id;
							if(readXMLInteger(skillNode, "id", intVal)){
								skill_id = intVal;
								if(skill_id < SKILL_FIRST || skill_id > SKILL_LAST){
									std::cout << "No valid skill id. " << skill_id << std::endl;
								}
								else{
									if(readXMLFloat(skillNode, "multiplier", floatVal)){
										voc->skillMultiplier[skill_id] = floatVal;
									}
								}
							}
							else{
								std::cout << "Missing skill id." << std::endl;
							}
						}
						else if(xmlStrcmp(skillNode->name, (const xmlChar*)"diepercent") == 0){
							if(readXMLInteger(skillNode, "experience", intVal)){
								voc->lostExperience = intVal;
							}
							if(readXMLInteger(skillNode, "magic", intVal)){
								voc->lostMagic = intVal;
							}
							if(readXMLInteger(skillNode, "skill", intVal)){
								voc->lostSkill = intVal;
							}
							if(readXMLInteger(skillNode, "equipment", intVal)){
								voc->lostEquipment = intVal;
							}
							if(readXMLInteger(skillNode, "container", intVal)){
								voc->lostContainer = intVal;
							}
						}
						#ifdef __XID_CVS_MODS__
						else if(xmlStrcmp(skillNode->name, (const xmlChar*)"formula") == 0){
							if(readXMLFloat(skillNode, "damage", floatVal)){
								voc->damageMultiplier = floatVal;
							}
							if(readXMLFloat(skillNode, "defense", floatVal)){
								voc->defenseMultiplier = floatVal;
							}
							if(readXMLFloat(skillNode, "armor", floatVal)){
								voc->armorMultiplier = floatVal;
							}
						}
						#endif
						
						skillNode = skillNode->next;
					}
					
					vocationsMap[voc_id] = voc;
					
				}
				else{
					std::cout << "Missing vocation id." << std::endl;
				}
			}
			p = p->next;
		}
		xmlFreeDoc(doc);
	}
	return true;
}

Vocation* Vocations::getVocation(uint32_t vocId)
{
	VocationsMap::iterator it = vocationsMap.find(vocId);
	if(it != vocationsMap.end()){
		return it->second;
	}
	else{
		std::cout << "Warning: [Vocations::getVocation] Vocation " << vocId << " not found." << std::endl;
		return &def_voc;
	}
}

int32_t Vocations::getVocationId(const std::string& name)
{
	for(VocationsMap::iterator it = vocationsMap.begin(); it != vocationsMap.end(); ++it){
		if(strcasecmp(it->second->name.c_str(), name.c_str()) == 0){
			return it->first;
		}
	}

	return -1;
}

uint32_t Vocation::skillBase[SKILL_LAST + 1] = { 50, 50, 50, 50, 30, 100, 20 };

Vocation::Vocation()
{
	name = "none";
	gainHealthTicks = 6;
	gainHealthAmount = 1;
	gainManaTicks = 6;
	gainManaAmount = 1;
	gainSoulTicks = 15;
	gainSoulAmount = 1;
	gainCap = 5;
	gainMana = 5;
	gainHP = 5;
	soulMax = 100;
	manaMultiplier = 4;
	attackSpeed = 1500;
	preVocation = 0;

	lostExperience = 7;
	lostMagic = 7;
	lostSkill = 7;
	lostEquipment = 7;
	lostContainer = 100;
	
	#ifdef __XID_CVS_MODS__
	damageMultiplier = 1.2;
    defenseMultiplier = 1.1;
   	armorMultiplier = 1.1;
   	#endif
}

Vocation::~Vocation()
{
#ifndef ULTRA_HIGH_LEVEL
	cacheMana.clear();
	for(int i = SKILL_FIRST; i < SKILL_LAST; ++i){
		cacheSkill[i].clear();
	}
#else
	cacheMap::iterator it = cacheMana.begin( );
	while( it != cacheMana.end( ) )
	{
		mpz_clear( it->second.tries );
		cacheMana.erase( it );
		it = cacheMana.begin( );
	}
	for( int i = SKILL_FIRST; i < SKILL_LAST; i++ )
	{
		it = cacheSkill[ i ].begin( );
		while( it != cacheSkill[ i ].end( ) )
		{
			mpz_clear( it->second.tries );
			cacheSkill[ i ].erase( it );
			it = cacheSkill[ i ].begin( );
		}
	}
#endif
}

#ifndef ULTRA_HIGH_LEVEL
uint64_t Vocation::getReqSkillTries(int skill, int level)
{
	if(skill < SKILL_FIRST || skill > SKILL_LAST){
		return 0;
	}
	
	cacheMap& skillMap = cacheSkill[skill];
	cacheMap::iterator it = skillMap.find(level);
	if(it != cacheSkill[skill].end()){
		return it->second;
	}
	uint64_t tries = (uint64_t)skillBase[skill] * (uint64_t)pow((long double)skillMultiplier[skill], (long double)(level - 11));
	skillMap[level] = tries;
	return tries;
}
#else
void Vocation::getReqSkillTries( int skill, uint64_t level, mpz_t &tries )
{
	mpz_init2( tries, BITS_FOR_FIELDS );

	if(skill < SKILL_FIRST || skill > SKILL_LAST || level <= 10){
		mpz_set_ui( tries, 0 );
		return;
	}
	
	cacheMap::iterator it = cacheSkill[ skill ].find( level );
	if( it != cacheSkill[ skill ].end( ) )
	{
		mpz_set( tries, it->second.tries );
	}
	else
	{
		mpz_t _tries;
		mpf_t second;
		mpz_init2( _tries, BITS_FOR_FIELDS );
		mpf_init2( second, BITS_FOR_FIELDS );
		mpf_set_d( second, skillMultiplier[ skill ] );
		mpf_pow_ui( second, second, level - 11 );
		mpz_set_f( _tries, second );
		mpz_mul_ui( _tries, _tries, skillBase[ skill ] );
		CacheSkill _cache;
		mpz_init2( _cache.tries, BITS_FOR_FIELDS );
		mpz_set( _cache.tries, _tries );
		mpz_set( tries, _tries );
		while( cacheSkill[ skill ].size( ) > 25 )
		{
			it = cacheSkill[ skill ].begin( );
			mpz_clear( it->second.tries );
			cacheSkill[ skill ].erase( it );
		}
		cacheSkill[ skill ][ level ] = _cache;
		mpf_clear( second );
		mpz_clear( _tries );
	}
}
#endif

#ifndef ULTRA_HIGH_LEVEL
uint32_t Vocation::getReqMana(int magLevel)
{
	if(magLevel < 0){
		magLevel = 1;
	}
	
	cacheMap::iterator it = cacheMana.find(magLevel);
	if(it != cacheMana.end()){
		return it->second;
	}
	uint32_t reqMana = (unsigned int)(400*pow(manaMultiplier, magLevel-1));
	if (reqMana % 20 < 10)
    	reqMana = reqMana - (reqMana % 20);
	else
    	reqMana = reqMana - (reqMana % 20) + 20;

	cacheMana[magLevel] = reqMana;

	return reqMana;
}
#else
void Vocation::getReqMana(int64_t magLevel, mpz_t &mana)
{
	if( magLevel == 0 )
		magLevel = 1;

	cacheMap::iterator it = cacheMana.find( magLevel );
	if( it != cacheMana.end( ) )
	{
		mpz_init_set( mana, it->second.tries );
		return;
	}

	mpf_t reqMana;
	mpz_t test, rm;

	// init required mana in mpf_t and set it as the manaMultiplier
	mpf_init2( reqMana, BITS_FOR_FIELDS );
	mpf_set_d( reqMana, this->manaMultiplier );
	// set reqMana to reqMana ** ( magLevel - 1 )
	mpf_pow_ui( reqMana, reqMana, (unsigned long)( magLevel - 1 ) );
	// set reqMana to reqMana * 400
	mpf_mul_ui( reqMana, reqMana, 400 );

	// init "test" from reqMana, converting to mpz_t
	mpz_init2( test, BITS_FOR_FIELDS );
	mpz_set_f( test, reqMana );
	// also init "rm" from "test"
	mpz_init_set( rm, test );
	// set test to test % 20
	mpz_mod_ui( test, test, 20 );
	// init "mana" from "test"
	mpz_init_set( mana, test );
	// set mana to rm - mana
	mpz_sub( mana, rm, mana );
	// check if test >= 10
	if( mpz_cmp_ui( test, 10 ) >= 0 )
	{
		// set mana to mana + 20
		mpz_add_ui( mana, mana, 20 );
	}
	// add it to the cache
	CacheSkill _cache;
	mpz_init2( _cache.tries, BITS_FOR_FIELDS );
	mpz_set( _cache.tries, mana );
	while( cacheMana.size( ) > 25 )
	{
		it = cacheMana.begin( );
		mpz_clear( it->second.tries );
		cacheMana.erase( it );
	}
	cacheMana[ magLevel ] = _cache;

	// clear the resources
	mpz_clear( test );
	mpz_clear( rm );
	mpf_clear( reqMana );
}
#endif

int32_t Vocation::getHealthForLv(int32_t level)
{
	int32_t newHealth = 185;
	int32_t newLevel = level - 8;
	
	if(newLevel <= 8){
		newHealth = (level*5) + 150;
	}
	else{
		newHealth += newLevel * gainHP;
	}

	return newHealth;
}

int32_t Vocation::getManaForLv(int32_t level)
{
	int32_t newMana = 35;
	int32_t newLevel = level - 8;
	
	if(newLevel <= 8){
		newMana = (level*5);
	}
	else{
		newMana += newLevel * gainMana;
	}

	return newMana;
}

#ifndef ULTRA_HIGH_LEVEL
int32_t Vocation::getMagicLevelForManaSpent(int32_t manaSpent)
{
	uint32_t magicLevel = 0;
	while(getReqMana(magicLevel) < manaSpent){
		magicLevel++;
	}

	return magicLevel;
}
#else
int64_t Vocation::getMagicLevelForManaSpent(mpz_t manaSpent)
{
	mpz_t reqMana;
	int64_t magicLevel = 0;
	getReqMana( magicLevel, reqMana );
	while(mpz_cmp( reqMana, manaSpent ) < 0){
		magicLevel++;
	}

	return magicLevel;
}
#endif

double Vocation::getCapacityForLv(int32_t level)
{
	int32_t newCapacity = 370;
	int32_t newLevel = level - 8;
	
	if(newLevel <= 8){
		newCapacity = (level*10) + 300;
	}
	else{
		newCapacity += newLevel * gainCap;
	}

	return newCapacity;
}

uint32_t Vocation::getDiePercent(int32_t lostType)
{
	switch(lostType){
		case 1:	return lostExperience;
		case 2: return lostMagic;
		case 3: return lostSkill;
		case 4: return lostEquipment;
		case 5: return lostContainer;
	}
	
	return 0;
}

void Vocation::debugVocation()
{
	/*std::cout << "name: " << name << std::endl;
	std::cout << "gain cap: " << gainCap << " hp: " << gainHP << " mana: " << gainMana << std::endl;
	std::cout << "gain time: Healht(" << gainHealthTicks << " ticks, +" << gainHealthAmount << "). Mana(" << 
		gainManaTicks << " ticks, +" << gainManaAmount << ")" << std::endl;
	std::cout << "mana multiplier: " << manaMultiplier << std::endl;
	for(int i = SKILL_FIRST; i < SKILL_LAST; ++i){
		std::cout << "Skill id: " << i << " multiplier: " << skillMultipliers[i] << std::endl;
	}*/
}
