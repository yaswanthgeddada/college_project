from flask import Flask,render_template,jsonify,request,redirect,session,g
from flask_mysqldb import MySQL
import collections
import json
from flask_cors import CORS
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os
from sklearn.linear_model import LinearRegression
from sklearn import tree


# predictios _____________________________________________________________________________________



# data = pd.read_csv('Data3.csv')
# X_train = data[['st_att','mid_avg']]
# Y_train = data['st_per']

# A_train = data[['st_att','sub1_mid']]
# B_train = data['sub_1']

# C_train = data[['st_att','sub2_mid']]
# D_train = data['sub_2']

# E_train = data[['st_att','sub3_mid']]
# F_train = data['sub_3']

# G_train = data[['st_att','sub4_mid']]
# H_train = data['sub_4']

# I_train = data[['st_att','sub5_mid']]
# J_train = data['sub_5']

# linear_regression = LinearRegression()
# linear_regression.fit(X_train, Y_train)

# linear_regression.fit(A_train,B_train)

# linear_regression.fit(C_train,D_train)
# linear_regression.fit(E_train,F_train)
# linear_regression.fit(G_train,H_train)
# linear_regression.fit(I_train,J_train)

# df = pd.DataFrame([[100,100]], columns=['1','2'])


# pred = linear_regression.predict(df[['1','2']])


# decision tree ____________________________________________________________________________________

p_data = pd.read_csv('placement.csv')

X_train1 = p_data[['coding','softskills','course_knowledge','st_per']]
Y_train1 = p_data[['placement']]
clf = tree.DecisionTreeClassifier()
clf.fit(X_train1, Y_train1)




app = Flask(__name__)
app.secret_key = os.urandom(24)

app.config['SECRET_KEY'] = 'Thisisasecretkey'



# mySQL Connection_____________________________________________________________________________________
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'yash'
app.config['MYSQL_DB'] = 'projec'

mysql = MySQL(app)

# CORS(app)
role = ''

# login api _____________________________________________________________________________________
@app.route("/login", methods = ['GET','POST'])
def login():
    if 'user_id' not in session:
        if request.method=="POST":
            userid = request.form['userid']
            password = request.form['password']
            cur = mysql.connection.cursor()
            cur.execute("SELECT * FROM projec.staff where user_id = %s AND password = %s",(userid,password))
            user = cur.fetchall()
            userName= user[0][4]
            global role
            role=user[0][3]
            print(userName,role)
            if len(user)>0:
                session['user_id']=user[0][0]
                return render_template('index.html',role=role,userName=userName)
            else:
                return redirect("/login")
        return render_template("login.html")
    else:
        return redirect("/")

#logout api _____________________________________________________________________________________
@app.route('/logout')
def logout():
    session.pop('user_id')
    return redirect('/login')



# Home route ______________________________________________________________________________________
@app.route("/")
def index():
    if 'user_id' in session:
        return render_template('index.html',)
    else:
        return redirect('/login')


# CSE 1st year _____________________________________________________________________________________
@app.route("/firstyear/cse" )
def FirstYearCse():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM first_year_cse")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("firstyear/cse.html",data_cse = return_values)



# ECE 1st year _____________________________________________________________________________________
@app.route("/firstyear/ece" )
def FirstYearEce():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM first_year_ece")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("firstyear/ece.html",data_ece = return_values)


    # return jsonify({'members':return_values})

# dashBoard api_____________________________________________________________________________________
@app.route("/dashboard/<path:pin>,<path:branch>",methods = ['GET'])
def dashboard(pin,branch):
    if 'user_id' in session:
        cur = mysql.connection.cursor()
        print(branch)
        print(role)

        cur.execute("SELECT ID,Name,PIN,Marks,attendance,sub1,sub2,sub3,sub4,sub5,year FROM projec."+branch+" where PIN = %s",(pin,))
        
        cse = cur.fetchall()
        rel={}
        return_val=[]
        datapoints=[]
        
        for member in cse:
            member_dict = {}
            member_dict['ID'] = member[0]
            member_dict['Name'] = member[1]
            member_dict['PIN'] = member[2]
            member_dict['Marks'] = member[3]
            member_dict['attendance'] = member[4]
            member_dict['sub1'] = member[5]        
            member_dict['sub2'] = member[6]
            member_dict['sub3'] = member[7]
            member_dict['sub4'] = member[8]
            member_dict['sub5'] = member[9]
            member_dict['year'] = member[10]

            return_val.append(member_dict)

        if (member_dict['year']=='third_year_'):
            data = pd.read_csv('Data_3rd_year.csv')
            X_train = data[['st_att','mid_avg']]
            Y_train = data['st_per']

            A_train = data[['st_att','sub1_mid']]
            B_train = data['sub_1']

            C_train = data[['st_att','sub2_mid']]
            D_train = data['sub_2']

            E_train = data[['st_att','sub3_mid']]
            F_train = data['sub_3']

            G_train = data[['st_att','sub4_mid']]
            H_train = data['sub_4']

            I_train = data[['st_att','sub5_mid']]
            J_train = data['sub_5']

            linear_regression = LinearRegression()
            linear_regression.fit(X_train, Y_train)

            linear_regression.fit(A_train,B_train)

            linear_regression.fit(C_train,D_train)
            linear_regression.fit(E_train,F_train)
            linear_regression.fit(G_train,H_train)
            linear_regression.fit(I_train,J_train)

            df = pd.DataFrame([[member_dict['attendance'],member_dict['Marks']]], columns=['1','2'])

            pred = linear_regression.predict(df[['1','2']])

            df_1 = pd.DataFrame([[member_dict['attendance'],member_dict['sub1']]], columns=['1','2'])
            df_2 = pd.DataFrame([[member_dict['attendance'],member_dict['sub2']]], columns=['1','2'])
            df_3 = pd.DataFrame([[member_dict['attendance'],member_dict['sub3']]], columns=['1','2'])
            df_4 = pd.DataFrame([[member_dict['attendance'],member_dict['sub4']]], columns=['1','2'])
            df_5 = pd.DataFrame([[member_dict['attendance'],member_dict['sub5']]], columns=['1','2'])
            # print(member_dict['attendance'] , member_dict['Marks'])
            # print(member_dict['attendance'] , member_dict['sub1'])
            sub1_pred = linear_regression.predict(df_1[['1','2']])
            sub2_pred = linear_regression.predict(df_2[['1','2']])
            sub3_pred = linear_regression.predict(df_3[['1','2']])
            sub4_pred = linear_regression.predict(df_4[['1','2']])
            sub5_pred = linear_regression.predict(df_5[['1','2']])
        elif (member_dict['year']=='first_year_'):
            data = pd.read_csv('Data_1st_year.csv')
            X_train = data[['st_att','mid_avg']]
            Y_train = data['st_per']

            A_train = data[['st_att','sub1_mid']]
            B_train = data['sub_1']

            C_train = data[['st_att','sub2_mid']]
            D_train = data['sub_2']

            E_train = data[['st_att','sub3_mid']]
            F_train = data['sub_3']

            G_train = data[['st_att','sub4_mid']]
            H_train = data['sub_4']

            I_train = data[['st_att','sub5_mid']]
            J_train = data['sub_5']

            linear_regression = LinearRegression()
            linear_regression.fit(X_train, Y_train)

            linear_regression.fit(A_train,B_train)

            linear_regression.fit(C_train,D_train)
            linear_regression.fit(E_train,F_train)
            linear_regression.fit(G_train,H_train)
            linear_regression.fit(I_train,J_train)

            df = pd.DataFrame([[member_dict['attendance'],member_dict['Marks']]], columns=['1','2'])

            pred = linear_regression.predict(df[['1','2']])

            df_1 = pd.DataFrame([[member_dict['attendance'],member_dict['sub1']]], columns=['1','2'])
            df_2 = pd.DataFrame([[member_dict['attendance'],member_dict['sub2']]], columns=['1','2'])
            df_3 = pd.DataFrame([[member_dict['attendance'],member_dict['sub3']]], columns=['1','2'])
            df_4 = pd.DataFrame([[member_dict['attendance'],member_dict['sub4']]], columns=['1','2'])
            df_5 = pd.DataFrame([[member_dict['attendance'],member_dict['sub5']]], columns=['1','2'])
            # print(member_dict['attendance'] , member_dict['Marks'])
            # print(member_dict['attendance'] , member_dict['sub1'])
            sub1_pred = linear_regression.predict(df_1[['1','2']])
            sub2_pred = linear_regression.predict(df_2[['1','2']])
            sub3_pred = linear_regression.predict(df_3[['1','2']])
            sub4_pred = linear_regression.predict(df_4[['1','2']])
            sub5_pred = linear_regression.predict(df_5[['1','2']])

        elif (member_dict['year']=='second_year_'):
            data = pd.read_csv('Data_2nd_year.csv')
            X_train = data[['st_att','mid_avg']]
            Y_train = data['st_per']

            A_train = data[['st_att','sub1_mid']]
            B_train = data['sub_1']

            C_train = data[['st_att','sub2_mid']]
            D_train = data['sub_2']

            E_train = data[['st_att','sub3_mid']]
            F_train = data['sub_3']

            G_train = data[['st_att','sub4_mid']]
            H_train = data['sub_4']

            I_train = data[['st_att','sub5_mid']]
            J_train = data['sub_5']

            linear_regression = LinearRegression()
            linear_regression.fit(X_train, Y_train)

            linear_regression.fit(A_train,B_train)

            linear_regression.fit(C_train,D_train)
            linear_regression.fit(E_train,F_train)
            linear_regression.fit(G_train,H_train)
            linear_regression.fit(I_train,J_train)

            df = pd.DataFrame([[member_dict['attendance'],member_dict['Marks']]], columns=['1','2'])

            pred = linear_regression.predict(df[['1','2']])

            df_1 = pd.DataFrame([[member_dict['attendance'],member_dict['sub1']]], columns=['1','2'])
            df_2 = pd.DataFrame([[member_dict['attendance'],member_dict['sub2']]], columns=['1','2'])
            df_3 = pd.DataFrame([[member_dict['attendance'],member_dict['sub3']]], columns=['1','2'])
            df_4 = pd.DataFrame([[member_dict['attendance'],member_dict['sub4']]], columns=['1','2'])
            df_5 = pd.DataFrame([[member_dict['attendance'],member_dict['sub5']]], columns=['1','2'])
            # print(member_dict['attendance'] , member_dict['Marks'])
            # print(member_dict['attendance'] , member_dict['sub1'])
            sub1_pred = linear_regression.predict(df_1[['1','2']])
            sub2_pred = linear_regression.predict(df_2[['1','2']])
            sub3_pred = linear_regression.predict(df_3[['1','2']])
            sub4_pred = linear_regression.predict(df_4[['1','2']])
            sub5_pred = linear_regression.predict(df_5[['1','2']])
        elif (member_dict['year']=='fourth_year_'):
            data = pd.read_csv('Data_4th_year.csv')
            X_train = data[['st_att','mid_avg']]
            Y_train = data['st_per']

            A_train = data[['st_att','sub1_mid']]
            B_train = data['sub_1']

            C_train = data[['st_att','sub2_mid']]
            D_train = data['sub_2']

            E_train = data[['st_att','sub3_mid']]
            F_train = data['sub_3']

            G_train = data[['st_att','sub4_mid']]
            H_train = data['sub_4']

            I_train = data[['st_att','sub5_mid']]
            J_train = data['sub_5']

            linear_regression = LinearRegression()
            linear_regression.fit(X_train, Y_train)

            linear_regression.fit(A_train,B_train)

            linear_regression.fit(C_train,D_train)
            linear_regression.fit(E_train,F_train)
            linear_regression.fit(G_train,H_train)
            linear_regression.fit(I_train,J_train)

            df = pd.DataFrame([[member_dict['attendance'],member_dict['Marks']]], columns=['1','2'])

            pred = linear_regression.predict(df[['1','2']])

            df_1 = pd.DataFrame([[member_dict['attendance'],member_dict['sub1']]], columns=['1','2'])
            df_2 = pd.DataFrame([[member_dict['attendance'],member_dict['sub2']]], columns=['1','2'])
            df_3 = pd.DataFrame([[member_dict['attendance'],member_dict['sub3']]], columns=['1','2'])
            df_4 = pd.DataFrame([[member_dict['attendance'],member_dict['sub4']]], columns=['1','2'])
            df_5 = pd.DataFrame([[member_dict['attendance'],member_dict['sub5']]], columns=['1','2'])
            # print(member_dict['attendance'] , member_dict['Marks'])
            # print(member_dict['attendance'] , member_dict['sub1'])
            sub1_pred = linear_regression.predict(df_1[['1','2']])
            sub2_pred = linear_regression.predict(df_2[['1','2']])
            sub3_pred = linear_regression.predict(df_3[['1','2']])
            sub4_pred = linear_regression.predict(df_4[['1','2']])
            sub5_pred = linear_regression.predict(df_5[['1','2']])
        
        
        
        if (member_dict['year']=='third_year_' or member_dict['year']=='fourth_year_'):
            cur = mysql.connection.cursor()
            cur.execute("SELECT * from projec.placement_test WHERE pin = %s ",(pin,))
            cse = cur.fetchall()

            df_tree = pd.DataFrame([[cse[0][2],cse[0][3],cse[0][4],member_dict['Marks']]], columns=['1','2','3','4'])
            placement_pred = clf.predict(df_tree[['1','2','3','4']])
            year= "third_year_"
        else:
            placement_pred = ['']
            year=False
          

        # print(return_val)
        # rel = mem_data
        # return_val.append(rel)
        # print(return_val)
        # return jsonify({"member":return_val})
        cur.execute("select * from projec.attendance where pin = %s",(pin,))
        atte = cur.fetchall()
        datapoints = [int(atte[0][3]),int(atte[0][4]),int(atte[0][5]),int(atte[0][6]),int(atte[0][7]),
                      int(atte[0][8]),int(atte[0][9])]
        try:
            subs = ['sub1','sub2','sub3','sub4','sub5']
            filename = 'static/img'
            plt.bar(subs,[round(sub1_pred[0],2),round(sub2_pred[0],2),round(sub3_pred[0],2),
            round(sub4_pred[0],2),round(sub5_pred[0],2)])
            i=0

            x='static/img'
            while True:
                i += 1
                newname = '{}{:d}.png'.format(filename,i)
                if os.path.exists(newname):
                    continue
                plt.savefig(newname)
                x = newname
                break
            plt.close()
        except:
            print("something went wrong")

        return render_template('dashboard.html',data_member = return_val[0],
                                pre=round(pred[0],2),
                                sub1 = round(sub1_pred[0],2),
                                plots = datapoints,
                                year= year,
                                placement=placement_pred[0],
                                pltimg = x)
    else:
        return redirect('/login')

@app.route("/selectsudent",methods = ['GET','POST'])
def selectsudent():
    if 'user_id' in session:
        if request.method=='POST':
            attendance_data = request.get_json()
            branch = request.form['branch']
            num = request.form['num']
            print(num)

            cur = mysql.connection.cursor()
            # sql=('''insert into attendance (pin,branch,attend,col_date) VALUES (%s,%s,%s,curdate())''')
            cur.execute("SELECT * FROM projec."+branch+"" )
            resu = cur.fetchall()
            print(resu)
            le = len(resu)
            return render_template("addstudent.html",resu=resu,num=int(num),branch=branch)
            # val = [("16551A0560","CSE",0)]
            # cur.execute(sql,val,)
            # mysql.connection.commit()
        else:
            return render_template("add.html")
    else:
        return redirect('login')



# Student adding _____________________________________________________________________________________
@app.route("/addStudent" , methods=['GET','POST'])
def addStudent():
    if request.method=='POST':
        cur = mysql.connection.cursor()
        PIN = request.form.getlist('PIN')
        Name = request.form.getlist('Name')
        attendance = request.form.getlist('attendance')
        Marks = request.form.getlist('Marks')
        bran = request.form['branch']
        num = request.form['num']
        # print(bran)
        b = bran.split('_')
        a = b[2]
        for i in range(int(num)):
            tp=[]
            t=()
            tp.append(PIN[i])
            tp.append(Name[i])
            tp.append(attendance[i])
            tp.append(Marks[i])
            t=tuple(tp)
            # print(t)
        sql=('insert into projec.'+bran+' (PIN,Name,attendance,Marks) VALUES (%s,%s,%s,%s)')
        cur.execute(sql,t)
        if b[0]=='first':
            y = 1
        elif b[0]=='second':
            y=2
        elif b[0]=='third':
            y=3
        else:
            y=4
        sql1 = ('insert into projec.attendance (pin,branch,study_year) values (%s,%s,%s)')
        for j in range(int(num)):
            tq=[]
            q=()
            tq.append(PIN[j])
            tq.append(a)
            tq.append(y)
            q=tuple(tq)
            # print(q)
        cur.execute(sql1,q)
        mysql.connection.commit()

        
        # sql1= ('insert into projec.'+a+' (pin,branch) VALUES (%s,%s)')
        # va = 
        return render_template("add.html")
    else:
        return render_template("add.html")



# attendacne selection from all branches ______________________________________________________________
@app.route("/attendance" ,methods = ['POST','GET'])
def attendance():
    if 'user_id' in session:
        if request.method=='POST':
            attendance_data = request.get_json()
            branch = request.form['branch']
            study_year = request.form['year']

            # print(branch)
            # print(study_year)
            cur = mysql.connection.cursor()
            # sql=('''insert into attendance (pin,branch,attend,col_date) VALUES (%s,%s,%s,curdate())''')
            cur.execute("SELECT * FROM projec.attendance where branch = %s and study_year = %s",(branch,study_year))
            res = cur.fetchall()
            le = len(res)
            # print(res)
            return render_template("attend.html",res=res,)
            # val = [("16551A0560","CSE",0)]
            # cur.execute(sql,val,)
            # mysql.connection.commit()
        else:
            return render_template("attendance.html")
    else:
        return redirect('login')
    
# attendance students for one branch ___________________________________________________________________
@app.route("/attend" ,methods = ['POST','GET'])
def attend():
    if request.method=='POST':
        attendance_data = request.get_json()
        cur = mysql.connection.cursor()
        date = request.form['date']
        val = request.form.getlist('att')
        dat1= str(date).split('-')
        sql1=("select pin from attendance where branch='cse'")
        cur.execute(sql1)
        pin=cur.fetchall()
        dat = {'01':'jan','02':'feb','03':'mar','04':'aprl','05':'may','06':'june','07':'july',
                '08':'aug','09':'sep','10':'oct','11':'nov','12':'dec'}
        mon=str(dat1[1])
        mon1=dat[mon]

        for i in range(len(pin)):
            sql11="update attendance set "+mon1+" = %s where pin = %s"
            tp=[]
            t=()
            tp.append(val[i])
            tp.append(pin[i][0])
            t=tuple(tp)
            print(t)
            cur.execute(sql11,t)
            mysql.connection.commit()

            
        # date = request.form['date']
        # study_year = request.form['year']
    
        #sql='update attendance  set feb= '%s' where pin = '16551A0526''
        # cur.execute("SELECT * FROM projec.attendance where branch = %s and study_year = %s",(branch,study_year))
        # res = cur.fetchall()
        #cur.execute(sql,val,)

        return redirect("attendance")
        # val = [("16551A0560","CSE",0)]
        # mysql.connection.commit()
    else:
        return render_template("attendance.html")


# 1st yeaer eee _____________________________________________________________________________________
@app.route("/firstyear/eee")
def FirstYeareee():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM first_year_eee")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("firstyear/eee.html",data_eee = return_values)

# 2nd yeaer eee _____________________________________________________________________________________
@app.route("/secondyear/eee")
def secondyeareee():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM second_year_eee")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("secondyear/eee.html",data_eee2 = return_values)

# 2nd yeaer cse _____________________________________________________________________________________
@app.route("/secondyear/cse")
def secondyearcse():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM second_year_cse")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("secondyear/cse.html",data_cse2 = return_values)

# 2nd yeaer civil _____________________________________________________________________________________
@app.route("/secondyear/civil")
def secondyearcivil():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM second_year_civil")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("secondyear/civil.html",data_civil2 = return_values)

# 2nd yeaer mech _____________________________________________________________________________________

@app.route("/secondyear/mech")
def secondyearmech():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM second_year_mech")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("secondyear/cse.html",data_mech2 = return_values)

# 2nd yeaer ece _____________________________________________________________________________________

@app.route("/secondyear/ece")
def secondyearece():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM second_year_ece")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("secondyear/ece.html",data_mech2 = return_values)





# 1st year civil_____________________________________________________________________________________
@app.route("/firstyear/civil")
def FirstYearcivil():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM first_year_civil")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("firstyear/Civil.html",data_civil = return_values)


# 1st year Mech _____________________________________________________________________________________
@app.route("/firstyear/MECH")
def FirstYearMECH():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM first_year_MECH")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("firstyear/MECH.html",data_MECH = return_values)




# @app.route("/dashboard")
# def dashboard():
#     return render_template("dashboard.html")

# 3rd yeaer civil _____________________________________________________________________________________
@app.route("/thirdyear/civil")
def thirdyearcivil():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM third_year_civil")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("thirdyear/civil.html",data_civil3 = return_values)



# 3rd yeaer cse _____________________________________________________________________________________
@app.route("/thirdyear/cse")
def thirdyearcse():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM third_year_cse")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]
        

        return_values.append(member_dict)
    return render_template("thirdyear/cse.html",data_cse3 = return_values)


# 3rd yeaer ece _____________________________________________________________________________________
@app.route("/thirdyear/ece")
def thirdyearece():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM third_year_ece")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("thirdyear/ece.html",data_ece3 = return_values)


# 3rd yeaer eee _____________________________________________________________________________________
@app.route("/thirdyear/eee")
def thirdyeareee():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM third_year_eee")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("thirdyear/eee.html",data_eee3 = return_values)


# 3rd yeaer mech _____________________________________________________________________________________
@app.route("/thirdyear/MECH")
def thirdyearmech():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM third_year_mech")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("thirdyear/MECH.html",data_MECH3 = return_values)

# 4th yeaer civil _____________________________________________________________________________________
@app.route("/fourthyear/civil")
def fourthyearcivil():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM fourth_year_civil")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("fourthyear/civil.html",data_civil4 = return_values)

# 4th yeaer MECH _____________________________________________________________________________________
@app.route("/fourthyear/MECH")
def fourthyearmech():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM fourth_year_mech")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("fourthyear/MECH.html",data_MECH4 = return_values)

# 4th yeaer eee _____________________________________________________________________________________
@app.route("/fourthyear/eee")
def fourthyeareee():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM fourth_year_eee")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("fourthyear/eee.html",data_eee4 = return_values)

# 4th yeaer cse _____________________________________________________________________________________
@app.route("/fourthyear/cse")
def fourthyearcse():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM fourth_year_cse")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("fourthyear/cse.html",data_cse4 = return_values)

# 4th yeaer ece _____________________________________________________________________________________
@app.route("/fourthyear/ece")
def fourthyearece():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ID,Name,PIN,Marks,branch FROM fourth_year_ece")
    cse = cur.fetchall()
    cur.close()
    return_values = []

    for member in cse:
        member_dict = {}
        member_dict['ID'] = member[0]
        member_dict['Name'] = member[1]
        member_dict['PIN'] = member[2]
        member_dict['Marks'] = member[3]
        member_dict['branch'] = member[4]

        return_values.append(member_dict)
    return render_template("fourthyear/ece.html",data_ece4 = return_values)





@app.route("/home")
def home():
    return render_template("profile.html")

@app.route("/about")
def about():
    return render_template("about.html")

if __name__ == "__main__":
    app.run()

# ______________________________________________________________________________________________yaswanth