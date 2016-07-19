--create database xiaonei
--drop database xiaonei
use xiaonei

------------------------------------------- 用户表 users -------------------------------------------		
create table users(
	id		int(11)		not null primary key auto_increment, --用户ID
	email		varchar	(128)	unique not null,	    --邮箱
	name		varchar	(128)	not null,		    --真实姓名
	pwd		varchar	(128)	not null,		    --密码(md5加密) 
	photo		varchar	(128) 	default 'default.gif',	   --头像
	sex		varchar	(16)	,			   --性别(男，女,不告诉你)
	homePro		int(11)		,			--家乡省ID(外键)
	homeCity	int(11)		,			--家乡市ID(外键)
	birth		date	,				--生日
	tel		varchar	(32)	,			--固定电话电话
	mobile		varchar(32)	,			--手机号码
	oicq		varchar (32)	,			--QQ号
	msn		varchar	(128)	,			--MSN
	website		varchar	(128)	,			--个人网站
	techSch		int(11)		,			--技校ID
	techSchYear	int(11)		,			--技校入学年份
	juniorSch	int(11)		,			--初中ID
	juniorYear	int(11)		,			--初中入学年份
	primarySch	int(11)	        ,			--小学
	primaryYear	int(11)		,			--小学入学年份
	interest	varchar	(256)	,			--兴趣爱好
	music		varchar	(256)	,			--喜欢的音乐
	movie		varchar	(256)	,			--喜欢的电影
	game		varchar	(256)	,			--喜欢的游戏
	cartoon		varchar(256)	,			--喜欢的动漫
	sport		varchar	(256)	,			--喜欢的运动
	book		varchar	(256)	,			--喜欢的书籍
	assn		varchar	(256)	,			--加入的社团
	visited		int default 0	,			--访问数
	doing		varchar	(128)	,			--目前在做的事情
	online		tinyint		default 0,		--在线状态(1表示在线，0表示 离线.2..等待扩展)
	registerDate	datetime 	,			--注册时间
	loginDate	datetime 	,			--最后登录时间		
	level		tinyint 	default 1,		--等级(1-普通,2-星级)
	locked		tinyint		default 0,		--是否锁定该用户(0表示不锁定,1表示锁定,2..等待后用)
	foreign key (homePro) references province(id),
	foreign key (homeCity) references city(id),
	foreign key (techSch) references techschool(id),
	foreign key (juniorSch) references junior(id),
	foreign key (primarySch) references primarySchool(id)		
)							
				
--select  u_id,u_name,u_indate,u_loginDate,u_online from users where u_id=2
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('admin@sina.com','校内网管理员','123123','admin.jpg','男','1981-7-3',1,'2005-1-1')

insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_homePro,u_homeCity,u_birth,u_QQ,u_juniorSch,u_juniorYear,u_primarySch,u_primaryYear,
u_interest,u_music,u_movie,u_game,u_cartoon,u_sport,u_book,u_doing,u_online,u_indate,u_visited) 
values('sg11@sina.com','三少爷','123123','u1.gif','男',1,6,'1984-5-13',123456,89,1996,'定安里小学',1990,
'胡侃, 瞎掰, 电玩, 武侠, 历史, 体育,电 脑, 曲艺, 做梦, 思考',
'go west, on your mark, 英雄的黎明, 故乡的原风景, Beat JP, My Time To Be A Star',
'勇敢的心, 阿甘正传, 后天, 邵氏电影',
'WE10, 星际争霸, 无冬之夜2,上 古卷轴4,暗黑破坏神2,魔兽世界',
'圣斗士, 柯南, 太空堡垒I, 变形金刚, 足球小将, 灌篮高手, 机器猫, 高智能方程式赛车, 天空战记, 羚羊号历险记',
'足球, 乒乓球, 篮球, 看球',
'笑傲江湖,小李飞刀,三国演义,孙子兵法与三十六计',
'nothing to lose',1,'2006-2-12',9)

select *from users where u_id=2
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg22@sohu.com','小公主','123123','u2.jpg','女','1983-6-1',2,'2006-3-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg33@126.com','令狐','123123','u3.gif','男','1984-4-3',2,'2006-4-15')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg44@163.com','魔鬼终结者','123123','u4.jpg','男','1986-2-14',2,'2006-5-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg55@hotmail.com','香香','123123','u5.jpg','女','1985-7-14',2,'2006-7-23')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg66@gmail.com','玲珑','123123','u6.gif','女','1986-4-13',2,'2006-10-11')

insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg77@sina.com','东方不败','123123','u7.jpg','男','1984-11-3',2,'2007-2-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg88@sohu.com','小丸子','123123','u8.jpg','女','1986-11-2',2,'2007-3-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg99@126.com','郑和','123123','u9.jpg','男','1985-4-21',2,'2007-3-25')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg00@163.com','麦蒂','123123','u10.jpg','男','1985-6-3',2,'2007-4-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac11@hotmail.com','纱织','123123','u11.jpg','女','1988-8-27',2,'2007-4-5')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac22@gmail.com','大小姐','123123','u12.jpg','男','1987-9-25',2,'2007-6-11')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac33@sina.com','小公子','123123','u13.jpg','男','1985-11-23',2,'2007-8-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac44@sohu.com','灰姑娘','123123','u14.gif','女','1984-12-31',2,'2007-8-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac55@126.com','南郭先生','123123','u15.jpg','男','1980-4-9',2,'2007-10-15')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac66@163.com','柯南','123123','u16.jpg','男','1991-10-5',2,'2008-3-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac77@hotmail.com','小女子','123123','u17.jpg','女','1989-7-7',2,'2008-4-23')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac88@qq.com','盈盈','123123','u18.jpg','女','1988-2-3',2,'2008-5-11')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac99@sina.com','十三郎','123123','u19.gif','男','1987-3-8',2,'2008-5-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd11@sohu.com','花碧莲','123123','u20.gif','女','1984-11-1',2,'2008-10-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd22@126.com','克赛','123123','u21.jpg','男','1987-9-3',2,'2008-10-25')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd33@163.com','奥特曼','123123','u22.jpg','男','1986-2-9',2,'2008-10-26')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd44@hotmail.com','小龙女','123123','u23.jpg','女','1984-11-4',2,'2008-10-27')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd55@qq.com','电灯泡','123123','u24.gif','男','1985-4-23',2,'2008-10-28')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd66@139.com','姑姑','123123','u25.jpg','女','1987-4-12',2,'2008-10-28')



select * from users 


------------------------------------------- 用户网络表 userNet -------------------------------------------								
--drop table userNet						
create table userNet(	
	id		int	not null primary key auto_increment,	--用户网络ID		
	userId	int	,			--用户ID		
	name		varchar	(64)	not null,			--网络名		
	isPrimary	tinyint	default 1,				--主网络（1-是，0-不是）
	foreign key (userId) references users(id)			
)
insert into userNet values(1,'千橡集团',1)

insert into userNet values(2,'首都医科大学',1)
insert into userNet values(3,'北京市',1)
insert into userNet values(4,'首都医科大学',1)
insert into userNet values(5,'清华大学',1)
insert into userNet values(6,'北京汇文中学',1)
insert into userNet values(7,'首都医科大学',1)
insert into userNet values(8,'首都医科大学',1)
insert into userNet values(9,'首都医科大学',1)
insert into userNet values(10,'首都医科大学',1)
insert into userNet values(11,'首都医科大学',1)
insert into userNet values(12,'首都医科大学',1)
insert into userNet values(13,'首都医科大学',1)
insert into userNet values(14,'北京汇文中学',1)
insert into userNet values(15,'首都医科大学',1)
insert into userNet values(16,'清华大学',1)
insert into userNet values(17,'北京市',1)
insert into userNet values(18,'北京汇文中学',1)

insert into userNet values(19,'北京汇文中学',1)
insert into userNet values(20,'首都医科大学',1)
insert into userNet values(21,'首都医科大学',1)
insert into userNet values(22,'北京市',1)
insert into userNet values(23,'北京汇文中学',1)


insert into userNet values(24,'首都医科大学',1)
insert into userNet values(25,'首都医科大学',1)
insert into userNet values(26,'首都医科大学',1)


select *from userNet





--select count(*) from userNet where un_Name=(select un_Name from userNet where un_userId=4) and un_primary=1
							
------------------------------------------- 用户大学表 userUniversity -------------------------------------------							
--drop table userUniversity						
create table userUniversity
(
  id int not null primary key auto_increment,--ID	
  userId int,--用户ID
  universityId int,--大学ID
  uniYear int,--大学入学年份
  userType varchar(32),--类别
  college varchar(128),--院系
  drom varchar(128),--宿舍
  foreign key(userId) references users(id),
  foreign key(universityId) references university(id)
)

insert into userUniversity values(2,39,2003,'大学生','生物医学工程学院','14号楼')
insert into userUniversity values(4,39,2005,'大学生','生物医学工程学院','14号楼')
insert into userUniversity values(5,1,2001,'大学生','计算机学院','紫荆公寓')

insert into userUniversity values(7,39,2006,'大学生','基础医学院','13号楼')
insert into userUniversity values(8,39,2005,'大学生','护理学院','13号楼')
insert into userUniversity values(9,39,2003,'大学生','药学院','14号楼')
insert into userUniversity values(10,39,2004,'大学生','口腔学院','13号楼')
insert into userUniversity values(11,39,2007,'大学生','公卫学院','14号楼')
insert into userUniversity values(12,39,2008,'大学生','康复学院','14号楼')
insert into userUniversity values(13,39,2005,'大学生','药学院','14号楼')

insert into userUniversity values(15,39,2007,'大学生','公卫学院','14号楼')

insert into userUniversity values(16,1,2003,'大学生','机械学院','紫荆公寓')

insert into userUniversity values(20,39,2007,'大学生','公卫学院','14号楼')
insert into userUniversity values(21,39,2008,'大学生','康复学院','14号楼')

insert into userUniversity values(24,39,2007,'大学生','生物医学工程学院','14号楼')
insert into userUniversity values(25,39,2007,'大学生','公卫学院','14号楼')
insert into userUniversity values(26,39,2008,'大学生','基础医学院','14号楼')
select*from userUniversity								
------------------------------------------- 用户高中表 userSenior -------------------------------------------								
--drop table userSenior				
create table userSenior(		
	id		int		not null primary key auto_increment,	--ID		
	userId		int		,			--用户ID		
	seniorSchId	int		,			--高中ID		
	seniorYear	int		,			--高中入学年份		
	grade1	varchar	(64)	,			--高一		
	grade2	varchar	(64)	,			--高二		
	grade3	varchar	(64)	,			--高三
	foreign key (userid) references users(id),
	foreign key (seniorSchId) references senior(id)
)
insert into userSenior values(2,124,1999,'10班','8班','8班')
insert into userSenior values(6,124,2004,'3班','3班','3班')	
insert into userSenior values(14,124,2005,'4班','1班','1班')
insert into userSenior values(18,124,2005,'6班','6班','6班')	
insert into userSenior values(19,124,2005,'2班','2班','2班')
insert into userSenior values(23,124,2007,'3班','9班','9班')	
select *from userSenior							
------------------------------------------- 用户公司表 userCom -------------------------------------------								
						
create table userCom(		
	uc_id		bigint		primary key identity,	--用户公司ID		
	uc_userId	bigint		,			--用户ID		
	uc_name		varchar	(64)	,			--公司名		
	uc_describe	varchar	(256)	,			--公司描述		
	uc_trade	int		,			--行业ID		
	uc_tradeInfo	int		,			--行业具体ID		
	uc_job		int		,			--职位ID		
	uc_jobInfo	int		,			--职位具体ID		
	uc_date		varchar	(16)				--工作时间		
)			



				
------------------------------------------- 好友表 friend -------------------------------------------								
--drop table friend						
create table friend(	
	f_id		bigint		primary key identity,	--ID		
	f_hostId	bigint		,			--本人ID		
	f_friendId	bigint		,			--好友ID		
	f_type		int		default 1,		--好友类型（1-普通，2-特别）
	f_desc          varchar(256)				--特别好友描述
)
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,3,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,2,2,'小少爷')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,4,2,'好兄弟讲义气')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,5,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,6,2,'嘿嘿')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,4,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,3,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,5,2,'呵呵')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,3,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,3,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,5,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,4,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,4,2,'平常心')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,5,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,7,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(7,6,1,'')

insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,9,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(9,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,10,2,'！！')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(10,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,11,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(11,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,12,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(12,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,13,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(13,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,14,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(14,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,15,2,'~~')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(15,2,1,'')

select *from friend	
--select *from Friend where  F_HostId =2 and  F_FriendId=3
--select distinct un.un_Name from Users u,Friend f,UserNet un 
--where u.U_Id=f.F_FriendId and un.un_Primary=1 and un.un_UserId=f.F_FriendId and f.F_HostId=2
						

/**
drop table demo
create table demo(
did int primary key identity ,
dname varchar(512),
dcont varchar(512),
dtime datetime default getdate()
)
insert into demo(dcont) values('aaaaaa') 
insert into demo(dcont) values('bbbbbb')
insert into demo(dcont) values('cccccc')
insert into demo(dcont) values('ddddddd')
select *from demo --where month(dateadd(day,7,getdate()))= month(dtime) and  day(dateadd(day,7,getdate()))- day(dtime) between 0 and 7
**/
										
------------------------------------------- 好友申请表 friendApply -------------------------------------------								
						
create table friendApply(	
	fa_id		bigint		primary key identity,	--好友申请ID		
	fa_sendId	bigint		,			--发送人ID		
	fa_getId	bigint		,			--接收人ID		
	fa_info		varchar	(256)				--个人信息（选填）		
)		


	


select *from FriendApply  	





------------------------------------------- 新鲜事表 news -------------------------------------------										
								
create table news(			
	n_id		bigint		primary key identity,	--新鲜事ID		
	n_title		varchar	(512)	,			--名字			
	n_hostId	bigint		,			--本人ID			
	n_content	varchar	(512)	,			--内容		
	n_type		int		,			--类型用于图片			
	n_date		datetime 	default getdate()	--时间				
)
------------------------------------------- 新鲜事关系表	newsRelation -------------------------------------------										
--drop table newsRelation								
create table newsRelation(			
	nr_id		bigint		primary key identity,	--新鲜事关系ID				
	nr_newsId	bigint		,			--新鲜事ID				
	nr_friendId	bigint		,			--新鲜事好友ID				
	nr_status	int		default 1		--新鲜事状态(1-未读，2-已读)				
)	



					
							
------------------------------------------- 留言表 gossip -------------------------------------------								
drop table gossip						
create table gossip(	
	g_id		bigint		primary key identity,	--留言ID		
	g_sendId	bigint		,			--发送人ID		
	g_getId		bigint		,			--接收人ID		
	g_content	varchar	(640)	,			--内容		
	g_indate	datetime 	default getdate()	--时间				
)


insert into gossip values(3,2,'hi','2008-3-4');
insert into gossip values(4,2,'你好','2008-4-12');
insert into gossip values(5,2,'你啊','2008-4-23');
insert into gossip values(6,2,'呵呵','2008-5-4');
insert into gossip values(3,2,'有点意思','2008-6-5');
insert into gossip values(4,2,'小伙','2008-8-11');

insert into gossip values(3,2,'踩你！！','2008-8-14');
insert into gossip values(2,2,'久违了！','2008-9-2');
insert into gossip values(11,2,'你还健在啊，呵呵','2008-10-3');
insert into gossip values(9,2,'幸会啊！','2008-10-4');
insert into gossip values(12,2,'还成','2008-10-25');
insert into gossip values(1,2,'小少爷！！','2008-10-26');

select *from gossip order by G_Indate desc




------------------------------------------- 留言提示表	gossipTip -------------------------------------------										
--drop table gossipTip								
create table gossipTip(		
	gt_id		bigint		primary key identity,	--留言提示ID				
	gt_sendId	bigint		,			--发送人ID			
	gt_getId	bigint		,			--接收人ID				
	gt_url		varchar	(512)	,			--提示内容				
	gt_date		datetime 	default getdate(),	--时间	
	gt_status 	int 		default 1		--1-未读，2-已读			
)


select *from gossipTip


--select gt_url from gossipTip where gt_getId=2 order by gt_Date desc
------------------------------------------- 访问表 visitor -------------------------------------------								
--drop table visitor						
create table visitor(	
	v_id		bigint		primary key identity,	--访问ID		
	v_hostId	bigint		,			--本人ID		
	v_visitorId	bigint		,			--访客ID		
	v_date		datetime 	default getdate()	--访问时间		
)							
insert into visitor values(2,1,'2008-3-1')	
insert into visitor values(2,3,'2008-3-11')
insert into visitor values(2,4,'2008-4-3')
insert into visitor values(2,5,'2008-5-1')
insert into visitor values(2,7,'2008-6-2')
insert into visitor values(2,8,'2008-7-5')
insert into visitor values(2,9,'2008-8-10')
insert into visitor values(2,10,'2008-10-19')
insert into visitor values(2,12,'2008-10-28')
insert into visitor values(2,11,getdate())	

select *from visitor	


------------------------------------------- 站内信表 letter -------------------------------------------										
--drop table letter								
create table letter(			
	le_id		bigint		primary key identity,	--消息ID				
	le_sendID	bigint		,			--发送人ID				
	le_getID	bigint		,			--接收人ID		
	le_title	varchar	(64)	,			--题目		
	le_content	varchar	(2048)	,			--内容		
	le_indate	datetime 	default getdate(),	--时间		
	le_readed	int 		default 1		--已读未读(1-未读，2-已读)		
)							
		
					
select *from letter
------------------------------------------- 相册表 album -------------------------------------------								
--drop table album						
create table album(		
	al_id		bigint		primary key identity,	--相册ID		
	al_hostId	bigint		,			--用户ID		
	al_name		varchar	(64)	,			--相册名		
	al_photo        varchar (64)    default 'main.jpg',	--缺省图片
	al_description	varchar	(256)   ,			--相册描述			
	al_indate	datetime 	default getdate(),	--创建时间		
	al_update	datetime 	default getdate()	--更新时间		
)	


insert into album values (2,'风景','f2.jpg','风景来自百度空间','2008-4-2','2008-5-3')
insert into album values (2,'卡通','c3.jpg','卡通画','2008-5-5','2008-7-2')
insert into album values (2,'体育','t4.jpg','关注体育，享受生活','2008-8-22','2008-9-4')
--select *from album	

update Album set al_Photo='111' where al_Id=5
 					
------------------------------------------- 照片表 photo -------------------------------------------								
--drop table photo						
create table photo(		
	p_id		bigint		primary key identity,	--照片ID		
	p_photo		varchar	(64)	,			--照片名		
	p_albumId	bigint		,			--所属相册ID	
	p_description	varchar	(256)	,			--照片描述			
	p_read		int		default 0,		--浏览数		
	p_indate	datetime 	default getdate()	--加入时间		
)		

insert into photo(p_photo,p_albumId,p_description,p_indate) values('f1.jpg',1,'绿色','2008-2-3')
insert into photo(p_photo,p_albumId,p_description,p_indate) values('f2.jpg',1,'雷诺','2008-3-2')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c1.jpg',2,'','2008-2-22')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c2.jpg',2,'愁死我了','2008-4-5')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c3.jpg',2,'','2008-5-16')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t1.jpg',3,'北京奥运','2008-3-15')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t2.jpg',3,'福娃','2008-6-22')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t3.jpg',3,'北京奥运','2008-9-13')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t4.jpg',3,'刘翔',getdate())	


select *from photo	where p_albumId=6			
------------------------------------------- 照片评论表 photoComment -------------------------------------------								
						
create table photoComment(	
	pc_id		bigint		primary key identity,	--ID		
	pc_photoId	bigint		,			--照片ID		
	pc_authorId	bigint		,			--作者ID		
	pc_content	varchar	(256)	,			--评论内容		
	pc_indate	datetime 	default getdate()	--评论时间		
)	



insert into photoComment values(1,2,'看看','2008-8-2')					
insert into photoComment values(1,3,'顶了','2008-8-11')
insert into photoComment values(1,4,'踩了','2008-8-15')
insert into photoComment values(1,5,'还行','2008-8-19')
insert into photoComment values(1,5,'aaaaaaa','2008-8-24')
insert into photoComment values(1,11,'嗯','2008-9-2')					
insert into photoComment values(1,1,'哎呀','2008-9-11')
insert into photoComment values(1,6,'不错','2008-9-15')
insert into photoComment values(1,7,'有点意思','2008-9-19')
insert into photoComment values(1,4,'ccc','2008-9-22')
insert into photoComment values(1,3,'看过啦','2008-10-2')					
insert into photoComment values(1,2,'up','2008-10-3')
insert into photoComment values(1,4,'踩你','2008-10-5')
insert into photoComment values(1,7,'还行吧','2008-10-9')
insert into photoComment values(1,5,'rrrrr','2008-10-11')
insert into photoComment values(2,3,'哦','2008-10-14')
insert into photoComment values(2,6,'呵呵','2008-10-16')
insert into photoComment values(3,11,'哦','2008-10-22')
select *from photoComment
------------------------------------------- 日志表 article -------------------------------------------								
--drop table article						
create table article(	
	a_id		bigint		primary key identity,	--日志ID		
	a_authorId	bigint		,			--作者ID		
	a_title		varchar	(64)	,			--题目		
	a_content	varchar	(2048)	,			--内容		
	a_indate	datetime 	default getdate(),	--发表日期		
	a_read		int		default 0		--阅读数		
)			

insert into article values(2,'开天日志','第一篇啊','2008-5-3',0);
insert into article values(2,'bbbbb','bbbbbbbbbbbbbb','2008-5-27',0);
insert into article values(2,'cccc','cccccccccccccc','2008-6-25',0);
insert into article values(2,'dddd','dddddddddd','2008-7-13',0);
insert into article values(2,'eeeee','eeeeeeeeeeeeee','2008-7-21',0);
insert into article values(2,'fffff','ffffffffff','2008-8-11',0);
insert into article values(2,'ggggggg','gggggggggggg','2008-9-13',0);
insert into article values(2,'hhhhh','hhhhhhhhhhhhhhhhh','2008-10-13',0);
insert into article values(2,'iiii','iiiiiiiiiiiiiii','2008-10-19',0);

insert into article values(3,'qqq','qqqqqqqqqqqqqqqqqq','2008-5-1',0);
insert into article values(3,'www','wwwwwwwwwwwwwwwww','2008-9-9',0);

select * from article			


------------------------------------------- 日志评论表 articleComment -------------------------------------------								
--drop table articleComment						
create table articleComment(	
	ac_id		bigint		primary key identity,	--类型ID		
	ac_articleId	bigint		,			--日志ID		
	ac_authorId	bigint		,			--作者ID		
	ac_content	varchar	(256)	,			--评论内容		
	ac_indate	datetime 	default getdate()	--评论时间		
)							
		




insert into articleComment values(1,2,'看看','2008-8-2')					
insert into articleComment values(1,3,'顶了','2008-8-11')
insert into articleComment values(1,4,'踩了','2008-8-15')
insert into articleComment values(1,5,'还行','2008-8-19')
insert into articleComment values(1,5,'aaaaaaa','2008-8-24')
insert into articleComment values(1,11,'嗯','2008-9-2')					
insert into articleComment values(1,1,'哎呀','2008-9-11')
insert into articleComment values(1,6,'不错','2008-9-15')
insert into articleComment values(1,7,'有点意思','2008-9-19')
insert into articleComment values(1,4,'ccc','2008-9-22')
insert into articleComment values(1,3,'看过啦','2008-10-2')					
insert into articleComment values(1,2,'up','2008-10-3')
insert into articleComment values(1,4,'踩你','2008-10-5')
insert into articleComment values(1,7,'还行吧','2008-10-9')
insert into articleComment values(1,5,'rrrrr','2008-10-11')
insert into articleComment values(2,3,'哦','2008-10-14')
insert into articleComment values(2,6,'呵呵','2008-10-16')
insert into articleComment values(3,11,'哦','2008-10-22')

select *from articleComment



------------------------------------------- 国家表 coutry -------------------------------------------								
--drop table coutry						
create table coutry(	
	co_id		int		primary key identity,	--国家ID		
	co_name		varchar	(32)				--国家名		
)	     


--select *from coutry

insert into coutry select co_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',coutry$)	                   						
------------------------------------------- 省份表 province -------------------------------------------		              						
--drop table province							
create table province(	
	pro_id		int		primary key identity,	--省份ID		
	pro_name	varchar	(32)	,			--省份名		
	pro_coutryId	int					--国家ID		
)	
insert into province select pro_name,pro_coutryId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',province$)	
--select *from province	

					
------------------------------------------- 城市表 city -------------------------------------------								
--drop table city						
create table city(	
	ci_id		int		primary key identity,	--城市ID		
	ci_name		varchar	(32)	,			--城市名		
	ci_proId	int					--所属省份ID		
)	
insert into city select ci_name,ci_proId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',city$)
--select *from city							
------------------------------------------- 乡村表 tomn -------------------------------------------								
--drop table town						
create table town(	
	to_id		int		primary key identity,	--乡村ID		
	to_name		varchar	(32)	,			--乡村名		
	to_cityId	int					--所属城市ID		
)	
insert into town select to_name,to_cityId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',town$)	
--select *from town						
------------------------------------------- 大学表 university -------------------------------------------							
--drop table university						
create table university(	
	id int not null primary key auto_increment,	--大学ID		
	name varchar(64) not null,			--大学名		
	countryId int,		--国家ID		
	proId int,		--省ID
	foreign key (countryId) references country(id),
	foreign key (proId) references province(id)		
)
--select *from university

------------------------------------------- 高中表 senior -------------------------------------------							
--drop table senior						
create table senior(	
	id int not null primary key auto_increment,	--高中ID		
	name   varchar(64) not null,			--高中名		
	cityId	int,			--所属城市ID		
	townId	int,					--所属乡村ID
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)	
)	
	

/**
--drop table senior2
select * into senior2 from senior
select *from senior2
insert into   senior2(se_name,se_cityId,se_townId) select se_name,se_cityId,se_townId  from senior2
select count(se_id) from senior2
select count(*) from senior2
select max(se_id)from senior2
select se_id from senior2 where se_id ='2323' 
**/
------------------------------------------- 技校表 artistry -------------------------------------------							
--drop table artistry						
create table artistry(	
	ar_id		int		primary key identity,	--技校ID		
	ar_name		varchar	(64)	,			--技校名		
	ar_cityId	int		,			--所属城市ID		
	ar_townId	int					--所属乡村ID
)	

--select *from artistry

insert into artistry select ar_name,ar_cityId,ar_townId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',artistry$)		
------------------------------------------- 初中表 junior -------------------------------------------							
--drop table junior						
create table junior(	
	ju_id		int		primary key identity,	--初中ID		
	ju_name		varchar	(64)	,			--初中名		
	ju_cityId	int		,			--所属城市ID		
	ju_townId	int					--所属乡村ID		
)	

--select *from junior

insert into junior select ju_name,ju_cityId,ju_townId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',junior$)							
------------------------------------------- 邮箱表 email -------------------------------------------							
--drop table email						
create table email(	
	e_id		int		primary key identity,	--邮箱ID		
	e_name		varchar	(16)				--邮箱域名		
)	

--select *from email

insert into email select e_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',email$)	
						
------------------------------------------- 所在省表 localProvince -------------------------------------------							
--drop table localProvince					
create table localProvince(	
	lp_id		int		primary key identity,	--所在省ID		
	lp_name		varchar	(32)				--所在省名		
)	
--select *from localProvince

insert into localProvince select lp_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',localProvince$)				
------------------------------------------- 所在城市表 localCity -------------------------------------------								
--drop table localCity						
create table localCity(	
	lc_id		int		primary key identity,	--所在城市ID		
	lc_name		varchar	(32)	,			--所在城市名		
	lc_lpId		int					--所在省ID		
)	
insert into localCity select lc_name,lc_lpId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',localCity$)	
--select *from localCity
						
------------------------------------------- 行业表 trade	 -------------------------------------------								
--drop table trade					
create table trade(	
	tr_id		int		primary key identity,	--行业ID		
	tr_name		varchar	(32)				--行业	
)	
insert into trade select tr_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',trade$)	
--select *from trade
------------------------------------------- 行业细节表 tradeInfo -------------------------------------------							
--drop table tradeInfo							
create table tradeInfo(	
	ti_id		int		primary key identity,	--行业细节ID		
	ti_name		varchar	(32)	,			--行业细节		
	ti_traId	int					--行业ID		
)	
insert into tradeInfo select ti_name,ti_traId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',tradeInfo$)	
--select *from tradeInfo						
------------------------------------------- 职位表 job -------------------------------------------							
--drop table job						
create table job(	
	j_id		int		primary key identity,	--职位ID		
	j_name		varchar	(32)				--职位	
)	
insert into job select j_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',job$)	
--select *from job
------------------------------------------- 职位细节表 jobInfo -------------------------------------------							
--drop table jobInfo						
create table jobInfo(	
	ji_id		int		primary key identity,	--ID		
	ji_name		varchar	(34)	,			--职位细节		
	ji_jobId	int					--职位ID		
)							
							
insert into jobInfo select ji_name,ji_jobId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',jobInfo$)	
--select *from jobInfo							
							



/*
------------------------------------------- 友情链接表 link -------------------------------------------	
				
cteate table link(
	l_id		int		primary key identity,	--链接ID
	l_name		varchar	(64),		
	l_imgName	varchar	(64),		
	l_url		varchar	(128)		
)
------------------------------------------- 广告表 adv -------------------------------------------	
			
cteate table adv(
	ad_id		int		primary key identity,	--广告ID
	ad_name		varchar	(64)	,		
	ad_imgName	varchar	(64)	,		
	ad_url		varchar	(128)
)		
*/