from flask import Flask, jsonify
from flask_cors import CORS, cross_origin

app = Flask(__name__)
CORS(app)

# Sample data
emissions_data = [
    {
        "location": "New York",
        "coordinates": [40.7128, -74.0060],
        "emissions": 1000
    },
    {
        "location": "Los Angeles",
        "coordinates": [34.0522, -118.2437],
        "emissions": 800
    },
    {
        "location": "Chicago",
        "coordinates": [41.8781, -87.6298],
        "emissions": 700
    },
    {
        "location": "Houston",
        "coordinates": [29.7633, -95.3632],
        "emissions": 600
    },
    {
        "location": "Phoenix",
        "coordinates": [33.4484, -112.0739],
        "emissions": 500
    },
     {
        "location": "Malindi, Kenya",
        "coordinates": [-3.218933, 40.116917],
        "emissions": 250
    },
     {
        "location": "Indian Ocean",
        "coordinates": [-10.0000, 70.0000],
        "emissions": 0
    },
]

@app.route('/api/emissions', methods=['GET'])
@cross_origin()
def get_emissions():
    return jsonify(emissions_data)

if __name__ == '__main__':
    app.run(debug=True)