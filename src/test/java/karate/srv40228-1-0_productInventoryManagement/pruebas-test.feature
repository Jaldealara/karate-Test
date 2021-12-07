@TMFservices
Feature:servicio TMF customer

  Background: 
    #

  @obtenerDatosDeCliente
  Scenario Outline:srvTMF-002 Obtener Datos De Cliente

    Given header 'Content-Type' = 'application/json'
    * url 'https://google.cl'
    * request '{<A>="<a>",<B>="<b>"}'
    * method POST
    And assert responseStatus == 400 || responseStatus == 401 || responseStatus == 402|| responseStatus == 404 || responseStatus == 409 || responseStatus == 500 || responseStatus == 501
    Then match response == { code:'#string',message:'#string',subErrors:'#array'}

    Examples:
      | A | a    | B | b |
      | A |      | B | b |
      | A | z    | B | b |
      | A | zz   | B | b |
      | A | null | B | b |
      | A | 999  | B | b |
      | A | a   | B  |   |
      | A | a   | B  |  z |



    
    