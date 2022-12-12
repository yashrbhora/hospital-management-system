from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db
from datetime import date, datetime

# A function to derive age from bdate
def calculateAge(bdate_str):
    bdate = datetime.strptime(bdate_str, '%m/%d/%Y')
    today = date.today()
    age = today.year - bdate.year - \
          ((today.month, today.day) < (bdate.month, bdate.day))
    return age


patients = Blueprint('patients', __name__)

# Get list of doctor names
@patients.route('/doc_names', methods=['GET'])
def get_doc_name():
    cursor = db.get_db().cursor()
    query = '''SELECT id as value, full_name as label from
                (SELECT id, CONCAT(first_name , \' \' , last_name) AS full_name FROM doctor) as doc_name'''
    cursor.execute(query)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))

    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    
    return the_response

# Insert new appoitment data
@patients.route('/schedule_appt', methods=['POST'])
def schedule_appt():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    # Grabbing info form request forms
    fname = request.form['fname']
    lname = request.form['lname']
    psymptoms = request.form['psymptoms']
    doc_id = request.form['doc_id']
    appt_date = request.form['appt_date']
    appt_time = request.form['appt_time']

    # Find corresponding patient id in database
    cursor.execute(f'select id from patient where (first_name = \"{fname}\" AND last_name = \"{lname}\")')
    theData = cursor.fetchall()
    for row in theData:
        p_id = row[0]

    # Generate latest id for new appointment
    cursor.execute('select id from appointment order by id desc limit 1')
    theData = cursor.fetchall()
    appt_id = theData[0][0] + 1

    # Execute query
    appt_query = f'''INSERT INTO appointment(id, patient_id, doctor_id, date, time, symptoms)
            VALUES({appt_id}, {p_id}, {doc_id}, \"{appt_date}\", \"{appt_time}\", \"{psymptoms}\")'''
    cursor.execute(appt_query)
    db.get_db().commit()

    return 'Success.'


# Insert new patient registration
@patients.route('/patient_register', methods=['POST'])
def register_patient():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    
    # Grabbing info form request forms
    fname = request.form['fname']
    lname = request.form['lname']
    bdate = request.form['bdate']
    age = calculateAge(bdate)
    sex = request.form['sex']
    addr = request.form['addr']
    lang = request.form['lang']
    med_hist = request.form['med_hist']
    
    # Emergency contact
    e_fname = request.form['e_fname']
    e_lname = request.form['e_lname']
    e_email = request.form['e_email']
    e_con = request.form['e_con']
    e_rel = request.form['e_rel']
    
    # Get id for primary care
    doc_id = request.form['doc_id']

    '''
    # Find corresponding doctor id in database
    cursor.execute(f'select id from doctor where (first_name = \"{doc_fname}\" AND last_name = \"{doc_lname}\")')
    theData = cursor.fetchall()
    for row in theData:
        doc_id = row[0]
    '''

    # In case patient has no preferred doctor
    try: doc_id
    except: doc_id = None

    if doc_id is None:
        doc_id = 1

    # Get latest e_contact id
    cursor.execute('select id from emergency_contact order by id desc limit 1')
    theData = cursor.fetchall()
    e_id = theData[0][0] + 1

    # Add to emergency contact
    e_query = f'''INSERT INTO emergency_contact(id, first_name, last_name, email, contact, relationship)
                VALUES({e_id}, \"{e_fname}\", \"{e_lname}\", \"{e_email}\", \"{e_con}\", \"{e_rel}\")'''

    cursor.execute(e_query)
    db.get_db().commit()

    # Add to patient table

    # Get latest patient id
    cursor.execute('select id from patient order by id desc limit 1')
    theData = cursor.fetchall()
    p_id = theData[0][0] + 1

    p_query = f'''INSERT INTO patient(id, emergency_id, first_name, last_name,
                birth_date, age, sex, address, language, 
                medical_history, primary_care_id)
                VALUES({p_id}, {e_id}, \"{fname}\", \"{lname}\", 
                "{bdate}\", {age}, \"{sex}\", \"{addr}\", \"{lang}\",
                \"{med_hist}\", {doc_id})'''

    cursor.execute(p_query)
    db.get_db().commit()
    
    return 'Success.'

