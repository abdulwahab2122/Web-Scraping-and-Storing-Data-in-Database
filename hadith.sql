--Creating tables

CREATE TABLE `hadith`.`hadith` (`id` INT(255) NOT NULL ,
 `description` VARCHAR(255) NULL DEFAULT NULL ) ENGINE = InnoDB;

 ALTER TABLE `hadith` ADD PRIMARY KEY(`id`);


CREATE TABLE `hadith`.`hadith_details` (`id` INT(255) NOT NULL , 
`summary` VARCHAR(255) NOT NULL ,
 `video_link` VARCHAR(255) NOT NULL DEFAULT 'noimg.jpg' , 
 `next-hadith` VARCHAR(255) NOT NULL ,
  `conclusion` VARCHAR(255) NOT NULL ) ENGINE = InnoDB;

  CREATE TABLE `hadith`.`video-section` (`id` INT(255) NOT NULL , 
  `url` VARCHAR(255) NOT NULL DEFAULT 'noimg.jpg' , 
  `share-link` VARCHAR(255) NOT NULL ) ENGINE = InnoDB;


  --adding foriegn key relations

  ALTER TABLE `video-section` DROP FOREIGN KEY `fk`; ALTER TABLE `video-section` ADD CONSTRAINT `fk-name` FOREIGN KEY (`id`)
   REFERENCES `hadith`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;


   ALTER TABLE `video-section` DROP FOREIGN KEY `fk-name`; ALTER TABLE `video-section` ADD CONSTRAINT `fk-name1` FOREIGN KEY (`id`) 
   REFERENCES `hadith`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

