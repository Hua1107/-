-- 員工
create table Employee
(
Em_id char(5),
Em_name	nvarchar(10) not null,
Em_dep nvarchar(10) null,
primary key(Em_id)
)

insert into Employee
values
('S0001',    '吳非蒙', '生產部'	 ),
('S0002',    '蔡宗樺', '生產部'	 ),
('S0003',	 '曾紹齊', '生產部'	 ),
('S0004',	 '林偉勝', '生產部'	 ),
('S0005',	 '盧冠宇', '生產部'	 )

