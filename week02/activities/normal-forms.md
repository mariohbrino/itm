# Normal Forms

In relational database design, normal forms are a series of guidelines to reduce redundancy and
improve data integrity. The most commonly used normal forms are:

- 1NF: the value stored at the intersection of each row and column must be a scalar value, and
    a table must not contain repeating columns. The table should have a primary key.
- 2NF: every non-key column must depend on the entire primary key (no partial dependencies).
- 3NF: every non-key column must depend only on the primary key.

> Data should be accurate and reliable and not duplicated unnecessarily. By defining constraints
on our data we can ensure the data has integrity and is consistent.
