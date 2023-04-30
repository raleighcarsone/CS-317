import mysql.connector

# Creating connection object

# user = input("Input user: ")
# password = input("Input password: ")

user = 'root'
password = 'Mog'

mydb = mysql.connector.connect(host='localhost', user=user, password=password, database='starwarscharacters')
cursor = mydb.cursor()


exitCode = False
while not exitCode:
    print("What would you like to do today?"
          "\n1. ADD ENTRY\n2. UPDATE DATABASE\n3. FILTER DATABASE\n4. VIEW CHARACTERS\n5. EXIT")
    entry = input()

    if entry == "ADD ENTRY" or entry == "1":
        name = input("Name [string]: ")
        mediaTitle = input("Media (movie, tv show, etc.) [string]: ")
        species = input("Species [string]: ")
        weapon = input("Weapon type [string]: ")
        weaponCount = int(input("Weapon Quantity [int]: "))
        occupation = input("Occupation [string]: ")
        planet = input("Origin Planet [string]: ")
        force = bool(input("Force Sensitive ['True: 1'/'False: 0']: "))

        cursor.execute("INSERT INTO characterinformation VALUES (%s, %s, %s, %s, %s, %s, %s, %s, True);",
                       (name, species, weaponCount, weapon, occupation, planet, force, mediaTitle))
        input()

    elif entry == "UPDATE DATABASE" or entry == "2":
        input()

    elif entry == "FILTER DATABASE" or entry == "3":
        columnInput = input("Enter your desired filter\n"
                            "Name, Species, WeaponQuantity, Weapon, Occupation, OriginPlanet, ForceSensitive, MediaTitle\n")
        query = "SELECT UNIQUE %s FROM characterinformation"
        cursor.execute(query, (columnInput,))
        for results in cursor:
            print(results)
        filterInput = input("Chose from the above options\n")
        cursor.execute('SELECT * FROM characterinformation WHERE %s = %s', (columnInput, filterInput))
        for resultsNew in cursor:
            print(resultsNew)
        input()

    elif entry == "VIEW CHARACTERS" or entry == "4":
        cursor.execute("SELECT * FROM characterinformation")
        for character in cursor:
            print(character)
        input()

    elif entry == "EXIT" or entry == "5":
        exitCode = True

    else:
        print("Please enter a valid input\n")

mydb.close()
print("Thank you!")
