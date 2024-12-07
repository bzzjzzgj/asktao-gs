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
message         : "��˵�е�#R���������#n�������̳��ϼ��ˣ���ҸϽ�ȥ#P���ʹ#P���һ��ɣ�����ʱ��Ϊ#R18:00-22:00#n���������١�"
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

    -- �Ƿ�Ϊ���������Ʒ
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


-- table.insert(sevenList, SevenConfig:new("�߼��������絤", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���װ��������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�����������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�������", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("��ʯ�����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���д����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�ó�����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("��������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("����ʯ�����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���޼���ʯ�����", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("��Ԫ�����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("Ԫ������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���޴����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("��������", 0, "item"))


-- table.insert(sevenList, SevenConfig:new("��΢����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���ޫi", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("ˮ��Կ��", 0, "item"))

table.insert(sevenList, SevenConfig:new("��ת����¶", 2, "item"))
table.insert(sevenList, SevenConfig:new("��ľ��", 5, "item"))
table.insert(sevenList, SevenConfig:new("��ˮ��", 5, "item"))
table.insert(sevenList, SevenConfig:new("�һ�ɢ", 5, "item"))
table.insert(sevenList, SevenConfig:new("������", 5, "item"))
table.insert(sevenList, SevenConfig:new("Ǳ��ɢ", 5, "item"))

table.insert(sevenList, SevenConfig:new("�ؼ���Ϊ��", 50, "item"))
table.insert(sevenList, SevenConfig:new("�ؼ���Ԫ¶", 30, "item"))
table.insert(sevenList, SevenConfig:new("�ؼ��ķ�����", 30, "item"))
table.insert(sevenList, SevenConfig:new("�ؼ��㻯��", 30, "item"))
table.insert(sevenList, SevenConfig:new("�ؼ��𻯵�", 30, "item"))



-- ��������
table.insert(sevenList, SevenConfig:new("������������", 20, "item"))
table.insert(sevenList, SevenConfig:new("�޳�Ī������", 20, "item"))
table.insert(sevenList, SevenConfig:new("����Ѫ������", 20, "item"))
table.insert(sevenList, SevenConfig:new("Ǭ��������", 20, "item"))
table.insert(sevenList, SevenConfig:new("����Ȧ����", 20, "item"))
table.insert(sevenList, SevenConfig:new("����һ������", 20, "item"))
table.insert(sevenList, SevenConfig:new("����������", 20, "item"))
table.insert(sevenList, SevenConfig:new("��ʥ֮������", 20, "item"))
table.insert(sevenList, SevenConfig:new("ʮ�������", 20, "item"))
table.insert(sevenList, SevenConfig:new("������������", 20, "item"))
table.insert(sevenList, SevenConfig:new("������������", 20, "item"))
table.insert(sevenList, SevenConfig:new("��˵֮������", 20, "item"))

-- ��������
table.insert(sevenList, SevenConfig:new("���š����ӽ�ϵ����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����ľϵ����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����ˮϵ����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š����ӻ�ϵ����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�������ϵ����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š������ϵ�˺�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����ľϵ�˺�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����ˮϵ�˺�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š������ϵ�˺�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�������ϵ�˺�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š����ӷ���", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š��ǻ�", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š������ɱ", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�������ɱ", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�ŭ��Ҫ�����", 10, "item"))
table.insert(sevenList, SevenConfig:new("���š�ŭ���������", 10, "item"))
table.insert(sevenList, SevenConfig:new("��������������", 10, "item"))
table.insert(sevenList, SevenConfig:new("�������ѵ�", 10, "item"))
table.insert(sevenList, SevenConfig:new("�����������伣", 10, "item"))
table.insert(sevenList, SevenConfig:new("��������������", 10, "item"))
table.insert(sevenList, SevenConfig:new("����������", 10, "item"))
table.insert(sevenList, SevenConfig:new("����������Լ�����", 10, "item"))
table.insert(sevenList, SevenConfig:new("��������������Ƶ�", 10, "item"))
table.insert(sevenList, SevenConfig:new("�����������������", 10, "item"))
table.insert(sevenList, SevenConfig:new("��������������һ", 10, "item"))

-- table.insert(sevenList, SevenConfig:new("�������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("���������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("��������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("���߿����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("��������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("Ⱥ����¹�������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�����Ի��������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("���ɹ����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�ֶ����ɳ����", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("��ս�˷��������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("ѩս�����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("��ս�����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("������̷�������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�澭�����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("2016ԡ���������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("����ʮ���������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("���߹������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("����һ���������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("���绽���������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("518Ԫ����������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298��������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298��ѧ������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�߲ʺ����һ", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�߲ʺ������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("�߲ʺ������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298�����Ի�������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298����һ��������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("168�·���Ƕ���", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("168ϲ�������������", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("298��ս���������� ", 1, "item"))
-- table.insert(sevenList, SevenConfig:new("18Ů����", 1, "item"))

table.insert(sevenList, SevenConfig:new("����Ů�ʯ�·����", 1, "item"))


-- table.insert(sevenList, SevenConfig:new("��ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("��ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ�ټ���װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ��һʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ�ٶ�ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ����ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ����ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ����ʮ����װ����", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("һ����ʮ����װ����", 0, "item"))


-- table.insert(sevenList, SevenConfig:new("����˫����X5", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("�����顤X5", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���������X5", 0, "item"))


table.insert(sevenList, SevenConfig:new("����ʯ", 1, "item"))
table.insert(sevenList, SevenConfig:new("ܽ��ʯ", 1, "item"))
table.insert(sevenList, SevenConfig:new("�챦ʯ", 1, "item"))
table.insert(sevenList, SevenConfig:new("����ʯ", 1, "item"))
table.insert(sevenList, SevenConfig:new("�κ�", 5, "item"))

table.insert(sevenList, SevenConfig:new("���ܲ�", 1, "item"))
table.insert(sevenList, SevenConfig:new("������", 1, "item"))

table.insert(sevenList, SevenConfig:new("�������", 1, "item"))
table.insert(sevenList, SevenConfig:new("�Ͼ�׹��", 1, "item"))
table.insert(sevenList, SevenConfig:new("������Ȧ", 1, "item"))
table.insert(sevenList, SevenConfig:new("�ò�����", 1, "item"))
table.insert(sevenList, SevenConfig:new("ѩ��˿��", 1, "item"))
table.insert(sevenList, SevenConfig:new("������", 1, "item"))
table.insert(sevenList, SevenConfig:new("����i", 1, "item"))
table.insert(sevenList, SevenConfig:new("Ѫ��ʯ", 1, "item"))
table.insert(sevenList, SevenConfig:new("�˽Ǿ���", 1, "item"))
table.insert(sevenList, SevenConfig:new("���", 1, "item"))
table.insert(sevenList, SevenConfig:new("�������", 1, "item"))
table.insert(sevenList, SevenConfig:new("��������", 1, "item"))
table.insert(sevenList, SevenConfig:new("���軷", 1, "item"))
table.insert(sevenList, SevenConfig:new("�������C", 1, "item"))
table.insert(sevenList, SevenConfig:new("��������", 1, "item"))


table.insert(sevenList, SevenConfig:new("����������", 1500, "item"))
table.insert(sevenList, SevenConfig:new("���ޡ�������", 1500, "item"))
table.insert(sevenList, SevenConfig:new("���䡱������", 150, "item"))
table.insert(sevenList, SevenConfig:new("���족������", 150, "item"))
table.insert(sevenList, SevenConfig:new("���١�������", 100, "item"))
table.insert(sevenList, SevenConfig:new("������������", 100, "item"))
table.insert(sevenList, SevenConfig:new("���������", 100, "item"))

-- table.insert(sevenList, SevenConfig:new("�������꿨����", 0, "item"))

-- table.insert(sevenList, SevenConfig:new("���������", 0, "item"))
-- table.insert(sevenList, SevenConfig:new("���澫Ӣ����", 0, "item"))


-- ����
-- table.insert(sevenList, SevenConfig:new("��ƿ", 0, "pet", 6326))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6330))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6325))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6327))
-- table.insert(sevenList, SevenConfig:new("��սʤ��", 0, "pet", 6342))
-- table.insert(sevenList, SevenConfig:new("���", 0, "pet", 6328))
-- table.insert(sevenList, SevenConfig:new("��¹", 0, "pet", 6329))


-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6295))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6294))
-- table.insert(sevenList, SevenConfig:new("��ħ", 0, "pet", 6296))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6302))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6293))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6303))
-- table.insert(sevenList, SevenConfig:new("�����ʥ", 0, "pet", 6341))




-- table.insert(sevenList, SevenConfig:new("����������", 0, "pet", 35001))
-- table.insert(sevenList, SevenConfig:new("���𱿱�ţ", 0, "pet", 35002))
-- table.insert(sevenList, SevenConfig:new("����������", 0, "pet", 35003))
-- table.insert(sevenList, SevenConfig:new("����������", 0, "pet", 35004))
-- table.insert(sevenList, SevenConfig:new("��������", 0, "pet", 35005))
-- table.insert(sevenList, SevenConfig:new("���𻨻���", 0, "pet", 35006))
-- table.insert(sevenList, SevenConfig:new("����������", 0, "pet", 35007))
-- table.insert(sevenList, SevenConfig:new("����������", 0, "pet", 35008))
-- table.insert(sevenList, SevenConfig:new("����˧˧��", 0, "pet", 35009))
-- table.insert(sevenList, SevenConfig:new("���𵰵���", 0, "pet", 35010))
-- table.insert(sevenList, SevenConfig:new("����ԹԹ�", 0, "pet", 35011))
-- table.insert(sevenList, SevenConfig:new("�����в���", 0, "pet", 35012))

-- table.insert(sevenList, SevenConfig:new("��ȸ", 0, "pet", 6192))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6191))
-- table.insert(sevenList, SevenConfig:new("��ɽ����", 0, "pet", 6190))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6189))
-- table.insert(sevenList, SevenConfig:new("��β��", 0, "pet", 6176))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 31028))
-- table.insert(sevenList, SevenConfig:new("��â", 0, "pet", 31029))
-- table.insert(sevenList, SevenConfig:new("��ڤ", 0, "pet", 31030))
-- table.insert(sevenList, SevenConfig:new("ף��", 0, "pet", 31031))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 31032))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 31062))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 31060))



-- table.insert(sevenList, SevenConfig:new("ͨ���ʥ", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("����Ȯ", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6172))
-- table.insert(sevenList, SevenConfig:new("����", 0, "pet", 6172))



for i, v in ipairs(sevenList) do
    v:printInfo(i)
end

if file then
    file:close()
end

