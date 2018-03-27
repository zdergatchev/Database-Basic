USE book_library;
UPDATE books
SET title = REPLACE(title, "The", "***") 
WHERE SUBSTRING(title, 1, 3) = "The";
SELECT title FROM books
WHERE SUBSTRING(title, 1, 3) = "***";