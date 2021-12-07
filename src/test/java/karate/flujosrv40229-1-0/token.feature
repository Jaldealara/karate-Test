@token
Feature:getToken

  Background:

  @GetToken
  Scenario:obetener token para consumir
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    * configure ssl = true
    * url 'https://rh-sso-amp.wom.amp/auth/realms/customer-care/protocol/openid-connect/token'
    * header 'Content-Type' = 'application/x-www-form-urlencoded'
    * form field grant_type = 'password'
    * form field client_id = '390aa515'
    * form field client_secret = 'a0d4289bad77041014777d63e33054e3'
    * form field username = 'adimp_mskill'
    * form field password = 'Adwompre1253'
    * method POST
    * status 200
    * match responseType == 'json'


