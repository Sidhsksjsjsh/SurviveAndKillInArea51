function getgun(gun)
	local head = game.Players.LocalPlayer.Character.Head
	local part = game:GetService("Workspace").AREA51[gun][gun.. " Giver"]["PUT THE WEAPON IN THIS BRICK"]
	firetouchinterest(part, head, 0)
	wait(0.01)
	firetouchinterest(part, head, 1)
end

function pap(gun)
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(gun)
end


local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local T1 = Window:AddTab("Teleports")
local T2 = Window:AddTab("Guns")
local T3 = Window:AddTab("Pack A Puncher")
local T4 = Window:AddTab("Misc")
local T5 = Window:AddTab("Alien Code Checker")

local codek = T5:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

function noti(LocalTable, text)
	LocalTable:Set(text)
end

function checkcode(code)
	local coderemote = game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("Check Code"):InvokeServer(code)
	if coderemote == true then
		noti(codek, "Correct! " ..code.. " Is The Correct Code!")
	else
		noti(codek, "Incorrect! " ..code.. " Is Not Correct")
	end
end

T2:AddButton("M14", function()
    getgun("M14")
end)

T2:AddButton("MP5K", function()
    getgun("MP5k")
end)

T2:AddButton("M4A1", function()
    getgun("M4A1")
end)

T2:AddButton("R870", function()
    getgun("R870")
end)

T2:AddButton("M16A2/M203", function()
    getgun("M16A2/M203")
end)

T2:AddButton("RayGun", function()
    getgun("RayGun")
end)

T2:AddButton("M1014", function()
    getgun("M1014")
end)

T2:AddButton("M1911", function()
    getgun("M1911")
end)

T2:AddButton("AK-47", function()
    getgun("AK-47")
end)

T2:AddButton("AWP", function()
    getgun("AWP")
end)

T1:AddButton("Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(324, 511, 419)
end)

T1:AddButton("Code Area", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138, 333, 535)
end)

T1:AddButton("Pack a Punch", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(278, 323, 784)
end)

T4:AddButton("Get all guns", function()
    getgun("M14")
	wait(0.4)
	getgun("MP5k")
	wait(0.4)
	getgun("M4A1")
	wait(0.4)
	getgun("R870")
	wait(0.4)
	getgun("M16A2/M203")
	wait(0.4)
	getgun("RayGun")
	wait(0.4)
	getgun("M1014")
	wait(0.4)
	getgun("M1911")
	wait(0.4)
	getgun("AK-47")
	wait(0.4)
	getgun("AWP")
end)

T3:AddButton("M14", function()
    pap("M14")
end)

T3:AddButton("MP5K", function()
    pap("MP5k")
end)

T3:AddButton("M4A1", function()
    pap("M4A1")
end)

T3:AddButton("R870", function()
    pap("R870")
end)

T3:AddButton("M16A2/M203", function()
    pap("M16A2/M203")
end)

T3:AddButton("RayGun", function()
    pap("RayGun")
end)

T3:AddButton("M1014", function()
    pap("M1014")
end)

T3:AddButton("M1911", function()
    pap("M1911")
end)

T3:AddButton("AK-47", function()
    pap("AK-47")
end)

T3:AddButton("AWP", function()
    pap("AWP")
end)

local code

 T5:AddTextBox("Code to check", function(txt)
	code = txt
end)


T3:AddButton("check", function()
    checkcode(code)
end)
