import mysql.connector

# Creating connection object

user = input("Input user: ")
password = input("Input password: ")

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
        print("Enter your desired filter\n"
              "Name, Species, WeaponQuantity, Weapon, Occupation, OriginPlanet, ForceSensitive, MediaTitle")
        field = input()

        if field == "Name" or field == "name":
            query = "SELECT UNIQUE name FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE name = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "MediaTitle":
            query = "SELECT UNIQUE MediaTitle FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE MediaTitle = %s"
            cursor.execute(query, (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "Species" or field == "species":
            query = "SELECT UNIQUE species FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE species = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "WeaponQuantity":
            query = "SELECT UNIQUE weaponQuantity FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE weaponQuantity = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "Weapon" or field == "weapon":
            query = "SELECT UNIQUE weapon FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE weapon = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "Occupation" or field == "occupation":
            query = "SELECT UNIQUE name FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE occupation = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "Planet" or field == "planet":
            query = "SELECT UNIQUE name FROM characterinformation"
            cursor.execute(query)
            for thing in cursor:
                print(thing)
            filterInput = input("Chose from the above options\n")
            query = "SELECT * FROM characterinformation WHERE planet = %s"
            cursor.execute(query,  (filterInput,))
            for resultsNew in cursor:
                print(resultsNew)

        elif field == "forceSensitive":
            print("(True, False)")
            filterInput = input("Chose from the above options\n")
            if filterInput == "True":
                query = "SELECT * FROM characterinformation WHERE forceSensitive = 1"
                cursor.execute(query)
            elif filterInput == "False":
                query = "SELECT * FROM characterinformation WHERE forceSensitive = 0"
                cursor.execute(query)
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
