from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, BooleanField, TextField, TextAreaField, SelectField
from wtforms.validators import DataRequired, Length, Email, EqualTo


class RegistrationForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired(), Length(min=2, max=20)])
    email = StringField('Email',validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    confirm_password = PasswordField('Confirm Password', validators=[DataRequired(), EqualTo('password')])
    submit = SubmitField('Sign Up')


class LoginForm(FlaskForm):
    email = StringField('Email',validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    remember = BooleanField('Remember Me')
    submit = SubmitField('Login')
    
class UpdateForm(FlaskForm):
    team_name = StringField('Team_Name')
    player_ID = StringField('Player_ID',validators=[DataRequired()])
    #player_name = StringField('Player_name',validators=[DataRequired()])
    player_age = StringField('Player_age')
    #nationality = StringField('Nationality')
    #salary = StringField('Salary')
    position = StringField('Position')
    update = SubmitField('Update')

class DeleteForm(FlaskForm):
    player_ID = StringField('Player_ID',validators=[DataRequired()])
    #player_name = StringField('Player_name',validators=[DataRequired()])
    delete = SubmitField('Delete')
