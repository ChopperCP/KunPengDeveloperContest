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
    'IN_cb4b95c8e5864765b6a3998b6ec02fc0',
    'OUT_8c9c651940d647c0a3ae47f94cdce68a',
    'Gate 1'
),
(
    2,
    34.78544,
    89.66666,
    'IN_05361edc1065420786c610e66cf3e465',
    'OUT_436651b68b1f4448905e75cc8940c966',
    'Gate 2'
);

INSERT INTO `record` (wechat_id,port_id,status) values (
    '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
    1,
    'IN_NORMAL'
),
(
    '123Av0Ga1X8XLA0aahGa1QCvgB2Av0GA',
    2,
    'OUT_ERROR'
);