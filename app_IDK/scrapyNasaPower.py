import requests
import json

# Especifique a latitude e longitude da localização desejada
latitude = -22.906847
longitude = -43.172897

# Especifique a data inicial e final desejada (no formato AAAA-MM-DD)
start_date = '2022-04-01'
end_date = '2022-04-30'

# Especifique o sistema de coordenadas desejado (opcional, padrão é 'GEOS-5')
coords = 'GEOS-5'

# Faça a solicitação para a API da NASA Power
#url = f'https://power.larc.nasa.gov/api/temporal/daily/point?parameters=ALLSKY_SFC_SW_DWN&community=RE&longitude={longitude}&latitude={latitude}&start={start_date}&end={end_date}&format=JSON&header=false&user=anonymous&password=anonymous&system={coords}'
url = f'https://power.larc.nasa.gov/api/temporal/climatology/point?parameters=T2M,PRECTOTCORR_SUM&community=AG&longitude=-48.3232&latitude=-21.2581&format=JSON'
response = requests.get(url)

# Verifique se a solicitação foi bem-sucedida
if response.status_code == 200:
    # Obtenha os dados JSON da resposta da API
    data = json.loads(response.text) # convertendo aqui em dicionario
    print(data['properties']['parameter']['T2M']['JAN'])
    print(data['properties']['parameter']['PRECTOTCORR_SUM'])
else:
    print(f'Erro na solicitação: {response.status_code}')

    
