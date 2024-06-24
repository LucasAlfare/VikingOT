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
 selfSay('Ola, sou o NPC TUTOR do Viking Server!')
 selfSay('Qual sua duvida por favor?')
end

if string.find(msg, '(%a*)hydra(%a*)') then
 selfSay('Humm hydras podem ser encontradas em porthope, assim como hydra lord.')
end

if string.find(msg, '(%a*)spear(%a*)') then
 selfSay('Cara desse embaxo do dp ate achar o NPC MAYA la tem tudo pra pally.')
end

if string.find(msg, '(%a*)bolt(%a*)') then
 selfSay('Cara desse embaxo do dp ate achar o NPC MAYA la tem tudo pra pally.')
end

if string.find(msg, '(%a*)bow(%a*)') then
 selfSay('Cara desse embaxo do dp ate achar o NPC MAYA la tem tudo pra pally.')
end

if string.find(msg, '(%a*)lag(%a*)') then
 selfSay('O viking server nao tem lag geralmente mas isso depende da quantidade de pessoas online e do que o host do server esta fazendo ou SUA conexao pode tar ruim.')
end

if string.find(msg, '(%a*)runa(%a*)') then
 selfSay('Vc compra qualquer runa no NPC Malak eh so desser ai pra baxo do dp q vc axa.')
end

if string.find(msg, '(%a*)cacar(%a*)') then
 selfSay('Depende qual bixo vc quer cacar?')
end

if string.find(msg, '(%a*)porthope(%a*)') then
 selfSay('Bemm porthope eh uma das ilhas mais velhas do Viking Server la vc encontrara hydras, hydra lord, warlocks e demons..')
end

if string.find(msg, '(%a*)demon(%a*)') then
 selfSay('Bem Demons sao bem fortes recomendados para leveis acima de 100.. eles podem ser encontrados em Edron, porthope e Demona !')
 end

if string.find(msg, '(%a*)premmy(%a*)') then
 selfSay('Cara premmy vc tem q ir no ultimo npc embaxo do dp, ele se chama Johnny.. a premmy é 7k por semana, e para promote q é subir vocacao é 20k pra sempre.')
 end

if string.find(msg, '(%a*)edron(%a*)') then
 selfSay('em Edron vc encontrara varias quests, alem disso Demons, Heros, Draggy, Dls, cyclopis. behemoths, e muito mais.')
 end

if string.find(msg, '(%a*)hero(%a*)') then
 selfSay('Bem HERO vc pode achar em EDRON.')
 end

if string.find(msg, '(%a*)casa(%a*)') then
 selfSay('Casas sao para leveis acima de 100 , caso queira comprar fique na frente da porta da casa e digite !buyhouse.')
 selfSay('Nao esqueca do dinhero no dp semanalmente para o aluguel.')
end

if string.find(msg, '(%a*)warlock(%a*)') then
 selfSay('Hmmmmm, tu pode achar warlocks em Carlin numa cave ao nordeste de Carlin, assim como em edron e em Ab dendriel.')
end

if string.find(msg, '(%a*)trainer(%a*)') then
 selfSay('Cara trainers tem no 3 andar do lado do dp, eh so subir as escadas q tem varios portais, eh o primeiro pra direita la tbm vai pra todos lugares do mapa do Viking Server.')
end

if string.find(msg, '(%a*)treino(%a*)') then
 selfSay('Cara trainers tem no 3 andar do lado do dp, eh so subir as escadas q tem varios portais, eh o primeiro pra direita la tbm vai pra todos lugares do mapa do Viking Server.')
end

if string.find(msg, '(%a*)upo(%a*)') then
 selfSay('Depende, vc quer upar em qual bixo?')
end

if string.find(msg, '(%a*)upa(%a*)') then
 selfSay('Depende, vc quer upar em qual bixo?')
end

if string.find(msg, '(%a*)draggy(%a*)') then
 selfSay('Draggy e Dragon lord tem em ank e edron.. e demona tbm')
end

if string.find(msg, '(%a*)dragon(%a*)') then
 selfSay('Draggy e Dragon lord tem em ank e edron.. e demona tbm')
end

if string.find(msg, '(%a*)ank(%a*)') then
 selfSay('omg. ank tem varios pharos.. dlairs e warlocks e tambem scarabs e ancient scarabs alem de alguns djins.')
end

if string.find(msg, '(%a*)quest(%a*)') then
 selfSay('Ah quests vc q procura... senao perde a graca hehe ou pergunta 1 player.')
end

if string.find(msg, '(%a*)cyclops(%a*)') then
 selfSay('Cyclops podem ser encotrados em Cyclopolis localizada no norte de edron.')
end

if string.find(msg, '(%a*)vsf(%a*)') then
 selfSay('Ai seu filho da puta to te ajudano aqui e tu ainda me xinga vai toma no seu cu')
doPlayerAddHealth(cid,-200)
end


if string.find(msg, '(%a*)fdp(%a*)') then
  selfSay('Ai seu filho da puta to te ajudano aqui e tu ainda me xinga vai toma no seu cu')
doPlayerAddHealth(cid,-200)
end

if string.find(msg, '(%a*)gay(%a*)') then
  selfSay('Ai seu filho da puta to te ajudano aqui e tu ainda me xinga vai toma no seu cu')
doPlayerAddHealth(cid,-200)
end

if string.find(msg, '(%a*)bye(%a*)') then
 selfSay('Volte sempre ' .. creatureGetName(cid) .. '!')
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