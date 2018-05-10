CREATE TABLE users (
  id         BIGSERIAL PRIMARY KEY,
  username   VARCHAR(255) UNIQUE,
  password   VARCHAR(255),
  firstname  VARCHAR(255),
  secondname VARCHAR(255),
  role       VARCHAR(255)
);


