def main():
    phrase = input("Insert a line ")
    hello(phrase)

def hello(to):
    print(to.strip().lower())

main()
