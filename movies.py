from hyperon import MeTTa


metta = MeTTa()


metta.run(open("movie.metta").read())


year = input("Enter a release year: ")


query = f"!(match &self (Movie $name {year}) $name)"


result = metta.run(query)


if result:
    print(f"\nMovies released in {year}:")
    for movie in result:
        print(movie)
else:
    print("No movies found.")
