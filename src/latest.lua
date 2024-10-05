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
function Script.Functions.CreateClientInfo(Location)
    local Frame = Instance.new("Frame")
    Frame.Name = "NightlyInfo"
    Frame.Parent = Location
    Frame.Position = UDim2.new(0.5, -400, 0.5, 300)
    Frame.Size = UDim2.new(1, 0, 0, 80)
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Frame.BorderMode = Enum.BorderMode.Outline
    Frame.BorderSizePixel = 0
    Frame.LayoutOrder = 2
    Frame.BackgroundTransparency = 0.3
    Frame.ZIndex = 3

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Frame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 12)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Frame
    UICorner.CornerRadius = UDim.new(0, 10)

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = Frame
    UIPadding.PaddingLeft = UDim.new(0, 20)
    UIPadding.PaddingRight = UDim.new(0, 20)

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Name = "PlaceID"
    TextLabel.Parent = Frame
    TextLabel.Size = UDim2.new(0, 225, 1, 0)
    TextLabel.Position = UDim2.new(0.5, -100, 0.5, -40) -- Center the label within the frame
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = "PlaceID: " .. tostring(game.PlaceId)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = false
    TextLabel.TextSize = 14
    TextLabel.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel.Font = Enum.Font.Code -- RobotoMono

    return Frame
end

--<< Initialize >>--
local ClientInfo = Script.Functions.CreateClientInfo(Menu)