CREATE TABLE doc_type(
       doc_type_id INTEGER unique not null,
       doc_type CHAR(255) unique not null,
       PRIMARY KEY (doc_type_id)
);

INSERT INTO doc_type VALUES(1,'IUGONET');
INSERT INTO doc_type VALUES(2,'JaLC');
INSERT INTO doc_type VALUES(3,'XHTML');

--

CREATE TABLE doc(
       doi_suffix CHAR(255) NOT NULL,	
       version INTEGER NOT NULL,
       user_id INTEGER NOT NULL,
       doc_type_id INTEGER NOT NULL,
       document TEXT NOT NULL,
       PRIMARY KEY (doi_suffix, version, user_id, doc_type_id),
       FOREIGN KEY (doc_type_id) REFERENCES doc_type(doc_type_id)
);
