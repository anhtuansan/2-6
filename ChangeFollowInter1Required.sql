
----------------Thêm bảng dimension
CREATE TABLE Dimensions (
    DimensionId INT PRIMARY KEY IDENTITY(1,1),   -- Auto-incrementing primary key
    DimensionName NVARCHAR(100) NOT NULL         -- Name of the dimension, not allowing NULL values
)
go
insert into Dimensions values('Computing fundamental')
go
insert into Dimensions values('Development website beginning fundamental')

------------------query
select * from Dimensions







-------------------Thay đổi bảng subject ,khóa ngoại đến dimension
ALTER TABLE subjects
ADD dimension_id INT
go
ALTER TABLE subjects
ADD CONSTRAINT FK_Subjects_Dimensions FOREIGN KEY (dimension_id)
REFERENCES Dimensions(DimensionID)

go
update subjects set dimension_id = 1 where id < 10
go
update subjects set dimension_id = 2 where id >= 10


----------------------query
select * from subjects




----------------------------(3) 
CREATE TABLE Tag (
    id INT PRIMARY KEY IDENTITY(1,1),  -- Khóa chính tự tăng
    tagName NVARCHAR(100) NOT NULL     -- Tên thẻ, không cho phép NULL
)
go
insert into Tag values('#fpt')
go
insert into Tag values('#java')
go
insert into Tag values('#beginner')


go
CREATE TABLE subject_has_tag (
    subject_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (subject_id, tag_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
)
go

INSERT INTO subject_has_tag (subject_id, tag_id)
values(6,1)
go
INSERT INTO subject_has_tag (subject_id, tag_id)
values(6,2)
go
INSERT INTO subject_has_tag (subject_id, tag_id)
values(6,3)
go
INSERT INTO subject_has_tag (subject_id, tag_id)
values(2,1)
go

-----------query
select * from Tag
select * from subject_has_tag



