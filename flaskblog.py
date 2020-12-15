### Example inspired by Tutorial at https://www.youtube.com/watch?v=MwZwr5Tvyxo&list=PL-osiE80TeTs4UjLw5MM6OjgkjFeUxCYH
### However the actual example uses sqlalchemy which uses Object Relational Mapper, which are not covered in this course. I have instead used natural sQL queries for this demo. 

from flask import Flask, render_template, url_for, flash, redirect, request
from forms import RegistrationForm, LoginForm, UpdateForm, DeleteForm
import sqlite3

conn = sqlite3.connect('blog.db')
app = Flask(__name__)
app.config['SECRET_KEY'] = '5791628bb0b13ce0c676dfde280ba245'

#Turn the results from the database into a dictionary
def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

@app.route("/")
@app.route("/home")
def home():
    return render_template('home.html')

@app.route("/team")
def team():
    choosedTeam = request.args.get('teamName')
    conn = sqlite3.connect('NBA.db')
    #Display all blogs from the 'blogs' table
    conn.row_factory = dict_factory
    c = conn.cursor()
    if choosedTeam == None or choosedTeam=='':
        choosedTeam = 'Philadelphia 76ers'

    selectTeamSql = "SELECT * FROM Team"
    c.execute(selectTeamSql)
    selectTeams = c.fetchall()

    teamSql = "SELECT * FROM Team WHERE Team_Name=\""+choosedTeam+"\""
    c.execute(teamSql)
    teams = c.fetchall()

    playerSql = "SELECT P.*,Uniform_number FROM Player P,Basic_stat B where Team_Name = \""+choosedTeam+"\" and P.Player_ID = B.Player_ID and Season like '2018%'"
    c.execute(playerSql)
    players = c.fetchall()

    teamStatSql = "SELECT * FROM Teamstat where Team_Name = \"" + choosedTeam + "\""
    c.execute(teamStatSql)
    teamStats = c.fetchall()

    managerSql = "SELECT * FROM Employee E, Manager Ma where E.Employee_ID = Ma.Employee_ID and E.Team_Name = \"" + choosedTeam + "\""
    c.execute(managerSql)
    managers = c.fetchall()

    coachSql = "SELECT * FROM Employee E, Coach C where E.Employee_ID = C.Employee_ID and E.Team_Name = \"" + choosedTeam + "\""
    c.execute(coachSql)
    coaches = c.fetchall()

    bossSql = "SELECT * FROM Employee E, Boss B where E.Employee_ID = B.Employee_ID and E.Team_Name = \"" + choosedTeam + "\""
    c.execute(bossSql)
    bosses = c.fetchall()

    mascotSql = "SELECT * FROM Employee E, Mascot where E.Employee_ID = Mascot.Employee_ID and E.Team_Name = \"" + choosedTeam + "\""
    c.execute(mascotSql)
    mascots = c.fetchall()

    # employeeSql = "SELECT * FROM Employee E，Manager Ma，Mascot Ms，Boss B，Coach C where (E.Employee_ID = Ma.Employee_ID or E.Employee_ID = Ms.Employee_ID or E.Employee_ID = B.Employee_ID or E.Employee_ID = B.Employee_ID) and Team_Name = \"" + choosedTeam + "\""
    # c.execute(employeeSql)
    # employees = c.fetchall()

    return render_template('Team.html', teams=teams, choosedTeam=choosedTeam, players=players, teamStats=teamStats,
                           managers=managers, coaches=coaches, bosses=bosses,
                           mascots=mascots,selectTeams=selectTeams)


@app.route("/history")
def test():
    conn = sqlite3.connect('NBA.db')
    conn.row_factory = dict_factory
    c = conn.cursor()
    
    c.execute("SELECT * FROM Player_history")
    posts = c.fetchall()
    return render_template('history.html', posts=posts)

@app.route("/interest")
def interest():
    conn = sqlite3.connect('NBA.db')
    conn.row_factory = dict_factory
    c = conn.cursor()
    c.execute("SELECT Player_name, ROUND(MAX(B1.Points-B2.Points),1) as 'improve', B2.Points as 'p1', B1.Points as'p2' FROM 'Basic_stat' B1, Player P, Basic_stat B2 Where B1.Player_ID = P.Player_ID and B2.Player_ID = P.Player_ID and B1.Season Like '2018%' and B2.Season like '2017%' ")
    improve = c.fetchall()
    c.execute("SELECT Season, ROUND(AVG(Points),1) as 'Average' FROM 'Basic_stat' Group by Season")
    average_points = c.fetchall()
    c.execute("select Player_name, B.Season as 'sea',Points, OWS from Player P, Advanced_stat A, Basic_stat B where P.Player_ID = A.Player_ID and P.Player_ID = B.Player_ID and OWS >= (Select MAX(OWS) from Advanced_stat where Player_ID not in (SELECT Player_ID FROM Basic_stat B1 WHERE Season like '2018%'  ORDER BY Points desc limit 10)) and Player_name not in (SELECT Player_name FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Points desc limit 10)")
    ows = c.fetchall()
    c.execute("select Team_Name, SUM(Salary) as 'sum' From Player Group by Team_Name Order by SUM(Salary) desc LIMIT 1")
    salary = c.fetchall()
    c.execute("select Player_name, Points, Salary from Player P, Basic_stat B where P.Player_ID = B.Player_ID and Season like '2018%' and P.Player_ID not in (select Player_ID from Player where Season like '2018%' order by Salary desc limit 10) order by Points desc limit 1")
    cheap = c.fetchall()
    c.execute("SELECT T1.Team_Name , ROUND(MAX(T1.Average_attack-T2.Average_attack)) as 'attack' from Teamstat T1,Teamstat T2 where T1.Team_Name = T2.Team_Name and T1.Season like '2018%' and T2.Season like '2017%' ")
    team_attack = c.fetchall()
    c.execute("SELECT T1.Team_Name , ROUND(MIN(T1.Average_defense-T2.Average_defense)) as 'defense' from Teamstat T1,Teamstat T2 where T1.Team_Name = T2.Team_Name and T1.Season like '2018%' and T2.Season like '2017%' ")
    team_defense = c.fetchall()
    c.execute("Select Player_name from Player P where not exists (Select * from Basic_stat B1 where not exists (Select Season from Basic_stat B where P.Player_ID = B.Player_ID and B1.Season = B.Season))")
    division = c.fetchall()
    c.execute("SELECT Player_name from Player  where Nationality = 'Australia'")
    aus = c.fetchall()
    c.execute('SELECT Ename, E.Team_Name as "team",Team_Area,Rank, Time_in_job FROM Employee E, Manager M,Team T where E.Employee_ID = M.Employee_ID and T.Team_Name = E.Team_Name ORder by Time_in_job desc')
    manager = c.fetchall()
    return render_template('interest.html', posts=(improve,average_points,ows,salary,cheap,team_attack,team_defense,division,aus,manager))

@app.route("/leaderboard")
def leaderboard():
    conn = sqlite3.connect('NBA.db')
    conn.row_factory = dict_factory
    c = conn.cursor()
    c.execute("SELECT Player_name,Points FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Points desc limit 10")
    points = c.fetchall()
    c.execute("SELECT Player_name,Blocks FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Blocks desc limit 10")
    blocks = c.fetchall()
    c.execute("SELECT Player_name,Assists FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Assists desc limit 10")
    assists = c.fetchall()
    c.execute("SELECT Player_name,Steals FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Steals desc limit 10")
    steals = c.fetchall()
    c.execute("SELECT Player_name,Turnovers FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Turnovers desc limit 10")
    turnovers = c.fetchall()
    c.execute("SELECT Player_name,Rebunds FROM Player P,Basic_stat B WHERE P.Player_ID = B.Player_ID and Season like '2018%'  ORDER BY Rebunds desc limit 10")
    rebunds = c.fetchall()
    c.execute("SELECT Player_name,`FG%` as 'FG' FROM Player P,Advanced_stat A WHERE P.Player_ID = A.Player_ID and Season like '2018%'  ORDER BY `FG%` desc limit 10")
    fg = c.fetchall()
    c.execute("SELECT Player_name,`3P%` as 'three' FROM Player P,Advanced_stat A WHERE P.Player_ID = A.Player_ID and Season like '2018%'  ORDER BY `3P%` desc limit 10")
    three = c.fetchall()
    c.execute("SELECT Player_name, OWS FROM Player P,Advanced_stat A WHERE P.Player_ID = A.Player_ID and Season like '2018%'  ORDER BY OWS desc limit 10")
    ows = c.fetchall()
    c.execute("SELECT Player_name, DWS FROM Player P,Advanced_stat A WHERE P.Player_ID = A.Player_ID and Season like '2018%'  ORDER BY DWS desc limit 10")
    dws = c.fetchall()
    c.execute("SELECT Player_name,`FT%` as 'FT' FROM Player P,Advanced_stat A WHERE P.Player_ID = A.Player_ID and Season like '2018%'  ORDER BY `FT%` desc limit 10")
    ft = c.fetchall()
    c.execute("SELECT Player_name, Salary FROM Player ORDER BY Salary desc LIMIT 10 ")
    income = c.fetchall()
    return render_template('leaderboard.html', posts=(points,assists,rebunds,blocks,steals,turnovers, fg, three, ows,dws, ft, income))


@app.route("/register", methods=['GET', 'POST'])
def register():
    form = RegistrationForm()

    if form.validate_on_submit():
        conn = sqlite3.connect('NBA.db')
        c = conn.cursor()
        
        #Add the new blog into the 'blogs' table
        query = 'insert into users VALUES (' + "'" + form.username.data + "',"  + "'" + form.email.data + "'," + "'" + form.password.data + "'" + ')' #Build the query
        c.execute(query) #Execute the query
        conn.commit() #Commit the changes

        flash(f'Account created for {form.username.data}!', 'success')
        return redirect(url_for('home'))
    return render_template('register.html', title='Register', form=form)


@app.route("/login", methods=['GET', 'POST']) #login页面要加内容
def login():
    form = LoginForm()
    if form.validate_on_submit():
        if form.email.data == 'ziqing.yan1102@gmail.com' and form.password.data == '123':
            flash('You have been logged in!','success') #显示话可改成 Enjoy Your Basketball Data Trip
            return redirect(url_for('home'))
        else:
            flash('Login Unsuccessful. Please check username and password', 'danger') 
    return render_template('login.html', title='Login', form=form) #确定成功LGOIN后返回地址。可改，不一定回home

@app.route("/update", methods=['GET', 'POST'])
def update():
    form = UpdateForm()

    if form.validate_on_submit():
        conn = sqlite3.connect('NBA.db')
        c = conn.cursor()

        #Update the player into the 'Player' table
        #query = 'update into Player VALUES (' + "'" + form.team_name.data + "',"  + "'" + form.player_ID.data + "'," + "'" + form.player_name.data + "'," + "'" + form.player_age.data + "'," + "'" + form.nationality.data + "'," + "'" + form.salary.data + "'," + "'" + form.position.data + "'" + ')' #Build the query
        
        if form.team_name is not None:
            query = 'update PLAYER set Team_Name = "' + form.team_name.data + '", Player_Age = "' + form.player_age.data + '" ,Position = "' + form.position.data + '"where Player_ID = ' + form.player_ID.data + ''
            c.execute(query) #Execute the query
            conn.commit() #Commit the changes
        #if form.player_age is not None:
        #   query = 'update PLAYER set Player_Age = "' + form.player_age.data + '" where Player_ID = ' + form.player_ID.data + ''
        #    c.execute(query) #Execute the query
        #    conn.commit() #Commit the changes
        #if form.position is not None:
        #    query = 'update PLAYER set Position = "' + form.position.data + '" where Player_ID = ' + form.player_ID.data + ''
        #    c.execute(query) #Execute the query
        #    conn.commit() #Commit the changes
        

        flash(f'Update succeed for Player {form.player_ID.data}!', 'success')
        return redirect(url_for('team'))
    return render_template('update.html', title='update', form=form) #修改LOGIN

@app.route("/delete", methods=['GET', 'POST'])
def delete():
    form = DeleteForm()

    if form.validate_on_submit():
        conn = sqlite3.connect('NBA.db')
        c = conn.cursor()

        if form.player_ID is not None:
            query = 'delete from PLAYER where Player_ID = ' + form.player_ID.data + ''
            c.execute(query) #Execute the query
            conn.commit() #Commit the changes


        flash(f'Delete succeed for Player {form.player_ID.data}!', 'success')
        return redirect(url_for('team'))
    return render_template('delete.html', title='delete', form=form)

if __name__ == '__main__':
    app.run(debug=True)

