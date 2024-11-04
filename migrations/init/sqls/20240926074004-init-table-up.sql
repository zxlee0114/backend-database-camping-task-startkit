CREATE TABLE IF NOT EXISTS users (
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    name VARCHAR(20) NOT NULL,
    email VARCHAR(320) NOT NULL,
    role VARCHAR(50) NOT NULL DEFAULT 'CUSTOMER',
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    PRIMARY KEY (id),
    CONSTRAINT users_email_unique UNIQUE(email),
    CONSTRAINT users_name_unique UNIQUE(name)
);