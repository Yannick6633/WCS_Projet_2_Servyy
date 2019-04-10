
CREATE TABLE `user` (
    `id` INT(11)  NOT NULL ,
    `firstname` VARCHAR(55)  NOT NULL ,
    `lastname` VARCHAR(55)  NOT NULL ,
    `email` VARCHAR(55)  NOT NULL ,
    `password` VARCHAR(55)  NOT NULL ,
    `status` INT  NOT NULL ,
    `description` TEXT  NOT NULL ,
    `phone` VARCHAR(55)  NOT NULL ,
    `visibility` INT  NOT NULL ,
    `city_id` INT(11)  NOT NULL ,
    `distance` INT  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `user_service` (
    `user_id` INT(11)  NOT NULL ,
    `service_id` INT(11)  NOT NULL 
);

CREATE TABLE `service` (
    `id` INT(11)  NOT NULL ,
    `label` VARCHAR(55)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `city` (
    `id` INT  NOT NULL ,
    `city` VARCHAR(55)  NOT NULL ,
    `zip_code` INT(10)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `comment` (
    `id` INT  NOT NULL ,
    `content` TEXT  NULL ,
    `rate` INT  NOT NULL ,
    `author_id` INT  NOT NULL ,
    `provider_id` INT  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

ALTER TABLE `user` ADD CONSTRAINT `fk_user_id` FOREIGN KEY(`id`)
REFERENCES `user_service` (`user_id`);

ALTER TABLE `user` ADD CONSTRAINT `fk_user_city_id` FOREIGN KEY(`city_id`)
REFERENCES `city` (`id`);

ALTER TABLE `service` ADD CONSTRAINT `fk_service_id` FOREIGN KEY(`id`)
REFERENCES `user_service` (`service_id`);

ALTER TABLE `comment` ADD CONSTRAINT `fk_comment_author_id` FOREIGN KEY(`author_id`)
REFERENCES `user` (`id`);

ALTER TABLE `comment` ADD CONSTRAINT `fk_comment_provider_id` FOREIGN KEY(`provider_id`)
REFERENCES `user` (`id`);

