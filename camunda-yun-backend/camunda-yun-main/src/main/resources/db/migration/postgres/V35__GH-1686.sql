-- 系统监控改用double类型
ALTER TABLE SY_MONITOR
    ALTER COLUMN DISK_IO_READ_SPEED TYPE DOUBLE PRECISION;

ALTER TABLE SY_MONITOR
    ALTER COLUMN DISK_IO_WRITE_SPEED TYPE DOUBLE PRECISION;

ALTER TABLE SY_MONITOR
    ALTER COLUMN NETWORK_IO_WRITE_SPEED TYPE DOUBLE PRECISION;

ALTER TABLE SY_MONITOR
    ALTER COLUMN NETWORK_IO_READ_SPEED TYPE DOUBLE PRECISION;