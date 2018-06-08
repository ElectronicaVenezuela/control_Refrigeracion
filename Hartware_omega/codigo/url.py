#import urllib2
#response = urllib2.urlopen('http://python.org/')
import httplib2
resp, content = httplib2.Http().request("https://api.thingspeak.com/update?api_key=DQ751GECY94XV1LW&field1=13")
#html = response.read()
#print html
