repeat
    task.wait()
until game:IsLoaded()

--<< Services >>--
local CoreGui = game:GetService("CoreGui")

--<< Directories >>--
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Menu = RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer

local Script = {
    name = "Nightly",
    build = "Latest",
    Version = "1.0",

    Functions = {},
}

--<< Functions >>--
function Script.Functions.CreateMenuFrame(Location)
    local Frame = Instance.new("Frame")
    Frame.Name = "NightlyFrame"
    Frame.Parent = Location
    Frame.Position = UDim2.new(0.5, -400, 0.5, 300)
    Frame.Size = UDim2.new(1, 0, 0, 80)
    Frame.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
    Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Frame.BorderMode = Enum.BorderMode.Outline
    Frame.BorderSizePixel = 1
    Frame.LayoutOrder = 2
    Frame.BackgroundTransparency = 1
    Frame.ZIndex = 3

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Frame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 12)

    return Frame
end

--<< Initialize >>--
local ClientInfo = Script.Functions.CreateMenuFrame(Menu)