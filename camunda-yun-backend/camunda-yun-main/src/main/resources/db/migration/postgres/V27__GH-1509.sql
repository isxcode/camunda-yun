-- 元数据db添加状态标示
ALTER TABLE SY_META_DATABASE
    ADD COLUMN STATUS varchar(200);