-module(zadanie15).
-export([
    new_person/3,
    new_movie/4,
    new_book/4,
    main/0
]).

% Definicje rekordów
-record(person, {
    name,
    age,
    email
}).

-record(movie, {
    title,
    year,
    director,
    genre
}).

-record(book, {
    title,
    author,
    year,
    pages
}).


% Tworzy rekord typu osoba
new_person(Name, Age, Email) ->
    #person{name = Name, age = Age, email = Email}.

% Tworzy rekord typu film
new_movie(Title, Year, Director, Genre) ->
    #movie{title = Title, year = Year, director = Director, genre = Genre}.

% Tworzy rekord typu książka
new_book(Title, Author, Year, Pages) ->
    #book{title = Title, author = Author, year = Year, pages = Pages}.



main() ->
    Person = new_person("Jan Kowalski", 35, "jan@example.com"),
    Movie  = new_movie("Inception", 2010, "Christopher Nolan", "Sci-Fi"),
    Book   = new_book("Dziady", "Adam Mickiewicz", 1823, 300),

    io:format("Osoba:~p~n", [Person]),
    io:format("Film:~p~n", [Movie]),
    io:format("Książka:~p~n", [Book]).
