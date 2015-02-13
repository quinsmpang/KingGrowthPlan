
sharedEventDispatcher = cc.Director:getInstance():getEventDispatcher()




CONFIG_CRYPTO_KEY = "FWg2J8wxqiDRkRbgndRi"


SexType = {
	Boy  = 1,
	Girl = 2,
}

RoleType = {
	Feizi    = 1,
	Nanchong = 2,
	Qinglou  = 3,
	Waiyu    = 4,
}

FaceType = {
	Normal  = 1,
	Win     = 2,
	Tired   = 3,
	Sad     = 4,
	BadNews = 5,
	Happy   = 6,
	Fight   = 7,
	NotBad  = 8,
}

FaceImage = {
	[FaceType.Normal]  = "Images/Common/xiaoguizi/xiaoguizi_4.png",
	[FaceType.Win]     = "Images/Common/xiaoguizi/xiaoguizi_2.png",
	[FaceType.Tired]   = "Images/Common/xiaoguizi/xiaoguizi_3.png",
	[FaceType.Sad]     = "Images/Common/xiaoguizi/xiaoguizi_1.png",
	[FaceType.BadNews] = "Images/Common/xiaoguizi/xiaoguizi_5.png",
	[FaceType.Happy]   = "Images/Common/xiaoguizi/xiaoguizi_6.png",
	[FaceType.Fight]   = "Images/Common/xiaoguizi/xiaoguizi_7.png",
	[FaceType.NotBad]  = "Images/Common/xiaoguizi/xiaoguizi_8.png",
}

PlayerInfoKey = {
	"happy",
	"age",
	"healthy",
	"tili",   
	"weiwang",
	"wushu",  
	"meili",  
	"zhihui", 
	"baoli",  
	"daode",  
	"caiyi",   
}

HaremStatus = {
	normal    = 0,
	illness   = 1,
	pregnancy = 2,
}

