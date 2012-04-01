PRAGMA foreign_keys = true;

-- OpenGL versions
CREATE TABLE versions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  major INTEGER NOT NULL,
  minor INTEGER NOT NULL
);

-- OpenGL APIs
CREATE TABLE apis (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

-- OpenGL API Histories
/*
 * status
 * 0 - not exist
 * 1 - exist
 * 2 - new
 * 3 - deprecated
 * 4 - deleted
 */
CREATE TABLE histories (
  api_id INTEGER NOT NULL REFERENCES apis(id),
  version_id INTEGER NOT NULL REFERENCES versions(id),
  status INTEGER NOT NULL CHECK(0 <= status & status <= 3),
  PRIMARY KEY (api_id, version_id, status)
);

.read gl_1_0.sql
.read gl_1_1.sql
