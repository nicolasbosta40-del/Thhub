local Players=game:GetService("Players")
local UIS=game:GetService("UserInputService")
local LP=Players.LocalPlayer
local CG=game:GetService("CoreGui")
local SG=Instance.new("ScreenGui")
SG.ResetOnSpawn=false
SG.IgnoreGuiInset=true
SG.DisplayOrder=9999
SG.Parent=CG
local LoadBG=Instance.new("Frame")
LoadBG.Size=UDim2.new(1,0,1,0)
LoadBG.BackgroundColor3=Color3.fromRGB(10,10,16)
LoadBG.BorderSizePixel=0
LoadBG.ZIndex=99999
LoadBG.Parent=SG
local LoadTitle=Instance.new("TextLabel")
LoadTitle.Size=UDim2.new(0,300,0,50)
LoadTitle.Position=UDim2.new(0.5,-150,0.5,-80)
LoadTitle.BackgroundTransparency=1
LoadTitle.Text="TH HUB"
LoadTitle.TextColor3=Color3.fromRGB(180,160,255)
LoadTitle.Font=Enum.Font.GothamBold
LoadTitle.TextSize=36
LoadTitle.ZIndex=100000
LoadTitle.Parent=LoadBG
local LoadSub=Instance.new("TextLabel")
LoadSub.Size=UDim2.new(0,300,0,30)
LoadSub.Position=UDim2.new(0.5,-150,0.5,-30)
LoadSub.BackgroundTransparency=1
LoadSub.Text="Carregando..."
LoadSub.TextColor3=Color3.fromRGB(120,110,160)
LoadSub.Font=Enum.Font.Gotham
LoadSub.TextSize=16
LoadSub.ZIndex=100000
LoadSub.Parent=LoadBG
local BarBG=Instance.new("Frame")
BarBG.Size=UDim2.new(0,280,0,6)
BarBG.Position=UDim2.new(0.5,-140,0.5,20)
BarBG.BackgroundColor3=Color3.fromRGB(30,28,45)
BarBG.BorderSizePixel=0
BarBG.ZIndex=100000
BarBG.Parent=LoadBG
Instance.new("UICorner",BarBG).CornerRadius=UDim.new(1,0)
local Bar=Instance.new("Frame")
Bar.Size=UDim2.new(0,0,1,0)
Bar.BackgroundColor3=Color3.fromRGB(130,100,230)
Bar.BorderSizePixel=0
Bar.ZIndex=100001
Bar.Parent=BarBG
Instance.new("UICorner",Bar).CornerRadius=UDim.new(1,0)
local LoadVer=Instance.new("TextLabel")
LoadVer.Size=UDim2.new(0,300,0,20)
LoadVer.Position=UDim2.new(0.5,-150,0.5,40)
LoadVer.BackgroundTransparency=1
LoadVer.Text="v1.0 | by TH"
LoadVer.TextColor3=Color3.fromRGB(70,65,100)
LoadVer.Font=Enum.Font.Gotham
LoadVer.TextSize=12
LoadVer.ZIndex=100000
LoadVer.Parent=LoadBG
local steps={"Iniciando...","Carregando GUI...","Conectando jogadores...","Preparando funcoes...","Pronto!"}
for i,txt in ipairs(steps) do
    LoadSub.Text=txt
    local target=i/5
    local cur=(i-1)/5
    for s=1,20 do
        Bar.Size=UDim2.new(cur+(target-cur)*(s/20),0,1,0)
        task.wait(0.04)
    end
end
task.wait(0.3)
LoadBG:Destroy()
local Btn=Instance.new("TextButton")
Btn.Size=UDim2.new(0,160,0,40)
Btn.Position=UDim2.new(0,100,0,150)
Btn.BackgroundColor3=Color3.fromRGB(22,22,32)
Btn.BorderSizePixel=0
Btn.Text=""
Btn.ZIndex=9999
Btn.Parent=SG
Instance.new("UICorner",Btn).CornerRadius=UDim.new(1,0)
local BS=Instance.new("UIStroke",Btn)
BS.Color=Color3.fromRGB(90,70,160)
BS.Thickness=2
local BIco=Instance.new("TextLabel")
BIco.Size=UDim2.new(0,34,1,0)
BIco.Position=UDim2.new(0,8,0,0)
BIco.BackgroundTransparency=1
BIco.Text="✛"
BIco.TextColor3=Color3.fromRGB(180,160,255)
BIco.Font=Enum.Font.GothamBold
BIco.TextSize=18
BIco.ZIndex=10000
BIco.Parent=Btn
local BDiv=Instance.new("Frame")
BDiv.Size=UDim2.new(0,1,0,22)
BDiv.Position=UDim2.new(0,42,0.5,-11)
BDiv.BackgroundColor3=Color3.fromRGB(90,70,160)
BDiv.BorderSizePixel=0
BDiv.ZIndex=10000
BDiv.Parent=Btn
local BTxt=Instance.new("TextLabel")
BTxt.Size=UDim2.new(1,-48,1,0)
BTxt.Position=UDim2.new(0,48,0,0)
BTxt.BackgroundTransparency=1
BTxt.Text="TH HUB"
BTxt.TextColor3=Color3.fromRGB(220,220,240)
BTxt.Font=Enum.Font.GothamBold
BTxt.TextSize=13
BTxt.ZIndex=10000
BTxt.Parent=Btn
local Panel=Instance.new("Frame")
Panel.Size=UDim2.new(0,400,0,500)
Panel.Position=UDim2.new(0,10,0,200)
Panel.BackgroundColor3=Color3.fromRGB(18,18,26)
Panel.BorderSizePixel=0
Panel.Visible=false
Panel.ZIndex=1000
Panel.Parent=SG
Instance.new("UICorner",Panel).CornerRadius=UDim.new(0,10)
local PS=Instance.new("UIStroke",Panel)
PS.Color=Color3.fromRGB(50,45,75)
PS.Thickness=1
local Header=Instance.new("Frame")
Header.Size=UDim2.new(1,0,0,52)
Header.BackgroundColor3=Color3.fromRGB(22,20,32)
Header.BorderSizePixel=0
Header.ZIndex=1001
Header.Parent=Panel
Instance.new("UICorner",Header).CornerRadius=UDim.new(0,10)
local HShield=Instance.new("TextLabel")
HShield.Size=UDim2.new(0,34,0,34)
HShield.Position=UDim2.new(0,10,0.5,-17)
HShield.BackgroundColor3=Color3.fromRGB(50,40,90)
HShield.BorderSizePixel=0
HShield.Text="🛡"
HShield.TextSize=17
HShield.Font=Enum.Font.Gotham
HShield.ZIndex=1002
HShield.Parent=Header
Instance.new("UICorner",HShield).CornerRadius=UDim.new(0,6)
local HTitle=Instance.new("TextLabel")
HTitle.Size=UDim2.new(0,170,0,18)
HTitle.Position=UDim2.new(0,52,0,8)
HTitle.BackgroundTransparency=1
HTitle.Text="TH HUB | ADMIN"
HTitle.TextColor3=Color3.fromRGB(240,240,255)
HTitle.Font=Enum.Font.GothamBold
HTitle.TextSize=13
HTitle.TextXAlignment=Enum.TextXAlignment.Left
HTitle.ZIndex=1002
HTitle.Parent=Header
local HSub=Instance.new("TextLabel")
HSub.Size=UDim2.new(0,170,0,14)
HSub.Position=UDim2.new(0,52,0,28)
HSub.BackgroundTransparency=1
HSub.Text=LP.Name
HSub.TextColor3=Color3.fromRGB(120,110,160)
HSub.Font=Enum.Font.Gotham
HSub.TextSize=11
HSub.TextXAlignment=Enum.TextXAlignment.Left
HSub.ZIndex=1002
HSub.Parent=Header
local MinBtn=Instance.new("TextButton")
MinBtn.Size=UDim2.new(0,24,0,24)
MinBtn.Position=UDim2.new(1,-58,0.5,-12)
MinBtn.BackgroundColor3=Color3.fromRGB(35,32,52)
MinBtn.BorderSizePixel=0
MinBtn.Text="—"
MinBtn.TextColor3=Color3.fromRGB(200,200,220)
MinBtn.Font=Enum.Font.GothamBold
MinBtn.TextSize=13
MinBtn.ZIndex=1002
MinBtn.Parent=Header
Instance.new("UICorner",MinBtn).CornerRadius=UDim.new(0,4)
local CloseBtn=Instance.new("TextButton")
CloseBtn.Size=UDim2.new(0,24,0,24)
CloseBtn.Position=UDim2.new(1,-28,0.5,-12)
CloseBtn.BackgroundColor3=Color3.fromRGB(35,32,52)
CloseBtn.BorderSizePixel=0
CloseBtn.Text="✕"
CloseBtn.TextColor3=Color3.fromRGB(255,70,70)
CloseBtn.Font=Enum.Font.GothamBold
CloseBtn.TextSize=13
CloseBtn.ZIndex=1002
CloseBtn.Parent=Header
Instance.new("UICorner",CloseBtn).CornerRadius=UDim.new(0,4)
local Side=Instance.new("Frame")
Side.Size=UDim2.new(0,82,1,-52)
Side.Position=UDim2.new(0,0,0,52)
Side.BackgroundColor3=Color3.fromRGB(14,13,20)
Side.BorderSizePixel=0
Side.ZIndex=1001
Side.Parent=Panel
local SideLine=Instance.new("Frame")
SideLine.Size=UDim2.new(0,1,1,0)
SideLine.Position=UDim2.new(1,0,0,0)
SideLine.BackgroundColor3=Color3.fromRGB(45,40,70)
SideLine.BorderSizePixel=0
SideLine.ZIndex=1002
SideLine.Parent=Side
local SL=Instance.new("UIListLayout")
SL.SortOrder=Enum.SortOrder.LayoutOrder
SL.Padding=UDim.new(0,2)
SL.Parent=Side
local SP=Instance.new("UIPadding",Side)
SP.PaddingTop=UDim.new(0,10)
SP.PaddingLeft=UDim.new(0,6)
SP.PaddingRight=UDim.new(0,6)
local function mkSide(ico,lbl,order,sel)
    local f=Instance.new("TextButton")
    f.Size=UDim2.new(1,0,0,56)
    f.BackgroundColor3=sel and Color3.fromRGB(30,26,48) or Color3.fromRGB(0,0,0)
    f.BackgroundTransparency=sel and 0 or 1
    f.BorderSizePixel=0
    f.Text=""
    f.LayoutOrder=order
    f.ZIndex=1002
    f.Parent=Side
    Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
    if sel then
        local acc=Instance.new("Frame")
        acc.Size=UDim2.new(0,3,0,28)
        acc.Position=UDim2.new(0,0,0.5,-14)
        acc.BackgroundColor3=Color3.fromRGB(130,100,230)
        acc.BorderSizePixel=0
        acc.ZIndex=1003
        acc.Parent=f
        Instance.new("UICorner",acc).CornerRadius=UDim.new(0,2)
    end
    local ic=Instance.new("TextLabel")
    ic.Size=UDim2.new(1,0,0,24)
    ic.Position=UDim2.new(0,0,0,6)
    ic.BackgroundTransparency=1
    ic.Text=ico
    ic.TextSize=18
    ic.Font=Enum.Font.Gotham
    ic.TextColor3=sel and Color3.fromRGB(160,130,255) or Color3.fromRGB(90,85,115)
    ic.ZIndex=1003
    ic.Parent=f
    local lb=Instance.new("TextLabel")
    lb.Size=UDim2.new(1,0,0,16)
    lb.Position=UDim2.new(0,0,0,30)
    lb.BackgroundTransparency=1
    lb.Text=lbl
    lb.TextSize=9
    lb.Font=Enum.Font.Gotham
    lb.TextColor3=sel and Color3.fromRGB(180,170,220) or Color3.fromRGB(70,65,95)
    lb.ZIndex=1003
    lb.Parent=f
end
mkSide("⚔️","Comandos",1,true)
mkSide("⚡","Commands 2",2,false)
mkSide("📢","Avisos",3,false)
mkSide("👤",LP.Name:sub(1,6),4,false)
local Content=Instance.new("Frame")
Content.Size=UDim2.new(1,-82,1,-52)
Content.Position=UDim2.new(0,82,0,52)
Content.BackgroundTransparency=1
Content.BorderSizePixel=0
Content.ClipsDescendants=true
Content.ZIndex=1001
Content.Parent=Panel
local SelBar=Instance.new("Frame")
SelBar.Size=UDim2.new(1,-14,0,34)
SelBar.Position=UDim2.new(0,7,0,8)
SelBar.BackgroundColor3=Color3.fromRGB(24,22,36)
SelBar.BorderSizePixel=0
SelBar.ZIndex=1002
SelBar.Parent=Content
Instance.new("UICorner",SelBar).CornerRadius=UDim.new(0,6)
local SelStroke=Instance.new("UIStroke",SelBar)
SelStroke.Color=Color3.fromRGB(60,50,95)
SelStroke.Thickness=1
local SelTxt=Instance.new("TextLabel")
SelTxt.Size=UDim2.new(0,105,1,0)
SelTxt.Position=UDim2.new(0,8,0,0)
SelTxt.BackgroundTransparency=1
SelTxt.Text="Selecionar Jogador"
SelTxt.TextColor3=Color3.fromRGB(150,140,190)
SelTxt.Font=Enum.Font.Gotham
SelTxt.TextSize=11
SelTxt.TextXAlignment=Enum.TextXAlignment.Left
SelTxt.ZIndex=1003
SelTxt.Parent=SelBar
local SelNome=Instance.new("TextLabel")
SelNome.Size=UDim2.new(0,95,0,22)
SelNome.Position=UDim2.new(1,-118,0.5,-11)
SelNome.BackgroundColor3=Color3.fromRGB(32,28,50)
SelNome.BorderSizePixel=0
SelNome.Text="—"
SelNome.TextColor3=Color3.fromRGB(180,160,255)
SelNome.Font=Enum.Font.Gotham
SelNome.TextSize=11
SelNome.ZIndex=1003
SelNome.Parent=SelBar
Instance.new("UICorner",SelNome).CornerRadius=UDim.new(0,4)
local ListFrame=Instance.new("Frame")
ListFrame.Size=UDim2.new(1,-14,0,90)
ListFrame.Position=UDim2.new(0,7,0,48)
ListFrame.BackgroundColor3=Color3.fromRGB(20,18,30)
ListFrame.BorderSizePixel=0
ListFrame.ClipsDescendants=true
ListFrame.ZIndex=1002
ListFrame.Parent=Content
Instance.new("UICorner",ListFrame).CornerRadius=UDim.new(0,6)
local Scroll=Instance.new("ScrollingFrame")
Scroll.Size=UDim2.new(1,0,1,0)
Scroll.BackgroundTransparency=1
Scroll.BorderSizePixel=0
Scroll.ScrollBarThickness=3
Scroll.ScrollBarImageColor3=Color3.fromRGB(120,90,200)
Scroll.CanvasSize=UDim2.new(0,0,0,0)
Scroll.ZIndex=1003
Scroll.Parent=ListFrame
local SLayout=Instance.new("UIListLayout")
SLayout.SortOrder=Enum.SortOrder.Name
SLayout.Padding=UDim.new(0,2)
SLayout.Parent=Scroll
local selectedPlayer=""
local function atualizarLista()
    for _,v in ipairs(Scroll:GetChildren()) do
        if v:IsA("TextButton") then v:Destroy() end
    end
    local n=0
    for _,p in ipairs(Players:GetPlayers()) do
        local b=Instance.new("TextButton")
        b.Size=UDim2.new(1,-4,0,26)
        b.BackgroundColor3=Color3.fromRGB(26,24,40)
        b.BorderSizePixel=0
        b.Text="  "..p.Name
        b.TextColor3=Color3.fromRGB(200,195,225)
        b.Font=Enum.Font.Gotham
        b.TextSize=12
        b.TextXAlignment=Enum.TextXAlignment.Left
        b.ZIndex=1004
        b.Parent=Scroll
        Instance.new("UICorner",b).CornerRadius=UDim.new(0,4)
        b.Activated:Connect(function()
            selectedPlayer=p.Name
            SelNome.Text=p.Name
            for _,v2 in ipairs(Scroll:GetChildren()) do
                if v2:IsA("TextButton") then
                    v2.BackgroundColor3=Color3.fromRGB(26,24,40)
                    v2.TextColor3=Color3.fromRGB(200,195,225)
                end
            end
            b.BackgroundColor3=Color3.fromRGB(50,35,90)
            b.TextColor3=Color3.fromRGB(180,155,255)
        end)
        n=n+1
    end
    Scroll.CanvasSize=UDim2.new(0,0,0,n*28)
end
atualizarLista()
Players.PlayerAdded:Connect(atualizarLista)
Players.PlayerRemoving:Connect(atualizarLista)
local SecLbl=Instance.new("TextLabel")
SecLbl.Size=UDim2.new(1,-14,0,20)
SecLbl.Position=UDim2.new(0,7,0,144)
SecLbl.BackgroundTransparency=1
SecLbl.Text="Administracao"
SecLbl.TextColor3=Color3.fromRGB(150,140,190)
SecLbl.Font=Enum.Font.GothamBold
SecLbl.TextSize=12
SecLbl.TextXAlignment=Enum.TextXAlignment.Left
SecLbl.ZIndex=1002
SecLbl.Parent=Content
local CmdScroll=Instance.new("ScrollingFrame")
CmdScroll.Size=UDim2.new(1,-14,1,-172)
CmdScroll.Position=UDim2.new(0,7,0,168)
CmdScroll.BackgroundTransparency=1
CmdScroll.BorderSizePixel=0
CmdScroll.ScrollBarThickness=3
CmdScroll.ScrollBarImageColor3=Color3.fromRGB(120,90,200)
CmdScroll.CanvasSize=UDim2.new(0,0,0,9*54)
CmdScroll.ZIndex=1002
CmdScroll.Parent=Content
local CmdLayout=Instance.new("UIListLayout")
CmdLayout.SortOrder=Enum.SortOrder.LayoutOrder
CmdLayout.Padding=UDim.new(0,5)
CmdLayout.Parent=CmdScroll
local function mkCmd(nome,desc,ico,order)
    local f=Instance.new("TextButton")
    f.Size=UDim2.new(1,-2,0,48)
    f.BackgroundColor3=Color3.fromRGB(22,20,34)
    f.BorderSizePixel=0
    f.Text=""
    f.LayoutOrder=order
    f.ZIndex=1003
    f.Parent=CmdScroll
    Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
    local stroke=Instance.new("UIStroke",f)
    stroke.Color=Color3.fromRGB(44,38,68)
    stroke.Thickness=1
    local t=Instance.new("TextLabel")
    t.Size=UDim2.new(1,-46,0,20)
    t.Position=UDim2.new(0,12,0,5)
    t.BackgroundTransparency=1
    t.Text=nome
    t.TextColor3=Color3.fromRGB(220,215,245)
    t.Font=Enum.Font.GothamBold
    t.TextSize=13
    t.TextXAlignment=Enum.TextXAlignment.Left
    t.ZIndex=1004
    t.Parent=f
    local d=Instance.new("TextLabel")
    d.Size=UDim2.new(1,-46,0,16)
    d.Position=UDim2.new(0,12,0,26)
    d.BackgroundTransparency=1
    d.Text=desc
    d.TextColor3=Color3.fromRGB(100,90,130)
    d.Font=Enum.Font.Gotham
    d.TextSize=10
    d.TextXAlignment=Enum.TextXAlignment.Left
    d.ZIndex=1004
    d.Parent=f
    local ic=Instance.new("TextLabel")
    ic.Size=UDim2.new(0,28,0,28)
    ic.Position=UDim2.new(1,-36,0.5,-14)
    ic.BackgroundColor3=Color3.fromRGB(36,30,58)
    ic.BorderSizePixel=0
    ic.Text=ico
    ic.TextSize=14
    ic.Font=Enum.Font.Gotham
    ic.ZIndex=1004
    ic.Parent=f
    Instance.new("UICorner",ic).CornerRadius=UDim.new(0,6)
    return f
end
local KillBtn=mkCmd("/kill","Mata o jogador","⚔️",1)
local KickBtn=mkCmd("/kick","Tela falsa de expulsao","🚪",2)
local BringBtn=mkCmd("/bring","Traz o jogador ate voce","📍",3)
local TeleBtn=mkCmd("/teleport","Vai ate o jogador","🌀",4)
local JailBtn=mkCmd("/jail","Prende em quadrado","🔒",5)
local UnjailBtn=mkCmd("/unjail","Liberta o jogador","🔓",6)
local FlingBtn=mkCmd("/fling","Arremessa para fora","💨",7)
local FreezeBtn=mkCmd("/freeze","Congela o jogador","❄️",8)
local UnfreezeBtn=mkCmd("/unfreeze","Descongela o jogador","🔥",9)
local Log=Instance.new("TextLabel")
Log.Size=UDim2.new(1,-14,0,20)
Log.Position=UDim2.new(0,7,1,-26)
Log.BackgroundColor3=Color3.fromRGB(14,12,20)
Log.BorderSizePixel=0
Log.Text="[ Aguardando... ]"
Log.TextColor3=Color3.fromRGB(90,80,120)
Log.Font=Enum.Font.Code
Log.TextSize=10
Log.TextXAlignment=Enum.TextXAlignment.Left
Log.ZIndex=1002
Log.Parent=Content
Instance.new("UICorner",Log).CornerRadius=UDim.new(0,4)
Instance.new("UIPadding",Log).PaddingLeft=UDim.new(0,6)
local function setLog(m) Log.Text="> "..m end
local function getTarget()
    if selectedPlayer=="" then setLog("Nenhum jogador selecionado.") return nil end
    local t=Players:FindFirstChild(selectedPlayer)
    if not t then setLog("Jogador nao encontrado.") return nil end
    if not t.Character then setLog("Personagem nao carregado.") return nil end
    return t
end
local jailParts={}
local jailLoop={}
local bringingPlayer=false
local bringingTarget=""
KillBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    local hum=t.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.Health=0 setLog("KILL: "..selectedPlayer)
    else setLog("Humanoid nao encontrado.") end
end)
local function mostrarTelaKickFalsa()
    if selectedPlayer=="" then setLog("Nenhum jogador selecionado.") return end
    local target=Players:FindFirstChild(selectedPlayer)
    if not target then setLog("Jogador nao encontrado.") return end
    local function criarTela(parent)
        local KG=Instance.new("ScreenGui")
        KG.ResetOnSpawn=false
        KG.IgnoreGuiInset=true
        KG.DisplayOrder=99999
        KG.Parent=parent
        local BG=Instance.new("Frame")
        BG.Size=UDim2.new(1,0,1,0)
        BG.BackgroundColor3=Color3.fromRGB(0,0,0)
        BG.BackgroundTransparency=0.5
        BG.BorderSizePixel=0
        BG.ZIndex=10
        BG.Parent=KG
        local Box=Instance.new("Frame")
        Box.Size=UDim2.new(0,340,0,220)
        Box.Position=UDim2.new(0.5,-170,0.5,-110)
        Box.BackgroundColor3=Color3.fromRGB(45,45,45)
        Box.BorderSizePixel=0
        Box.ZIndex=11
        Box.Parent=KG
        Instance.new("UICorner",Box).CornerRadius=UDim.new(0,8)
        local Title=Instance.new("TextLabel")
        Title.Size=UDim2.new(1,0,0,50)
        Title.BackgroundColor3=Color3.fromRGB(55,55,55)
        Title.BorderSizePixel=0
        Title.Text="Desconectado"
        Title.TextColor3=Color3.fromRGB(255,255,255)
        Title.Font=Enum.Font.GothamBold
        Title.TextSize=18
        Title.ZIndex=12
        Title.Parent=Box
        Instance.new("UICorner",Title).CornerRadius=UDim.new(0,8)
        local Line=Instance.new("Frame")
        Line.Size=UDim2.new(1,0,0,1)
        Line.Position=UDim2.new(0,0,0,50)
        Line.BackgroundColor3=Color3.fromRGB(80,80,80)
        Line.BorderSizePixel=0
        Line.ZIndex=12
        Line.Parent=Box
        local Msg1=Instance.new("TextLabel")
        Msg1.Size=UDim2.new(1,-20,0,50)
        Msg1.Position=UDim2.new(0,10,0,60)
        Msg1.BackgroundTransparency=1
        Msg1.Text="Voce foi expulso por esta experiencia ou seus moderadores. Mensagem da moderacao:"
        Msg1.TextColor3=Color3.fromRGB(200,200,200)
        Msg1.Font=Enum.Font.Gotham
        Msg1.TextSize=13
        Msg1.TextWrapped=true
        Msg1.ZIndex=12
        Msg1.Parent=Box
        local Msg2=Instance.new("TextLabel")
        Msg2.Size=UDim2.new(1,-20,0,40)
        Msg2.Position=UDim2.new(0,10,0,118)
        Msg2.BackgroundTransparency=1
        Msg2.Text="Voce foi banido pelo painel TH HUB"
        Msg2.TextColor3=Color3.fromRGB(255,200,0)
        Msg2.Font=Enum.Font.Gotham
        Msg2.TextSize=13
        Msg2.TextWrapped=true
        Msg2.ZIndex=12
        Msg2.Parent=Box
        local SB=Instance.new("TextButton")
        SB.Size=UDim2.new(1,-20,0,44)
        SB.Position=UDim2.new(0,10,1,-54)
        SB.BackgroundColor3=Color3.fromRGB(255,255,255)
        SB.BorderSizePixel=0
        SB.Text="Sair"
        SB.TextColor3=Color3.fromRGB(0,0,0)
        SB.Font=Enum.Font.GothamBold
        SB.TextSize=15
        SB.ZIndex=12
        SB.Parent=Box
        Instance.new("UICorner",SB).CornerRadius=UDim.new(0,8)
        SB.Activated:Connect(function()
            game:GetService("TeleportService"):Teleport(game.PlaceId,Players.LocalPlayer)
        end)
    end
    pcall(function() criarTela(target.PlayerGui) end)
    pcall(function() criarTela(target:WaitForChild("PlayerGui",1)) end)
    setLog("FAKE KICK: "..selectedPlayer)
end
KickBtn.Activated:Connect(mostrarTelaKickFalsa)
BringBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    local myR=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
    local tR=t.Character:FindFirstChild("HumanoidRootPart")
    if not myR or not tR then return end
    if bringingPlayer and bringingTarget==selectedPlayer then
        bringingPlayer=false
        bringingTarget=""
        setLog("BRING parado: "..selectedPlayer)
        return
    end
    bringingPlayer=true
    bringingTarget=selectedPlayer
    local fixedCFrame=myR.CFrame+myR.CFrame.LookVector*3
    setLog("BRING ativo: "..selectedPlayer)
    task.spawn(function()
        while bringingPlayer and bringingTarget==selectedPlayer do
            local tgt=Players:FindFirstChild(bringingTarget)
            if tgt and tgt.Character then
                local r=tgt.Character:FindFirstChild("HumanoidRootPart")
                if r then r.CFrame=fixedCFrame end
            else
                bringingPlayer=false
            end
            task.wait(0.05)
        end
    end)
end)
TeleBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    local myR=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
    local tR=t.Character:FindFirstChild("HumanoidRootPart")
    if myR and tR then myR.CFrame=tR.CFrame+tR.CFrame.LookVector*3 setLog("TELEPORT: "..selectedPlayer) end
end)
JailBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    local root=t.Character:FindFirstChild("HumanoidRootPart")
    if not root then setLog("Root nao encontrado.") return end
    if jailParts[selectedPlayer] then
        for _,p in ipairs(jailParts[selectedPlayer]) do p:Destroy() end
    end
    jailParts[selectedPlayer]={}
    local s,th=6,0.3
    local pos=root.Position
    local jailCenter=pos
    local function wall(cf,sz)
        local p=Instance.new("Part")
        p.Size=sz p.CFrame=cf p.Anchored=true p.CanCollide=true
        p.BrickColor=BrickColor.new("Bright red")
        p.Material=Enum.Material.Neon p.Transparency=0.5 p.Parent=workspace
        table.insert(jailParts[selectedPlayer],p)
    end
    local c=CFrame.new(pos)
    wall(c*CFrame.new(0,s/2,-s/2),Vector3.new(s,s,th))
    wall(c*CFrame.new(0,s/2,s/2),Vector3.new(s,s,th))
    wall(c*CFrame.new(-s/2,s/2,0),Vector3.new(th,s,s))
    wall(c*CFrame.new(s/2,s/2,0),Vector3.new(th,s,s))
    wall(c*CFrame.new(0,s,0),Vector3.new(s,th,s))
    jailLoop[selectedPlayer]=true
    local loopTarget=selectedPlayer
    task.spawn(function()
        while jailLoop[loopTarget] do
            local tgt=Players:FindFirstChild(loopTarget)
            if tgt and tgt.Character then
                local r=tgt.Character:FindFirstChild("HumanoidRootPart")
                if r then
                    local dist=(r.Position-jailCenter).Magnitude
                    if dist>s/2 then
                        r.CFrame=CFrame.new(jailCenter+Vector3.new(0,2,0))
                    end
                end
            else
                jailLoop[loopTarget]=false
            end
            task.wait(0.1)
        end
    end)
    setLog("JAIL: "..selectedPlayer)
end)
UnjailBtn.Activated:Connect(function()
    if selectedPlayer=="" then setLog("Nenhum jogador selecionado.") return end
    jailLoop[selectedPlayer]=false
    if jailParts[selectedPlayer] then
        for _,p in ipairs(jailParts[selectedPlayer]) do p:Destroy() end
        jailParts[selectedPlayer]=nil setLog("UNJAIL: "..selectedPlayer)
    else setLog(selectedPlayer.." nao esta preso.") end
end)
FlingBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    local root=t.Character:FindFirstChild("HumanoidRootPart") if not root then return end
    local hum=t.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.PlatformStand=true end
    local bv=Instance.new("BodyVelocity")
    bv.Velocity=Vector3.new(math.random(-500,500),1000,math.random(-500,500))
    bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
    bv.Parent=root
    local bg=Instance.new("BodyAngularVelocity")
    bg.AngularVelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    bg.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)
    bg.Parent=root
    task.delay(0.3,function() if bv and bv.Parent then bv:Destroy() end end)
    task.delay(0.5,function() if bg and bg.Parent then bg:Destroy() end end)
    task.delay(3,function()
        if t and t.Character then
            local h=t.Character:FindFirstChildOfClass("Humanoid")
            if h then h.Health=0 end
        end
    end)
    setLog("FLING: "..selectedPlayer)
end)
FreezeBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    for _,p in ipairs(t.Character:GetDescendants()) do
        if p:IsA("BasePart") then p.Anchored=true end
    end
    setLog("FREEZE: "..selectedPlayer)
end)
UnfreezeBtn.Activated:Connect(function()
    local t=getTarget() if not t then return end
    for _,p in ipairs(t.Character:GetDescendants()) do
        if p:IsA("BasePart") then p.Anchored=false end
    end
    setLog("UNFREEZE: "..selectedPlayer)
end)
local drag,dragIn,dragSt,stPos=false
Header.InputBegan:Connect(function(inp)
    if inp.UserInputType==Enum.UserInputType.MouseButton1 or inp.UserInputType==Enum.UserInputType.Touch then
        drag=true dragSt=inp.Position stPos=Panel.Position
        inp.Changed:Connect(function()
            if inp.UserInputState==Enum.UserInputState.End then drag=false end
        end)
    end
end)
Header.InputChanged:Connect(function(inp)
    if inp.UserInputType==Enum.UserInputType.MouseMovement or inp.UserInputType==Enum.UserInputType.Touch then dragIn=inp end
end)
UIS.InputChanged:Connect(function(inp)
    if inp==dragIn and drag then
        local d=inp.Position-dragSt
        Panel.Position=UDim2.new(stPos.X.Scale,stPos.X.Offset+d.X,stPos.Y.Scale,stPos.Y.Offset+d.Y)
    end
end)
local dragB,dragBIn,dragBSt,stBPos=false
Btn.InputBegan:Connect(function(inp)
    if inp.UserInputType==Enum.UserInputType.MouseButton1 or inp.UserInputType==Enum.UserInputType.Touch then
        dragB=true dragBSt=inp.Position stBPos=Btn.Position
        inp.Changed:Connect(function()
            if inp.UserInputState==Enum.UserInputState.End then dragB=false end
        end)
    end
end)
Btn.InputChanged:Connect(function(inp)
    if inp.UserInputType==Enum.UserInputType.MouseMovement or inp.UserInputType==Enum.UserInputType.Touch then dragBIn=inp end
end)
UIS.InputChanged:Connect(function(inp)
    if inp==dragBIn and dragB then
        local d=inp.Position-dragBSt
        Btn.Position=UDim2.new(stBPos.X.Scale,stBPos.X.Offset+d.X,stBPos.Y.Scale,stBPos.Y.Offset+d.Y)
    end
end)
Btn.Activated:Connect(function() Panel.Visible=not Panel.Visible end)
CloseBtn.Activated:Connect(function() Panel.Visible=false end)
MinBtn.Activated:Connect(function() Panel.Visible=false end)
