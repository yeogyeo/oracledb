insert into freeboard values (
1,'게시글을 등록합니다.',
'게시판에서 내용을 입력하는 부분에 글자를 적는 것입니다.',
sysdate,'aaa','1.jpg');
insert into freeboard values (
2, '게시글02','내용을 넣는 부분',
sysdate,'bbb','2.jpg');
commit;
select * from freeboard;