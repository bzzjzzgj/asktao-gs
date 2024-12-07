local file = io.open("./seven_year_mall.list", "w")

file:write([[
#FORM2

[time_info]
start_time      : "2013-04-15-00:00"
end_time        : "2033-05-03-23:59"
test_start_time : "2013-03-04-00:00"
test_end_time   : "2013-03-10-23:59"

[broadcast_setting]
broadcast_list : ({ "dur_task" })

[dur_task]
broadcast_start : "start_time(64800)"
interval        : 1200
cycle           : 86400
broadcast_end   : "start_time(79100)"
final_end_time  : "end_time"
message         : "传说中的#R九曲玲珑笔#n在周年商城上架了，大家赶紧去#P活动大使#P处兑换吧！出售时间为#R18:00-22:00#n，欲购从速。"
channel         : "CHANNEL_SYSTEM | CHANNEL_NO_BROADCAST"



]])

SevenConfig = {}
SevenConfig.__index = SevenConfig

function SevenConfig:new(name, amount, type, icon, give_num)
    local self = {}
    setmetatable(self, SevenConfig)
    self.name = name
    self.amount = amount
    self.icon = icon
    self.type = type
    self.give_num = give_num
    return self
end

function SevenConfig:printInfo(i)
    file:write("[" .. string.format("%03d", i) .. "]", "\r")

    file:write("name: ", self.name, "\r")
    file:write("type : \"", self.type, "\"\r")
    file:write("card_num: ", self.amount, "\r")

    if self.give_num and self.give_num > 1 then
        file:write("give_num: ", self.give_num, "\r")
    else
        file:write("give_num: 1", "\r")
    end

    -- 是否为宠物，或者物品
    if self.type == "pet" then
        file:write("free_pet : 1", "\r")
        file:write("icon : ", self.icon, "\r")
    else
        file:write("free_bag : 1", "\r")
    end

    file:write("can_trade : 1", "\r")
    file:write("sell_start : 0", "\r")
    file:write("sell_end : 24", "\r")
    file:write("show_start : 0", "\r")
    file:write("show_end : 24", "\r")

    file:write("\r")
end

sevenList = {}


-- table.insert(sevenList, SevenConfig:new("高级宠物玲珑丹", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("随机装备材料箱", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("叛逆袖章礼袋", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("声望礼袋", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("妖石大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("道行大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("道法大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("幻宠大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("经验大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("赤金交子", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("骑宠大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("魂兽石大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("魂兽技能石大礼包", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("仙元大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("元灵大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("神兽大礼包", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("变异大礼包", 0, "item"))


-- table.insert(sevenList, SevenConfig:new("紫微命格卡", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("御仙饮", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("幻兽玦", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("水晶钥匙", 0, "item"))

table.insert(sevenList, SevenConfig:new("九转仙灵露", 2, "item"))
table.insert(sevenList, SevenConfig:new("神木丸", 5, "item"))
table.insert(sevenList, SevenConfig:new("柔水丹", 5, "item"))
table.insert(sevenList, SevenConfig:new("烈火散", 5, "item"))
table.insert(sevenList, SevenConfig:new("三土丸", 5, "item"))
table.insert(sevenList, SevenConfig:new("潜金散", 5, "item"))

table.insert(sevenList, SevenConfig:new("特级修为丹", 50, "item"))
table.insert(sevenList, SevenConfig:new("特级归元露", 30, "item"))
table.insert(sevenList, SevenConfig:new("特级心法宝典", 30, "item"))
table.insert(sevenList, SevenConfig:new("特级点化丹", 30, "item"))
table.insert(sevenList, SevenConfig:new("特级羽化丹", 30, "item"))



-- 宠物秘笈
table.insert(sevenList, SevenConfig:new("拔苗助长秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("鞭长莫及秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("漫天血舞秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("乾坤罩秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("如意圈秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("舍命一击秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("神龙罩秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("神圣之光秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("十万火急秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("死亡缠绵秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("天生神力秘笈", 20, "item"))
table.insert(sevenList, SevenConfig:new("游说之舌秘笈", 20, "item"))

-- 娃娃秘笈
table.insert(sevenList, SevenConfig:new("秘笈·忽视金系抗性", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·忽视木系抗性", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·忽视水系抗性", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·忽视火系抗性", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·忽视土系抗性", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·化解金系伤害", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·化解木系伤害", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·化解水系伤害", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·化解火系伤害", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·化解土系伤害", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·忽视防御", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·体魄", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·力气", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·智慧", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·灵敏", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·物理必杀", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·法术必杀", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·怒气要求减少", 10, "item"))
table.insert(sevenList, SevenConfig:new("秘笈·怒气获得增加", 10, "item"))
table.insert(sevenList, SevenConfig:new("绝技·道法归宗", 10, "item"))
table.insert(sevenList, SevenConfig:new("绝技·裂地", 10, "item"))
table.insert(sevenList, SevenConfig:new("绝技·销声匿迹", 10, "item"))
table.insert(sevenList, SevenConfig:new("绝技·中流砥柱", 10, "item"))
table.insert(sevenList, SevenConfig:new("绝技·回生", 10, "item"))
table.insert(sevenList, SevenConfig:new("变身绝技·以己渡人", 10, "item"))
table.insert(sevenList, SevenConfig:new("变身绝技·合力破敌", 10, "item"))
table.insert(sevenList, SevenConfig:new("变身绝技·急速舍身", 10, "item"))
table.insert(sevenList, SevenConfig:new("变身绝技·天道合一", 10, "item"))

-- table.insert(sevenList, SevenConfig:new("六周年至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("东成西就至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("天外飞仙至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("金蛇狂舞至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("三界封神至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("群雄逐鹿至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("更铸辉煌至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("八仙过海至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("乐豆豆成长礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("棋战八方至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("鬼斧神工至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("雪战到底至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("九周年至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("决战昆仑至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("天书奇谭至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("奇经八脉至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("2016浴火重生礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("经典十年至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("王者归来礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("二〇一六至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("呼风唤雨至尊礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("518元龙年神兵礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298神兵礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298神兵大礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298开学神兵礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("七彩虹礼包一", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("七彩虹礼包二", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("七彩虹礼包三", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298更铸辉煌神兵礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298清凉一夏神兵礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("168新服镶嵌礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("168喜气洋洋奇珍礼包", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298决战昆仑神兵礼包 ", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("18女娲礼包", 1, "item"))

table.insert(sevenList, SevenConfig:new("超级女娲石新服礼包", 1, "item"))


-- table.insert(sevenList, SevenConfig:new("八十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("九十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百一十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百二十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百三十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百四十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百五十级套装·土", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("一百六十级套装·土", 0, "item"))


-- table.insert(sevenList, SevenConfig:new("闭月双环·X5", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("七龙珠·X5", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("天机锁链·X5", 0, "item"))


table.insert(sevenList, SevenConfig:new("蓝松石", 1, "item"))
table.insert(sevenList, SevenConfig:new("芙蓉石", 1, "item"))
table.insert(sevenList, SevenConfig:new("红宝石", 1, "item"))
table.insert(sevenList, SevenConfig:new("蓝宝石", 1, "item"))
table.insert(sevenList, SevenConfig:new("梦荷", 5, "item"))

table.insert(sevenList, SevenConfig:new("大萝卜", 1, "item"))
table.insert(sevenList, SevenConfig:new("大桃子", 1, "item"))

table.insert(sevenList, SevenConfig:new("青珑挂珠", 1, "item"))
table.insert(sevenList, SevenConfig:new("紫晶坠子", 1, "item"))
table.insert(sevenList, SevenConfig:new("三才项圈", 1, "item"))
table.insert(sevenList, SevenConfig:new("幻彩项链", 1, "item"))
table.insert(sevenList, SevenConfig:new("雪魂丝链", 1, "item"))
table.insert(sevenList, SevenConfig:new("纹龙佩", 1, "item"))
table.insert(sevenList, SevenConfig:new("温玉玦", 1, "item"))
table.insert(sevenList, SevenConfig:new("血心石", 1, "item"))
table.insert(sevenList, SevenConfig:new("八角晶牌", 1, "item"))
table.insert(sevenList, SevenConfig:new("蟠螭结", 1, "item"))
table.insert(sevenList, SevenConfig:new("金刚手镯", 1, "item"))
table.insert(sevenList, SevenConfig:new("七星手链", 1, "item"))
table.insert(sevenList, SevenConfig:new("凤舞环", 1, "item"))
table.insert(sevenList, SevenConfig:new("龙鳞手鐲", 1, "item"))
table.insert(sevenList, SevenConfig:new("法文手轮", 1, "item"))


table.insert(sevenList, SevenConfig:new("“神”字令牌", 1500, "item"))
table.insert(sevenList, SevenConfig:new("“兽”字令牌", 1500, "item"))
table.insert(sevenList, SevenConfig:new("“变”字令牌", 150, "item"))
table.insert(sevenList, SevenConfig:new("“异”字令牌", 150, "item"))
table.insert(sevenList, SevenConfig:new("“召”字令牌", 100, "item"))
table.insert(sevenList, SevenConfig:new("“唤”字令牌", 100, "item"))
table.insert(sevenList, SevenConfig:new("“令”字令牌", 100, "item"))

-- table.insert(sevenList, SevenConfig:new("超级剑魂卡·仙", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("叛逆军袖章", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("叛逆精英袖章", 0, "item"))


-- 宠物
-- table.insert(sevenList, SevenConfig:new("净瓶", 0, "pet", 6326))
-- table.insert(sevenList, SevenConfig:new("巨力", 0, "pet", 6330))
-- table.insert(sevenList, SevenConfig:new("昆仑", 0, "pet", 6325))
-- table.insert(sevenList, SevenConfig:new("无名", 0, "pet", 6327))
-- table.insert(sevenList, SevenConfig:new("斗战胜佛", 0, "pet", 6342))
-- table.insert(sevenList, SevenConfig:new("苍穹", 0, "pet", 6328))
-- table.insert(sevenList, SevenConfig:new("逐鹿", 0, "pet", 6329))


-- table.insert(sevenList, SevenConfig:new("赤天", 0, "pet", 6295))
-- table.insert(sevenList, SevenConfig:new("笛舞", 0, "pet", 6294))
-- table.insert(sevenList, SevenConfig:new("降魔", 0, "pet", 6296))
-- table.insert(sevenList, SevenConfig:new("混沌", 0, "pet", 6302))
-- table.insert(sevenList, SevenConfig:new("夫诸", 0, "pet", 6293))
-- table.insert(sevenList, SevenConfig:new("震魃", 0, "pet", 6303))
-- table.insert(sevenList, SevenConfig:new("齐天大圣", 0, "pet", 6341))




-- table.insert(sevenList, SevenConfig:new("至尊伶俐鼠", 0, "pet", 35001))
-- table.insert(sevenList, SevenConfig:new("至尊笨笨牛", 0, "pet", 35002))
-- table.insert(sevenList, SevenConfig:new("至尊威威虎", 0, "pet", 35003))
-- table.insert(sevenList, SevenConfig:new("至尊跳跳兔", 0, "pet", 35004))
-- table.insert(sevenList, SevenConfig:new("至尊酷酷龙", 0, "pet", 35005))
-- table.insert(sevenList, SevenConfig:new("至尊花花蛇", 0, "pet", 35006))
-- table.insert(sevenList, SevenConfig:new("至尊溜溜马", 0, "pet", 35007))
-- table.insert(sevenList, SevenConfig:new("至尊羊羊羊", 0, "pet", 35008))
-- table.insert(sevenList, SevenConfig:new("至尊帅帅猴", 0, "pet", 35009))
-- table.insert(sevenList, SevenConfig:new("至尊蛋蛋鸡", 0, "pet", 35010))
-- table.insert(sevenList, SevenConfig:new("至尊乖乖狗", 0, "pet", 35011))
-- table.insert(sevenList, SevenConfig:new("至尊招财猪", 0, "pet", 35012))

-- table.insert(sevenList, SevenConfig:new("朱雀", 0, "pet", 6192))
-- table.insert(sevenList, SevenConfig:new("玄武", 0, "pet", 6191))
-- table.insert(sevenList, SevenConfig:new("东山神灵", 0, "pet", 6190))
-- table.insert(sevenList, SevenConfig:new("疆良", 0, "pet", 6189))
-- table.insert(sevenList, SevenConfig:new("九尾狐", 0, "pet", 6176))
-- table.insert(sevenList, SevenConfig:new("蓐收", 0, "pet", 31028))
-- table.insert(sevenList, SevenConfig:new("句芒", 0, "pet", 31029))
-- table.insert(sevenList, SevenConfig:new("玄冥", 0, "pet", 31030))
-- table.insert(sevenList, SevenConfig:new("祝融", 0, "pet", 31031))
-- table.insert(sevenList, SevenConfig:new("后土", 0, "pet", 31032))
-- table.insert(sevenList, SevenConfig:new("勾陈", 0, "pet", 31062))
-- table.insert(sevenList, SevenConfig:new("穷奇", 0, "pet", 31060))



-- table.insert(sevenList, SevenConfig:new("通天大圣", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("哮天犬", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("碧霄", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("祸斗", 0, "pet", 6172))



for i, v in ipairs(sevenList) do
    v:printInfo(i)
end

if file then
    file:close()
end

