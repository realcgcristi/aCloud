CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    api_key TEXT
);

CREATE TABLE IF NOT EXISTS content (
    vanity TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    data TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER,
    is_private INTEGER DEFAULT 0,
    password TEXT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);