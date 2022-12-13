from flask import Blueprint, request, jsonify, make_response
import json
from src import db


doctors = Blueprint('doctors', __name__)

# Get different medications
@doctors.route('/medications', methods=['GET'])
def get_doc_name():
    cursor = db.get_db().cursor()
    query = '''SELECT id as value, drug_name as label from medication'''
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

# Insert patient precription
@doctors.route('/prescription', methods=['POST'])
def schedule_appt():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    # Grabbing info form request forms
    fname = request.form['fname']
    lname = request.form['lname']
    doc_id = request.form['doc_id']
    pre_date = request.form['pre_date']
    dosage = request.form['dosage']
    pmed_id = request.form['pmed']

    # Find corresponding patient id in database
    cursor.execute(f'select id from patient where (first_name = \"{fname}\" AND last_name = \"{lname}\")')
    theData = cursor.fetchall()
    for row in theData:
        p_id = row[0]

    # Generate latest id for new prescription
    cursor.execute('select id from patient_prescription order by id desc limit 1')
    theData = cursor.fetchall()
    pre_id = theData[0][0] + 1

    # Execute query
    pre_query = f'''INSERT INTO patient_prescription(id, patient_id, doctor_id, medication_id, date_prescribed, 
                    ingestion_freq)
                    VALUES({pre_id}, {p_id}, {doc_id}, \"{pmed_id}\", \"{pre_date}\", \"{dosage}\")'''
    cursor.execute(pre_query)
    db.get_db().commit()

    return 'Success.'

# pull up appointment information
@doctors.route('/appointments/<doctorid>')
def get_appointments(doctorid):
    cursor = db.get_db().cursor()
    query = f'''
        SELECT p.id, p.first_name AS 'pat_first', p.last_name AS 'pat_last', 
            d.first_name, d.last_name, a.id, a.date, a.time, a.symptoms
        FROM appointment a JOIN doctor d on a.doctor_id = d.id JOIN patient p on p.id = a.patient_id
        WHERE a.doctor_id = {doctorid};
    '''
    cursor.execute(query)
       # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)
