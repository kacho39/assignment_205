from flask import Flask, render_template, request, session, redirect
import pymysql
app = Flask(__name__)
app.secret_key = 'kenny'

# open database connection
db = pymysql.connect("localhost", "root", "alvin1995", "205CDE")

@app.route('/')
def index():
	if 'username' in session:
		username = session['username']
		return render_template('home.html', guest = username)
	else: 
		return render_template('home.html')

@app.route('/selection', methods=['GET', 'POST'])
def selection():
	if 'username' in session:
		username = session['username']
		return render_template('selection.html', guest = username)
	else: 
		return render_template('selection.html')

@app.route('/to-login')
def toSignup():
	return render_template('login.html')

@app.route('/forum/<language>')
def forum(language):
	table_name = 'post_' + language
	cursor = db.cursor()
	sql = "SELECT " +table_name+ ".username, detail, country, " +table_name+ ".post_id, comment_" +language+ ".username as username_comment, comment FROM " +table_name+ " INNER JOIN user ON " +table_name+ ".username = user.username" + " LEFT JOIN comment_" +language+ " ON comment_" +language+ ".post_id = " +table_name+ ".post_id"
	print(sql)
	cursor.execute(sql)
	db.commit()
	results = cursor.fetchall()
	if 'username' in session:
		username = session['username']
		return render_template('forum.html', 
			guest = username,
			language = language,
			posts = results
			)
	else: 
		return render_template('forum.html', 
			language = language,
			posts = results
			)

@app.route('/post', methods=['GET', 'POST'])
def post():
	if request.method == 'POST':
		username = session['username']
		detail = request.form['detail']
		language = request.form['language']
		table_name = 'post_' + language
		cursor = db.cursor()
		sql = "INSERT INTO " + table_name + " (username, detail) VALUES ('" +username+ "','" + detail +"')"
		cursor.execute(sql)
		db.commit()
		return redirect("forum/" + language)
		# return render_template('spanish.html', 
			# guest = username, 
			# language = language)

@app.route('/forum/comment', methods=['GET', 'POST'])
def comment():
	if request.method == 'POST':
		username = session['username']
		comment = request.form['comment']
		language = request.form['language']
		post_id = request.form['post_id']
		table_name = 'comment_' + language
		cursor = db.cursor()
		sql = "INSERT INTO " + table_name + " (post_id, username, comment) VALUES ('" +post_id+ "','" +username+ "','" + comment +"')"
		cursor.execute(sql)
		db.commit()
		return redirect("forum/" + language)


@app.route('/login', methods=['GET','POST'])
def login():
	if request.method == 'POST':
		username = request.form['username']
		password = request.form['password']
		cursor = db.cursor()
		sql = "SELECT username, password FROM user WHERE username = '" +username+ "'AND password = '" + password +"'"
		cursor.execute(sql)
		db.commit()
		results = cursor.fetchall()
		# for result in results:
		# 	print(result)
		# 	print(result[0])
		# return render_template('selection.html', guest = username)
		# session['username'] = username;
		if cursor.rowcount != 0:
			session['username'] = username;
			return render_template('selection.html', guest = username)
		else: 
			return render_template('login.html', wrong_message = 'Username or password is incorrect.')

@app.route('/signup', methods=['GET','POST'])
def signup():
	if request.method == 'POST':
		username = request.form['username']
		password = request.form['password']
		country = request.form['country']
		if (checkIfUsernameExist(username) != True):
			cursor = db.cursor()
			sql = "INSERT INTO user (username, password, country) VALUES ('" +username+ "','" + password+ "','" + country +"')"
			cursor.execute(sql)
			db.commit()
			session['username'] = username;
			return render_template('selection.html', guest = username)
		else:
			return render_template('login.html', wrong_message = 'The username is used by others.')

def checkIfUsernameExist(username):
	cursor = db.cursor()
	sql = "SELECT username FROM user WHERE username = '" +username+ "'"
	cursor.execute(sql)
	db.commit()
	results = cursor.fetchall()
	if cursor.rowcount != 0:
		for result in results:
			usernameInDb = result[0]
		return (username == usernameInDb)
	else:
		return False

@app.route('/signout')
def signout():
	session.pop('username', None)
	return render_template('home.html')

if __name__ == '__main__':
	app.run(debug = True)