-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-24 01:29:52.361




-- tables
-- Table loaisanpham
CREATE TABLE loaisanpham (
    loaisanpham_id int    NOT NULL  AUTO_INCREMENT,
    loaisanpham_ten varchar(100)    NOT NULL ,
    CONSTRAINT loaisanpham_pk PRIMARY KEY (loaisanpham_id)
);

-- Table sanpham
CREATE TABLE sanpham (
    sanpham_id int    NOT NULL  AUTO_INCREMENT,
    loaisanpham_id int    NOT NULL ,
    ten varchar(100)    NOT NULL ,
    gia int    NOT NULL ,
    mota varchar(100)    NOT NULL ,
    CONSTRAINT sanpham_pk PRIMARY KEY (sanpham_id)
);





-- foreign keys
-- Reference:  sanpham_loaisanpham (table: sanpham)


ALTER TABLE sanpham ADD CONSTRAINT sanpham_loaisanpham FOREIGN KEY sanpham_loaisanpham (loaisanpham_id)
    REFERENCES loaisanpham (loaisanpham_id);



-- End of file.

