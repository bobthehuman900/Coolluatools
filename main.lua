math.randomseed(os.time())

function ai()
  print("What is input?")
  local i = tonumber(io.read())
  print("What is bias?")
  local b = tonumber(io.read())
  print("What is weights?")
  local w = tonumber(io.read())
  local result = math.sin((i * w) + b)
  print("Result " .. result)
  back()
end

function back()
  print("Enter anything to leave!")
  io.read()
  home()
end

function home()
  print("Welcome to Cool lua tools! a collection of a lot of lua tools!")
  print("Version: 1.0")
  print("-----")
  print("Enter the programs corresponding number")
  print("1- One neuron AI")
  print("2- 1D Terrain generator")
  print("There will be more projects added later :)")
  local input = io.read()
  if input == "1" then
    ai()
  elseif input == "2" then
    terrain()
  else
    print("ERROR- YELLOW SCREEN OF DEATH. THERE ISNT A YELLOW SCREEN, BUT PRETEND THERE IS ONE.")
    back()
  end
end
  
function terrain()
    local temp = 4
    local supter = ""
    for _ = 1, 10 do
        local change = math.random(-2,2)
        temp = temp + change
        if temp < 0 then
            temp = 0
        end
        if temp > 10 then
            temp = 10
        end
        if temp < 4 then
            ter = "W"
        elseif temp > 6 then
            ter = "G"
        else
            ter = "G"
        end
        supter = supter .. ter
    end
    print("Your terrain!-")
    print(supter)
    back()
end


    
home()
