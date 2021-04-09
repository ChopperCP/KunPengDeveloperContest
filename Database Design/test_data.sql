INSERT INTO `user` values (
    '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
    'employee',
    'ChopperCP QR STR',
    '12345678901',
    '张三'
),
(
    '123Av0Ga1X8XLA0aahGa1QCvgB2Av0GA',
    'security',
    'Zhang 3 QR STR',
    '88888888888',
    '李四'
),
(
    '2424242a1X8XLA0BMhGa1QCvgB2Av0GA',
    'admin',
    'Admin QR STR',
    '00000000000',
    '王五'
);

INSERT INTO `port` values (
    1,
    123.77777,
    99.3333,
    'IN_cb4b95c8e5864765b6a3998b6ec02fc0',
    'OUT_8c9c651940d647c0a3ae47f94cdce68a',
    '暨南大学北门'
),
(
    2,
    34.78544,
    89.66666,
    'IN_05361edc1065420786c610e66cf3e465',
    'OUT_436651b68b1f4448905e75cc8940c966',
    '暨南大学西门'
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

INSERT INTO `admin` (adminname,password_hash) values (
    'Admin',
    'dd33dccc2a8d5e387ea313c0cdcbe1de8054628d6e068797a08b9c785e97f441'
);