BEGIN;

CREATE TABLE contact.contacts (
    "id"            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "email"         varchar,
    "first_name"    varchar,
    "last_name"     varchar,
    "phone"         varchar,
    "company"       varchar,
    "message"       TEXT,
    "created_at"    TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at"    TIMESTAMPTZ,
    "deleted_at"    TIMESTAMPTZ,

    CHECK (LENGTH(email) > 5)
);

CREATE TABLE contact.support_requests (
    "id"            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "person"        JSONB,
    "support_data"  JSONB,
    "created_at"    TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at"    TIMESTAMPTZ,
    "deleted_at"    TIMESTAMPTZ
);

COMMIT;