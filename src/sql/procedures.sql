-- Auto-generated: procedures — procedures v1663
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_1663 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_1663_name
    ON procedures_—_procedures_1663(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_1663_created
    ON procedures_—_procedures_1663(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_1663 (name, counter)
VALUES
    ('item_0', 'val_0_1663'),
    ('item_1', 'val_1_1663'),
    ('item_2', 'val_2_1663'),
    ('item_3', 'val_3_1663'),
    ('item_4', 'val_4_1663'),
    ('item_5', 'val_5_1663'),
    ('item_6', 'val_6_1663'),
    ('item_7', 'val_7_1663'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_1663_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_1663
GROUP BY name
ORDER BY total DESC;
