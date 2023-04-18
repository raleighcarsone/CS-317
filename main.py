import mysql.connector

# Creating connection object
mydb = mysql.connector.connect(host='localhost', user='root', password='Mog', database='starwarscharacters')
cursor = mydb.cursor()


def filter_display(filterType):
    query = f'SELECT {filterType} FROM VideoGames WHERE {filterType} < %s'
    cursor.execute(query, (filterType,))
    for title, year in cursor:
        print('{}, {}'.format(title, year))


while True:
    print("What would you like to do today?\nADD ENTRY\nUPDATE DATABASE\nFILTER DATABASE\nVIEW CHARACTERS\nEXIT")
    entry = input()

    if entry == "ADD ENTRY":
        name = input("Name [string]: ")
        mediaTitle = input("Media (movie, tv show, etc.) [string]: ")
        species = input("Species [string]: ")
        weapon = input("Weapon type [string]: ")
        weaponCount = int(input("Weapon Quantity [int]: "))
        occupation = input("Occupation [string]: ")
        planet = input("Origin Planet [string]: ")
        force = bool(input("Force Sensitive ['True'/'False']: "))

        cursor.execute("""
        INSERT INTO characterinformation(Name, Species, WeaponQuantity, Weapon, Occupation, OriginPlanet, ForceSensitive, MediaTitle)
        VALUES (?,?,?,?,?,?,?,?)
        """, (name, species, weaponCount, weapon, occupation, planet, force, mediaTitle))

    elif entry == "UPDATE DATABASE":
        pass

    elif entry == "FILTER DATABASE":
        filterinput = input()

    elif entry == "VIEW CHARACTERS":
        cursor.execute("SELECT * FROM characterinformation")
        for character in cursor:
            print(character)

    elif entry == "EXIT":
        mydb.close()
        print("Thank you!")
        exit('User exit')

    else:
        print("Please enter a valid input\n")

    print("\n")
