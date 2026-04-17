-- Auto-generated: index optimization v3261
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_3261 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3261_name
    ON index_optimization_3261(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3261_created
    ON index_optimization_3261(created_at DESC);

-- Seed data
INSERT INTO index_optimization_3261 (name, metadata)
VALUES
    ('item_0', 'val_0_3261'),
    ('item_1', 'val_1_3261'),
    ('item_2', 'val_2_3261');

-- View
CREATE OR REPLACE VIEW v_index_optimization_3261_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_3261
GROUP BY name
ORDER BY total DESC;
