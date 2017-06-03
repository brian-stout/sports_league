#!usr/bin/enc python3

def main():

	table = input("Input table name: ")
	if table.isalnum():
		file = open("step25.sql", "w")
		file.write("SELECT * FROM " + table + ";")
		file.close()
	else:
		print("Not a valid table name!  No space or special characters!")
		quit();

if __name__ == "__main__":
    main()
