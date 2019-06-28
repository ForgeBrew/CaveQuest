local FrostEngine
local http = require ("socket.http")
local socket = require ("socket")
local wx = require 'wx'



function sleep (a) 
        local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end 
end

--[[
Print game by FrostLabs
Started project on 3-22-19

Notes: 
Inputing anything other than the games input options will exit the game.

TODO: Integrate with Lua C API
--]]

print('Initializing FrostEngine...')
FrostEngineState = 1
sleep(2)
print('Loading responses...')
sleep(2)
print('Starting game...')
sleep(4)


--Start game
--Declare all items inhand false
haveShard = false
haveSword = false

print('Welcome to Cave Quest v0.0.2')
  sleep(5)

print('You are stuck inside a cave, and need to get weapons and keys to find your way out. What do you do? (go deeper or run)')

firstaction = io.read()

if firstaction == "go deeper" then
  print('...')
    print('You go deeper and find a shard! What do you do? (pick up)')
    secondaction = io.read()
    if secondaction == "pick up" then
    haveShard = true
    print('Do you want to go deeper into the cave? (yes or no)')
    thirdaction = io.read()
    
    if thirdaction == "yes" then
      print('You see a huge sword inside of a rock. Do you try and get the sword? (yes or no)')
      fourthaction = io.read()
      
      if fourthaction == "yes" then
        
        print('You attempt to pry the sword from the stone...')
          sleep(3)

                print('It comes out! You find out the sword can make you faster...')
                  sleep(5)
                print('THE CAVE IS COLLAPSING!!!')
                  sleep(2)
                  print('You drop the shard!')
                print('Quick! What do you do? run or pick up the shard')
                
                finalsceneaction = io.read()
if finalsceneaction == "run" then
  print('You reach incredible speeds racing through the cave trying to get out. Twisting and turning...')
  sleep(5)
  print('A rock falls right in front of you! You just manage to get away...')
            sleep(3)
  print('And escape the cave! Thank you for playing Cave Quest!')
end
--wrong check
  if finalsceneaction == "pick up the shard" then 
    
    print('You go back to pick up the shard...')
    print('...')
    sleep(2)
    print('But a rock falls on you, instantly crushing you. You die.')
    end
  
  --End Credits but first do all else statments
    sleep(3)
    print('Game by FrostLabs')
    sleep(2)
    print('Code: FrostLabs')
    
    

          end
      end
   end
end