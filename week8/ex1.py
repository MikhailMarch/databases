import psycopg2
import geopy
from geopy.geocoders import Nominatim

con = psycopg2.connect(database="dvdrental", user="postgres",
                       password="1234", host="127.0.0.1", port="5432")

print("Database opened successfully")
cur = con.cursor()
cur.execute("SELECT * FROM get_address();")
results = cur.fetchall()
print("Querry processed successfully")
cur.execute("ALTER TABLE address ADD latitude varchar(50);")
cur.execute("ALTER TABLE address ADD longitude varchar(50);")
for result in results:
    print(result[0])
    geolocator = Nominatim(user_agent="database")
    location = geolocator.geocode(result[0])
    if location is not None:
        print((location.latitude, location.longitude))
        cur.execute("UPDATE address SET latitude = %s, longitude = %s WHERE address.address = %s;",(location.latitude,location.longitude,result[0]))
    else:
        print(0,0)
        cur.execute("UPDATE address SET latitude = %s, longitude = %s WHERE address.address = %s;",(0, 0, result[0]))
