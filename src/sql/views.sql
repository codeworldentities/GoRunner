-- Auto-generated: views — views v3017
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_3017 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_3017_name
    ON views_—_views_3017(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_3017_created
    ON views_—_views_3017(created_at DESC);

-- Seed data
INSERT INTO views_—_views_3017 (name, metadata)
VALUES
    ('item_0', 'val_0_3017'),
    ('item_1', 'val_1_3017'),
    ('item_2', 'val_2_3017');

-- View
CREATE OR REPLACE VIEW v_views_—_views_3017_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_3017
GROUP BY name
ORDER BY total DESC;
