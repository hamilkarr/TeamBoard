CREATE TABLE `boardview` (
  `postNm` int NOT NULL,
  `browserId` varchar(45) NOT NULL,
  PRIMARY KEY (`postNm`,`browserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='게시글 조회 기록'

ALTER TABLE `teamboard`.`board` 
ADD COLUMN `viewCnt` INT UNSIGNED NULL DEFAULT 0 AFTER `commentCnt`;

ALTER TABLE `teamboard`.`board` 
ADD COLUMN `gid` BIGINT NULL AFTER `postNm`;
