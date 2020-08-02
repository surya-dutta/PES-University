import os
import time

pb = "phone.db"
numbers = {}
list1=[]
def WriteEntry():
            name  =   input("Name: ")
            name  =   name.lower()
            f=open(pb)
            i=f.readline()
            while i:
                j=""
                for x in i:
                    if x ==";":
                        list1.append(j)
                        break;
                    else:
                        j+=x
                i=f.readline()            
            f.close()
            print(list1)
            phone =   input("Number(must be 10 digit set of numbers with spaces): ")
            if name not in list1:
                f=open(pb,'a')
                f.write (name+";"+phone+"\n")
                f.close()
                print (name + "--->" + phone + "-->> added to phonebook.db\n")
                input("finished <hit any key>")
            else:
                f=open(pb,'a+')
                j=f.readline()
                while j:
                    if name in j:
                        j.split(";")
                        j[1]=j[1]+(" "+phone)
                        c=""+j[0]+j[1]
                        print(c)
                        f.write(c)                    
                        j=f.readline()
                    else:
                        j=f.readline();
                f.close()
                print (name + "--->" + phone + "-->> updated to the already existing name in the phonebook.db\n")
                input("finished <hit any key>")

def printfile():
            print ("+-------------------------------------------+\n")
            print ("|                 PHONEBOOK             |\n")
            print ("+-------------------------------------------+\n")


            f=open(pb)
            entry=f.readline()
            while entry:
                s={}
                (s['nm'],s['ph'])=entry.split(";")   
                print("name       :"+ s['nm'])
                print("phone      :"+ s['ph'])
                entry=f.readline()
            f.close()
            input ("<-----hit any key----->")



def carimenu():
    os.system(['clear','cls'][os.name == 'nt'])
    while True:
        
        # Menu Displayed
        print ("  +-------------------------------------------+\n")
        print ("  |                SEARCH MODE                |\n")
        print ("  +-------------------------------------------+\n")

        menuname = input("\n\
        Search mode on, choise here:\n\
        1) search with name\n\
        2) search with phone number\n\
        q) quit \n\n\
        What would you like to do?  \n")

        # Returned Answer acted upon.
        if menuname == "1":
            name=input ("Enter the name :")
            finddetailnm(name)
            
        elif menuname == "2":
            
            def phonenumber():
                try:
                    phone=int(input ("Enter the phone:"))
                    phonestr=str (phone)
                    finddetailph(phonestr)
                except (ValueError):
                    print ("   Error  cuk.... <just number !!>")
                    phonenumber()
            phonenumber()
        elif menuname == "q":
            break
        else:
            print ("        Not a valid Choice.")
        #input("        Hit any key to continue")


def finddetailnm(carie):
    f=open(pb)
    entry=f.readline()
    while entry:
        s={}
        (s['nm'],s['ph'])=entry.split(";")
        nam= s['nm']
        #print (nam.find(carie))
        searc=(nam.find(carie))
        entry=f.readline()
        if (searc != -1):
            search= (s)
            #print (search) #--> {'em': 'jjjj\n', 'ph': '987', 'nm': 'oxoode'}
            if search:
                print("name       :"+ search['nm'])
                print("phone      :"+ search['ph'])
            

    f.close()
    pilihcarinm()

def pilihcarinm():
    menuname=input ("Do you want search with name again y/n? ")
    if menuname == "y":
        name=input (" enter the name :")
        finddetailnm(name)
    elif menuname == "n":
        pass
    else:
        print ("        Not a valid Choice.")
        pilihcarinm()



def finddetailph(carie):
    f=open(pb)
    entry=f.readline()
    while entry:
        s={}
        (s['nm'],s['ph'])=entry.split(";")
        nam= s['ph']
        #print (nam.find(carie))
        searc=(nam.find(carie))
        entry=f.readline()
        if (searc != -1):
            search= (s)
            #print (search) #--> {'em': 'jjjj\n', 'ph': '987', 'nm': 'oxoode'}
            if search:
                print("name       :"+ search['nm'])
                print("phone      :"+ search['ph'])

    f.close()
    pilihcariph()
    

def pilihcariph():
    menuname=input ("Do you want search with phone again y/n? ")
    if menuname == "y":
        phone=input ("enter the phone :")
        finddetailph(phone)
    elif menuname == "n":
        pass
    else:
        print ("        Not a valid Choice.")
        pilihcariph()


# The Menu
os.system(['clear','cls'][os.name == 'nt'])
while True:
    
    # Menu Displayed
    print ("+-------------------------------------------+\n")
    print ("|                PHONE BOOK                 |\n")
    print ("+-------------------------------------------+\n")

    menuname = input("\n\
    a) Add to Phonebook\n\
    p) List phonebook\n\
    s) Search\n\
    q) Quit\n\n\
    What would you like to do?  \n")

    # Returned Answer
    if menuname == "p":
        printfile()
    elif menuname == "a":
        WriteEntry()
    elif menuname == "s":
        carimenu()
    elif menuname == "q":
        break
    else:
        print ("        Not a valid Choice stupid!!! :)")
exit
