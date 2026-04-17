-- Auto-generated: schema — database schema definition v156
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_156 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    email VARCHAR(255),
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_156_name
    ON schema_—_database_schema_definition_156(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_156_created
    ON schema_—_database_schema_definition_156(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_156 (name, metadata)
VALUES
    ('item_0', 'val_0_156'),
    ('item_1', 'val_1_156'),
    ('item_2', 'val_2_156'),
    ('item_3', 'val_3_156'),
    ('item_4', 'val_4_156'),
    ('item_5', 'val_5_156'),
    ('item_6', 'val_6_156'),
    ('item_7', 'val_7_156'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_156_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_156
GROUP BY name
ORDER BY total DESC;
