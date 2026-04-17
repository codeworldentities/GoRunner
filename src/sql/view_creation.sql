-- Auto-generated: view creation v6809
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_6809 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_6809_name
    ON view_creation_6809(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_6809_created
    ON view_creation_6809(created_at DESC);

-- Seed data
INSERT INTO view_creation_6809 (name, description)
VALUES
    ('item_0', 'val_0_6809'),
    ('item_1', 'val_1_6809'),
    ('item_2', 'val_2_6809'),
    ('item_3', 'val_3_6809'),
    ('item_4', 'val_4_6809'),
    ('item_5', 'val_5_6809'),
    ('item_6', 'val_6_6809'),
    ('item_7', 'val_7_6809'),

-- View
CREATE OR REPLACE VIEW v_view_creation_6809_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_6809
GROUP BY name
ORDER BY total DESC;
