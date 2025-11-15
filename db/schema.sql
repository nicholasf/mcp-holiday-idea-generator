-- Worlds table

CREATE TABLE holiday_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE holidays (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    beginning DATE NOT NULL,
    ending DATE NOT NULL,
    holiday_type_id INTEGER REFERENCES holiday_types(id)
);

CREATE TABLE holidayers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    likes TEXT[],
    dislikes TEXT[]
);

CREATE TABLE holiday_holidayers (
    holiday_id INTEGER REFERENCES holidays(id),
    holidayer_id INTEGER REFERENCES holidayers(id),
    PRIMARY KEY (holiday_id, holidayer_id)
);

CREATE TABLE holiday_suggestions (
    id SERIAL PRIMARY KEY,
    holiday_id INTEGER REFERENCES holidays(id),
    country VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    suggestion TEXT NOT NULL
);

