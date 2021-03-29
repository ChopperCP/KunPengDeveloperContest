INSERT INTO `user` values (
    '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
    'employee',
    'ChopperCP QR STR',
    '12345678901',
    'ChopperCP'
),
(
    '123Av0Ga1X8XLA0aahGa1QCvgB2Av0GA',
    'security',
    'Zhang 3 QR STR',
    '88888888888',
    'Zhang 3'
),
(
    '2424242a1X8XLA0BMhGa1QCvgB2Av0GA',
    'admin',
    'Admin QR STR',
    '00000000000',
    'Admin'
);

INSERT INTO `port` values (
    1,
    123.77777,
    99.3333,
    'IN_QR_STR',
    'OUT_QR_STR',
    'Gate 1'
),
(
    2,
    34.78544,
    89.66666,
    'IN_QR_STR',
    'OUT_QR_STR',
    'Gate 2'
);

INSERT INTO `record` (wechat_id,port_id,status) values (
    '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
    1,
    'normal'
),
(
    '123Av0Ga1X8XLA0aahGa1QCvgB2Av0GA',
    2,
    'error'
);