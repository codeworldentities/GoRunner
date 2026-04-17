-- Auto-generated: stored procedure v3037
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_3037 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3037_name
    ON stored_procedure_3037(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3037_created
    ON stored_procedure_3037(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_3037 (name, status)
VALUES
    ('item_0', 'val_0_3037'),
    ('item_1', 'val_1_3037'),
    ('item_2', 'val_2_3037'),
    ('item_3', 'val_3_3037'),
    ('item_4', 'val_4_3037'),
    ('item_5', 'val_5_3037'),
    ('item_6', 'val_6_3037'),
    ('item_7', 'val_7_3037'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_3037_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_3037
GROUP BY name
ORDER BY total DESC;
