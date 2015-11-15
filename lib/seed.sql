INSERT INTO
  locations
VALUES
  (default, 'Denver', 'CO', '80227'),
  (default, 'Boulder', 'CO', '80303'),
  (default, 'Longmont', 'CO', '80501');
INSERT INTO
  shelters
VALUES
  (default, 'Rocky Mountain Exotic Pet Rescue', (SELECT id FROM locations WHERE city = 'Denver')),
  (default, 'Denver Dumb Friends League', (SELECT id FROM locations WHERE city = 'Denver'));

INSERT INTO
  animals
VALUES
  (default, 'Billy','12','snake', (SELECT id FROM shelters WHERE name = 'Rocky Mountain Exotic Pet Rescue')),
  (default, 'Bob','7','snake', (SELECT id FROM shelters WHERE name = 'Rocky Mountain Exotic Pet Rescue')),
  (default, 'Fred','11','turtle', (SELECT id FROM shelters WHERE name = 'Denver Dumb Friends League')),
  (default, 'John','18','turtle', (SELECT id FROM shelters WHERE name = 'Denver Dumb Friends League')),
  (default, 'Joe','2','lizard', (SELECT id FROM shelters WHERE name = 'Rocky Mountain Exotic Pet Rescue')),
  (default, 'Willard','1','lizard', (SELECT id FROM shelters WHERE name = 'Denver Dumb Friends League')),
  (default, 'Duncan','6','lizard', (SELECT id FROM shelters WHERE name = 'Denver Dumb Friends League'));
