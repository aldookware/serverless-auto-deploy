import json
import requests

def get_city_weather(event, context):
    appid = '82392d189fa37375cabd2dbb6c23c347'
    city_id = 232422
    url = f"https://api.openweathermap.org/data/2.5/weather?id={city_id}&appid={appid}"
    
    response =  requests.get(url=url)

    return response.text
