@Insurance_WOM

Feature:oneShotDelivery

  Background:
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    * def Rtoken = call read('token.feature')
    * def token = Rtoken.response.access_token

  @ejecucionUnitariasSP
  Scenario: prueba srv40229-1-0 pruebas unitarias (sinPromocion)
    * configure ssl = true

    Given header 'Content-Type' = 'application/json'
    When url 'https://ott-apicast-womac.wom.uat/ros-rest/delivery/ott/order'


    And request
    """
{
  "site": "wom.cl",
  "shippingType": "HD",
  "deliveryType": "SD",
  "estimatedDeliveryDate": "2021-08-25",
  "salesChannelId": " ",
  "channel": "ott",
  "shippingAddress": {
    "country": "Chile",
    "city": "Santiago",
    "address": "CALLE LAUTARO 456",
    "location": {
      "region": "Metropolitana",
      "province": "SANTIAGO",
      "commune": "SANTIAGO",
      "numero": "271"
    },
    "contact": {
      "name": "Freddy",
      "email": "f.archileaguilar@gmail.com",
      "phone": "972464493"
    },
    "custom": {
      "recibeTercero": "NO"
    }
  },
  "billingAddress": {
    "country": "Chile",
    "city": "SANTIAGO",
    "address": "CALLE LAUTARO 123",
    "location": {
      "region": "Metropolitana",
      "province": "SANTIAGO",
      "commune": "SANTIAGO2",
      "numero": "271"
    },
    "contact": {
      "name": "Freddy",
      "email": "f.archileaguilar@gmail.com",
      "phone": "972464493"
    }
  },
  "items": [
    {
      "sku": "001.004.0003",
      "name": "OTT STB",
      "quantity": "1"
    }
  ],
  "customer": {
    "rut": "19830933-8",
    "name": "Freddy",
    "email": "jeremy.aldea@consultores.wom.cl",
    "phone": "972464493",
    "custom": {
      "apellidoTitular": "Archile",
      "telefonoFijo": ""
    }
  },
  "scheduledId": "ZFI7KLKW9WXQ"
  }
    """

    And method POST

