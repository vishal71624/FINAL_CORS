-- Drop and recreate round2_challenges with correct_sql column
DROP TABLE IF EXISTS round2_challenges;

CREATE TABLE round2_challenges (
  id SERIAL PRIMARY KEY,
  difficulty TEXT NOT NULL CHECK (difficulty IN ('easy', 'medium', 'hard')),
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  scenario TEXT,
  schema TEXT,
  correct_sql TEXT,
  base_table_data JSONB NOT NULL DEFAULT '[]',
  test_cases JSONB NOT NULL DEFAULT '[]',
  expected_keywords JSONB NOT NULL DEFAULT '[]',
  total_points INTEGER NOT NULL DEFAULT 15,
  time_limit INTEGER NOT NULL DEFAULT 180,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
