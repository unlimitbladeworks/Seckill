-- ���ݿ��ʼ���ű�

--�������ݿ�
 CREATE DATABASE seckill;
 -- ʹ�����ݿ�
 use seckill;
 --������ɱ����
 CREATE TABLE seckill(
 `seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
 `name` varchar(120) NOT NULL COMMENT '��Ʒ����',
 `number` int NOT NULL COMMENT '�������',
 `start_time` timestamp NOT NULL COMMENT '��ɱ����ʱ��',
 `end_time` timestamp NOT NULL COMMENT '��ɱ����ʱ��',
 `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '������ʱ��',
 PRIMARY KEY (seckill_id),
 key idex_start_time(start_time),
 key idex_end_time(end_time),
 key idex_create_time(create_time)
 )ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��ɱ����';
 
 --��ʼ������
 insert into 
 	seckill(name,number,start_time,end_time)
 values
 	('1000Ԫ��ɱiPhone6',100,'2016-8-24 00:00:00','2016-9-24 00:00:00' ),
 	('500Ԫ��ɱiPad2',200,'2016-8-24 00:00:00','2016-9-24 00:00:00' ),
 	('300Ԫ��ɱС��4',300,'2016-8-24 00:00:00','2016-9-24 00:00:00' ),
 	('200Ԫ��ɱ����note',400,'2016-8-24 00:00:00','2016-9-24 00:00:00' );
 	
--��ɱ�ɹ���ϸ��
--�û���¼��֤��ص���Ϣ
create table success_killed(
`seckill_id` bigint NOT NULL COMMENT '��ɱ��Ʒid',
`user_phone` bigint NOT NULL COMMENT '�û��ֻ���',
`state` tinyint NOT NULL DEFAULT -1 COMMENT '״̬��ʾ: -1:��Ч  0:�ɹ�  1:�Ѹ���  2:�ѷ���',
`create_time` timestamp NOT NULL COMMENT '����ʱ��',
PRIMARY KEY (seckill_id,user_phone) ,/*��������*/
KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��';
 	
 --�������ݿ����̨
 mysql -uroot -p
 
 --Ϊʲô��дDDL
 --��¼ÿ�����ߵ�DDL�޸�
 --����V1.1
 ALTER TABLE seckill
 DROP INDEX idx_create_time,
 ADD index idx_c_s(start_time,create_time);
 
 --����V1.2
 --DDL
 