local TweenService = game:GetService("TweenService")
local UIAnimator = {}

function UIAnimator.FadeIn(uiElement, duration)
uiElement.Visible = true
uiElement.Transparency = 1
local tween = TweenService:Create(uiElement, TweenInfo.new(duration), {Transparency = 0})
tween:Play()
end

function UIAnimator.Pop(uiElement)
uiElement.Size = UDim2.new(0, 0, 0, 0)
uiElement:TweenSize(UDim2.new(0, 200, 0, 50), "Out", "Back", 0.5)
end

return UIAnimator
