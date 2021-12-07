@token
Feature:getToken

  @GetToken
  Scenario:obetener token para consumir

    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    * url 'https://seguridad.ose-uat.wom.cl:10443/auth/realms/usuario/protocol/openid-connect/token'
    * header 'Content-Type' = 'application/x-www-form-urlencoded'
    * form field grant_type = 'password'
    * form field client_id = 'af4117d7'
    * form field client_secret = '4ebee7576f328ade8e922757535c354c'
    * form field username = 'wom-magento'
    * form field password = 'wom-magento'
    * method POST
    * status 200
    * match responseType == 'json'


