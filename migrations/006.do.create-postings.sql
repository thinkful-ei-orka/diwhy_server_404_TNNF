CREATE TABLE postings (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    accepted_app TEXT,
    date_created TIMESTAMPTZ DEFAULT now() NOT NULL,

    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
    category INTEGER REFERENCES categories(id) ON DELETE SET NULL
);