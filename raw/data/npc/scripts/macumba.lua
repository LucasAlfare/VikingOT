-- sven, the bewitched bunny
-- it's a sample script, i dont know lua well enough to
-- make some fancy code
-- the good thing is, that this scripts can easily be developed
-- seperately from the main programm
-- perhaps we should write some docu

-- the id of the creature we are attacking, following, etc.

target = 0
following = false
attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end

function onCreatureTurn(creature)

end


function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if string.find(msg, '(%a*)hi(%a*)') then
 selfSay('Pepeo vc quer para eu ler sua mesnte?')
 selfSay('Pepeoooooooo!!')
end

if string.find(msg, '(%a*)sim(%a*)') then
 selfSay('Fasso duas perguntas para ler a mente.')
 selfSay('Seus skils sao bons ou ruins?')
end

if string.find(msg, '(%a*)bons(%a*)') then
 selfSay('Segunda')
 selfSay('Sua net e banda larga ou discada?')
end

if string.find(msg, '(%a*)banda larga(%a*)') then
 selfSay('Hmm, seu futuro sera o seguinte vc vai ter ser muito rico e podera ser o top do serv pq alem dos seus skils serem bons vc tem banda larga')
 selfSay('Boa sorte!')
end

if string.find(msg, '(%a*)discada(%a*)') then
 selfSay('Seu futuro sera o seguinte vc vai lutar muito para tentar ser o top do serv pq vc sofre muito lag.')
 selfSay('Boa sorte!')
end

if string.find(msg, '(%a*)ruins(%a*)') then
 selfSay('Segunda pergunta')
 selfSay('vc e homem, mulher ou [Palavrão Censurado]?')
end

if string.find(msg, '(%a*)homem(%a*)') then
 selfSay('Hmmmmm, vei tu ta orrivel skil ruim e uma [Palavrão Censurado] aposto que vc e pobre seu pobretao vai treina skil.')
 selfSay('Vai treina seu pobretao!')
end

if string.find(msg, '(%a*)mulher(%a*)') then
 selfSay('Hmmmm, gostosona, gata tu ta orrivel treina skill aew depois a gente vamu ali atras daquela moita e craw. Vc vai ter que lutar muito esse e seu futuro.')
 selfSay('Gostosona rebola no meu .PALAVRAO CENSURADO.')
end

if string.find(msg, '(%a*)vsf(%a*)') then
 selfSay('Ai biba amiga seu futuro sera inconsolavel pois nois do Movimento dos Boiola, [Palavrão Censurado] estamos querendo jogar cada veis mais tibia. A seu futuro amiga vc vai ter que treinar muito skill so isso pq ser [Palavrão Censurado] ta na moda.')
 selfSay('Depois vc me conta daquele boff.')
end


if string.find(msg, '(%a*)bye(%a*)') then
 selfSay('Volte sempre, pepeo, ' .. creatureGetName(cid) .. '!')
end

-- Isso eh pra algum npc t vender algo. xD
--if string.find(msg, '(%a*)buy fishing rod(%a*)') then
-- sell(cid,2148,50,2580,1)
--end

end


function onCreatureChangeOutfit(creature)

end


function onThink()
   --nothing special has happened
   --but perhaps we want to do an action?
   if following == true then
      moveToCreature(target)
      return
   end
   if attacking == true then
      dist = getDistanceToCreature(target)
      if dist == nil then
         selfGotoIdle()
         return
      end
      if dist <= 1 then
         selfAttackCreature(target)
      else
         moveToCreature(target)
      end
   end
end 