local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()
Window
local Window = redzlib:MakeWindow({
  Title = "redz Hub : Blox Fruits",
  SubTitle = "by redz9999",
  SaveFolder = "testando | redz lib v5.lua"
})
Icon
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})p
Tab1:AddDiscordInvite({
    Name = "Name Hub",
    Description = "Join server",
    Logo = "rbxassetid://18751483361",
    Invite = "Link discord invite",
})
local Tab1 = Window:MakeTab({"Um", "cherry"})

  redzlib:SetTheme("Dark")


  redzlib:SetTheme("Darker")

  redzlib:SetTheme("Purple")
Window:SelectTab(Tab1)
Section
local Section = Tab1:AddSection({"Section"})
Paragraph
local Paragraph = Tab1:AddParagraph({"Paragraph", "This is a Paragraph\nSecond Line"})
Dialog
  local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
      {"Confirm", function()
        
      end},
      {"Maybe", function()
        
      end},
      {"Cancel", function()
        
      end}
    }
  })
Button
Tab1:AddButton({"Print", function(Value)
print("Hello World!")
end})
Toggle 1
local Toggle1 = Tab1:AddToggle({
  Name = "Toggle",
  Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
  Default = false 
})
Toggle1:Callback(function(Value)
 
end)
Toggle 2
Tab1:AddToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(v)

    end
})
Sliders
Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  
  end
})
Dropdown
local Dropdown = Tab1:AddDropdown({
  Name = "Players List",
  Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
  Options = {"one", "two", "three"},
  Default = "two",
  Flag = "dropdown teste",
  Callback = function(Value)
    
  end
})
Textbox
Tab1:AddTextBox({
  Name = "Name item",
  Description = "1 Item on 1 Server", 
  PlaceholderText = "item only",
  Callback = function(Value)
    
  end
})
Check script
Image Alt