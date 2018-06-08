import httplib
conn = httplib.HTTPSConnection("api.thingspeak.com")
#"https://api.thingspeak.com/update?api_key=DQ751GECY94XV1LW&field1=13"
conn.request("GET", "/update?api_key=DQ751GECY94XV1LW&field1=10")
r1 = conn.getresponse()
print r1.status, r1.reason
conn.close()