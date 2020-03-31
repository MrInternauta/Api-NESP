IF NOT EXISTS projects
(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL CHECK
(name <> ''),
    priority INTEGER NOT NULL,
    description TEXT,
    deliverydate DATE NOT NULL
);

CREATE TABLE
IF NOT EXISTS tasks
(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL CHECK
(name <> ''),
    done BOOLEAN,
    projectId INTEGER REFERENCES projects
(id)
);

-- INSERT PROJECT
INSERT INTO projects
    (name, priority, description, deliverydate)
VALUES
    ('Hacer una app', 1, 'Usando JS', '2020-03-12');

INSERT INTO projects
    (name, priority, description, deliverydate)
VALUES
    ('Hacer una front', 1, 'Usando Ionic', '2020-03-13');

INSERT INTO projects
    (name, priority, description, deliverydate)
VALUES
    ('Hacer una desk', 2, 'Usando Electron', '2020-03-15');

--INSERT TASK 

INSERT INTO tasks
    (name, done, projectId)
values
('Descargar node',
false,
1
);

INSERT INTO tasks
    (name, done, projectId)
values
('Descargar ionic',
true,
2
);