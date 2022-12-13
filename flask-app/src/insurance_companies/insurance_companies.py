from flask import Blueprint, request, jsonify, make_response
import json
from src import db


from flask import Blueprint, request, jsonify, make_response
import json
from src import db


insurance = Blueprint('insurance', __name__)

# get the pending insurance claims
@insurance.route('/pendingclaims')
def get_pending_claims():
    cursor = db.get_db().cursor()
    query = '''
        SELECT ic.id, ic.claim_date, ic.claim_amount, p.first_name, p.last_name, p.id as 'patientid'
        FROM insurance_claim ic JOIN insurance_plan ip ON ic.insurance_id = ip.id JOIN patient p ON ip.patient_id = p.id
        WHERE ic.completed = False;
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

# get the completed insurance claims
@insurance.route('/completedclaims')
def get_completed_claims():
    cursor = db.get_db().cursor()
    query = '''
        SELECT ic.id, ic.claim_date, ic.claim_amount, p.first_name, p.last_name, p.id as 'patientid'
        FROM insurance_claim ic JOIN insurance_plan ip ON ic.insurance_id = ip.id JOIN patient p ON ip.patient_id = p.id
        WHERE ic.completed = True;
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

# pull up claim information and premium calculator
@insurance.route('/premiums/<customerid>')
def premium(customerid):
    cursor = db.get_db().cursor()
    query = f'''
        SELECT p.first_name, p.last_name, p.birth_date, p.sex, p.medical_history, p.address,
            p.id, d.first_name AS DrFirst, d.last_name AS DrLast, ip.yearly_cost, ip.covers
        FROM insurance_plan ip JOIN patient p ON ip.id = p.id JOIN doctor d ON d.id = p.primary_care_id
        WHERE ip.id = {customerid};
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
