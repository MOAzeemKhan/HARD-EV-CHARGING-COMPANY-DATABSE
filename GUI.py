from tkinter import *
import tkinter.messagebox as MessageBox
import mysql.connector as mysql

from tkinter import *
from PIL import ImageTk, Image
import time


def update():
    Vehicle_Id=Vehicle_Id_enter.get();
    Customer_Id=Customer_Id_enter.get()
    Units=Units_enter.get()
    
    if (Vehicle_Id==""):
        MessageBox.showinfo("Error","Please enter Vehicle_Id, it cannot be empty")

    elif (Customer_Id==""):
        MessageBox.showinfo("Error","Please enter Customer_Id, it cannot be empty")
  
    elif (Units==""):
        MessageBox.showinfo("Error","Please enter Units, it cannot be empty")

    else:
        con=mysql.connect(host = "localhost",user="root",password="roottoor",database="dbms_project_hard");
        cursor=con.cursor()


        cursor.execute("select * from account where Customer_Id = '"+Customer_Id+"'")

        rows=cursor.fetchall()
        if (rows!=[]):
            cursor.execute("update account set units_used=units_used+'"+Units+"' where Customer_Id = '"+Customer_Id+"'");
            cursor.execute("commit");
            MessageBox.showinfo("Payment Status","The Units were bought successfully!");
        else:
            MessageBox.showinfo("Payment Status","Payment Aborted, User Not Verified!");

        Vehicle_Id_enter.delete(0,'end')
        Customer_Id_enter.delete(0,'end')
        Units_enter.delete(0,'end')
        cursor.execute("update account set Visiting_History = curdate() where Customer_Id='"+Customer_Id+"'")
        cursor.execute("commit");
        show()
        con.close();

def get():
    if (Vehicle_Id_enter.get()==""):
        MessageBox.showinfo("Error","Please enter Vehicle_Id, it cannot be empty")
    elif (Customer_Id_enter.get()==""):
        MessageBox.showinfo("Error","Please enter Customer_Id, it cannot be empty")
    else:
        con=mysql.connect(host = "localhost",user="root",password="roottoor",database="dbms_project_hard");
        cursor=con.cursor()
        cursor.execute("select Membership_type,Visiting_History,units_used,units_used*5 from account where Customer_Id='"+Customer_Id_enter.get()+"'");
        rows=cursor.fetchall()
        if (rows==[]):
            MessageBox.showinfo("Fetch Result","Records Not Found");
        else:
            
            MessageBox.showinfo("Fetch Result","The record was fetched successfully!");
            
        show()    
        

        con.close();
        
    
def show():
    con=mysql.connect(host = "localhost",user="root",password="roottoor",database="dbms_project_hard");
    cursor=con.cursor()
    cursor.execute("select Membership_type,Visiting_History,units_used,units_used*5 from account where Customer_Id='"+Customer_Id_enter.get()+"' ");
        
    rows=cursor.fetchall()

    #Comment out this line so as to use the CLEAR button
    list.delete(0, list.size())

    
    for row in rows:
        insertData = str(row[0])+'   ||    '+str(row[1])+'    ||     '+str(row[2])+'    ||     '+str(row[3])
        list.insert(list.size()+1, insertData)

    Customer_Id_enter.delete(0,'end')
    
    Vehicle_Id_enter.delete(0,'end')
    Customer_Id_enter.delete(0,'end')
    Units_enter.delete(0,'end')
        
    
    
    con.close()
        

def clear():
    time.sleep(5)
    list.delete(0, list.size())
    
    



root=Tk()
root.geometry("800x400")
root.title("Version 1.0")

#To insert image
frame = Frame(root, width=800, height=400)
frame.pack()
frame.place(anchor='center', relx=0.5, rely=0.5)
img = ImageTk.PhotoImage(Image.open("H.A.R.D.png"))
label = Label(frame, image = img)
label.pack()

#Dialog Boxes

Vehicle_Id=Label(root,text='Enter the Vehicle_Id : ',font=('bold',10))
Vehicle_Id.place(x=20,y=30)

Customer_Id=Label(root,text='Enter the Customer Id : ',font=('bold',10))
Customer_Id.place(x=20,y=70)

Units=Label(root, text='Total units to buy : ',font=('bold',10))
Units.place(x=20,y=110)

Vehicle_Id_enter=Entry();
Vehicle_Id_enter.place(x=220,y=30)

Customer_Id_enter=Entry();
Customer_Id_enter.place(x=220,y=70)

Units_enter=Entry();
Units_enter.place(x=220,y=110)

update=Button(root, text    = "Buy Units", font=("Times new Roman",10), bg="white", command=update)
update.place(x= 550, y=320)

get=Button(root, text    = "Get Info", font=("Times new Roman",10), bg="white", command=get)
get.place(x= 650, y=320)



list=Listbox(root,width=50,height=15)
list.place(x=450, y=30)
root.mainloop()




#Comments


'''Password=Label(root,text='Enter the Password : ',font=('bold',15))
Password.place(x=20,y=90)'''

'''Name=Label(root,text='Enter Your Name : ',font=('bold',15))
Name.place(x=20,y=170)'''


'''Password_enter=Entry();
Password_enter.place(x=250,y=90)'''



'''insert=Button(root, text    = "Sign Up", font=("normal",10), bg="white", command=insert)
insert.place(x=20, y=300)


delete=Button(root, text    = "Delete", font=("normal",10), bg="white", command=delete)
delete.place(x=100, y=300)'''

'''Clear=Button(root, text    = "Clear List", font=("normal",10), bg="white", command=clear)
Clear.place(x=100, y=300)'''


'''
def insert():
    Vehicle_Id=Vehicle_Id_enter.get();
    Password=Password_enter.get();
    
    Customer_Id=Customer_Id_enter.get();
    Name=Name_enter.get();


    if (Vehicle_Id==""):
        MessageBox.showinfo("Error","Please enter Vehicle_Id, it cannot be empty")

    
    elif (Password==""):
        MessageBox.showinfo("Error","Please enter Password, it cannot be empty")

    
    elif (Customer_Id==""):
        MessageBox.showinfo("Error","Please enter Customer_Id, it cannot be empty")

    
    elif (Name==""):
        MessageBox.showinfo("Error","Please enter Name, it cannot be empty")

    else:
        con=mysql.connect(host = "localhost",user="root",password="roottoor",database="mbatech_r033");
        cursor=con.cursor()
        
        cursor.execute("insert into Login values('"+Vehicle_Id+"','"+Password+"','"+Customer_Id+"','"+Name+"')");
        
        cursor.execute("commit");
        
        MessageBox.showinfo("Insertion result","The insertion was successful!");

        Vehicle_Id_enter.delete(0,'end')
        Password_enter.delete(0,'end')
        Customer_Id_enter.delete(0,'end')
        Name_enter.delete(0,'end')
        
        
        con.close();


def delete():


    
    if (Vehicle_Id==""):
        MessageBox.showinfo("Error","Please enter Vehicle_Id, it cannot be empty")

    
    elif (Password==""):
        MessageBox.showinfo("Error","Please enter Password, it cannot be empty")

    
    elif (Customer_Id==""):
        MessageBox.showinfo("Error","Please enter Customer_Id, it cannot be empty")

    
    elif (Name==""):
        MessageBox.showinfo("Error","Please enter Name, it cannot be empty")


    else:
        
        con=mysql.connect(host = "localhost",user="root",password="roottoor",database="mbatech_r033");
        cursor=con.cursor()
        
        cursor.execute("delete from Login where Vehicle_Id='"+Vehicle_Id_enter.get()+"' and Password = '"+Password_enter.get()+"' and Customer_Id='"+Customer_Id_enter.get()+"' and Name = '"+Name_enter.get()+"'");
        
        cursor.execute("commit");
        
        MessageBox.showinfo("Deletion result","The record was deleted successfully!");

        Vehicle_Id_enter.delete(0,'end')
        Password_enter.delete(0,'end')
        
        
        con.close();
        
'''
'''
    elif (Password==""):
        MessageBox.showinfo("Error","Please enter Password, it cannot be empty")

    '''
    



