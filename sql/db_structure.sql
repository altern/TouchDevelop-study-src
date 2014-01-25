CREATE TABLE authors (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TINYTEXT NOT NULL,
  author_id TINYTEXT NOT NULL,
  join_date DATETIME NULL,
  features INTEGER UNSIGNED NULL,
  activedays INTEGER UNSIGNED NULL,
  receivedpositivereviews INTEGER UNSIGNED NULL,
  subscribers INTEGER UNSIGNED NULL,
  score INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE authors_learned_features (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  author_id INTEGER UNSIGNED NULL,
  feature_id INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE chunks (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  content TEXT NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE features (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TEXT NULL,
  description TEXT NULL,
  source TEXT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE hashtags (
  id INTEGER(11) NOT NULL AUTO_INCREMENT,
  name TINYTEXT NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE libraries (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TEXT NULL,
  library_id TINYTEXT NULL,
  description TEXT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE pages (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TEXT NULL,
  url_id TEXT NULL,
  script_id TINYTEXT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TINYTEXT NOT NULL,
  content TEXT NOT NULL,
  date DATETIME NOT NULL,
  script_id TINYTEXT NOT NULL,
  author_id INTEGER(11) NOT NULL,
  description TEXT NOT NULL,
  positivereviews INTEGER UNSIGNED NULL,
  cumulativepositivereviews INTEGER UNSIGNED NULL,
  installations INTEGER UNSIGNED NULL,
  runs INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_chunks (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER(11) NOT NULL,
  chunk_id INTEGER(11) NOT NULL,
  seq INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_features (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER UNSIGNED NOT NULL,
  feature_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_hashtags (
  id INTEGER(11) NOT NULL AUTO_INCREMENT,
  script_id INTEGER(11) NOT NULL,
  hashtag_id INTEGER(11) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_history (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER UNSIGNED NULL,
  base_id INTEGER UNSIGNED NULL,
  successor_id INTEGER UNSIGNED NULL,
  author_id INTEGER UNSIGNED NULL,
  node_id INTEGER UNSIGNED NULL,
  date DATETIME NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_libraries (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER UNSIGNED NOT NULL,
  library_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_scores (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER UNSIGNED NULL,
  positivereviews INTEGER UNSIGNED NULL,
  cumulativepositivereviews INTEGER UNSIGNED NULL,
  installations INTEGER UNSIGNED NULL,
  runs INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE scripts_tutorials (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  script_id INTEGER UNSIGNED NOT NULL,
  tutorial_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tutorials (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name TEXT NULL,
  script_id INTEGER UNSIGNED NULL,
  is_interactive BOOL NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tutorials_by_author (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  author_id INTEGER UNSIGNED NOT NULL,
  tutorial_id INTEGER UNSIGNED NOT NULL,
  is_completed BOOL NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tutorials_features (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tutorial_id INTEGER UNSIGNED NOT NULL,
  feature_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tutorials_libraries (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tutorial_id INTEGER UNSIGNED NOT NULL,
  library_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tutorials_pages (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  seq INTEGER UNSIGNED NULL,
  tutorial_id INTEGER UNSIGNED NULL,
  page_id INTEGER UNSIGNED NULL,
  category_name TEXT NULL,
  PRIMARY KEY(id)
);


