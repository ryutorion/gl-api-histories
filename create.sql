PRAGMA foreign_keys = true;

-- OpenGL versions
CREATE TABLE versions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  major INTEGER NOT NULL,
  minor INTEGER NOT NULL
);

-- versions {{{
BEGIN;
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 0);
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 1);
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 2);
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 3);
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 4);
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 5);
INSERT INTO versions (name, major, minor) VALUES ('GL', 2, 0);
INSERT INTO versions (name, major, minor) VALUES ('GL', 2, 1);
INSERT INTO versions (name, major, minor) VALUES ('GL', 3, 0);
INSERT INTO versions (name, major, minor) VALUES ('GL', 3, 1);
INSERT INTO versions (name, major, minor) VALUES ('GL', 3, 2);
INSERT INTO versions (name, major, minor) VALUES ('GL', 3, 4);
INSERT INTO versions (name, major, minor) VALUES ('GL', 4, 0);
INSERT INTO versions (name, major, minor) VALUES ('GL', 4, 1);
INSERT INTO versions (name, major, minor) VALUES ('GL', 4, 2);
INSERT INTO versions (name, major, minor) VALUES ('GLES', 1, 0);
INSERT INTO versions (name, major, minor) VALUES ('GLES', 1, 1);
INSERT INTO versions (name, major, minor) VALUES ('GLES', 2, 0);
END;
-- }}}

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
  PRIMARY KEY (api_id, version_id)
);

.read gl_1_0.sql
.read gl_1_1.sql
