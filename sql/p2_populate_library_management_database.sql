USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES
    ('Stephen King'),
    ('J.K. Rowling'),
    ('George R.R. Martin'),
    ('Haruki Murakami');

INSERT INTO genres (genre_name)
VALUES
    ('Fantasy'),
    ('Horror'),
    ('Science Fiction'),
    ('Mystery');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES
    ('It', 1986, 1, 2),
    ('The Shining', 1980, 1, 2),
    ('Harry Potter and the Sorcerer\'s Stone', 1997, 2, 1),
    ('A Game of Thrones', 1996, 3, 1),
    ('Norwegian Wood', 1987, 4, 4);

INSERT INTO users (username, email)
VALUES
    ('john_doe', 'john.doe@example.com'),
    ('jane_smith', 'jane.smith@example.com'),
    ('alice_wonder', 'alice.wonder@example.com'),
    ('bob_marley', 'bob.marley@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
    (1, 1, '2024-09-01', '2024-09-15'),
    (2, 2, '2024-09-05', '2024-09-20'),
    (3, 3, '2024-09-10', NULL),
    (4, 4, '2024-09-12', NULL);
