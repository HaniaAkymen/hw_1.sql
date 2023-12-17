//В рамках БД "видео-хостинг":
//Создать таблицы реакций и комментариев:

CREATE TABLE reactions(
	reactions_id int,
	created_at timestamp,
	author_id int,
	value int,
	video id int
);

CREATE TABLE comments (
	comments_id int,
	created_at timestamp,
	author_id int,
    video_id int,
    content varchar(1024)
);

//Добавить несколько записей в каждую таблицу выше:

INSERT INTO reactions (reaction_id, created_at, author_id, value, video_id)
VALUES
	(1, current_timestamp(), 2, 5, 1),
	(2, current_timestamp(), 1, 4, 2),
	(3, current_timestamp(), 2, 3, 1)

INSERT INTO comments (comments_id, created_at, author_id, video_id, content)
VALUES
	(1, current_timestamp(), 2, 1, 'I like this video, please add more'),
	(2, current_timestamp(), 3, 2, 'this video is terrible'),
	(3, current_timestamp(), 1, 2, 'This video has no sound')