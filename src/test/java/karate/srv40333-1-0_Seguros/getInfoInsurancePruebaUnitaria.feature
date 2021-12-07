@Insurance_WOM
Feature:flujo seguros

  Background:
    #aqui se ejecuta antes de cada escenario

  @obtenerInformacionSeguro
  Scenario Outline: validaciones de campos String metodo 40333-1-0 GetInfoInsurance

    Given header 'Content-Type' = 'application/json'
    When  url 'http://insurance.wom.uat/ocp/srv40333-1-0/rest/getInfoInsurance'
    And request {"<canal>": "<Vcanal>","<msisdn>": "<Vmsisdn>","<rut>":"<Vrut>"}
    And method POST
    And assert responseStatus == 400 || responseStatus == 401 || responseStatus == 402|| responseStatus == 404 || responseStatus == 409 || responseStatus == 500 || responseStatus == 501
    # Then match response == { code:'#string',message:'#string',subErrors:'#array'}

    Examples:
      | canal   | Vcanal | msisdn  | Vmsisdn     | rut | Vrut      |
      | canal   |        | msisdn  | 56721800257 | rut | 193159214 |
      | canal   | App    | msisdn  |             | rut | 193159214 |
      |         |        | msisdn  | 56721800257 | rut | 193159214 |
      | canal   | App    |         |             | rut | 193159214 |
      | canales | App    | msisdn  | 56721800257 | rut | 193159214 |
      | canal   | App    | msisdns | 56721800257 | rut | 193159214 |
      | canal   | Appas  | msisdn  | 56721800257 | rut | 193159214 |


  @obtenerInformacionSeguroVS
  Scenario Outline: validaciones de campo metodo 40333-1-0-valoresnoString


    Given header 'Content-Type' = 'application/json'
    When url 'http://insurance.wom.uat/ocp/srv40333-1-0/rest/getInfoInsurance'
    And request {"canal": "<Vcanal>","msisdn": <Vmsisdn>,"rut":<Vrut> }
    And method POST
    Then assert responseStatus == 400 || responseStatus == 401 || responseStatus == 402|| responseStatus == 404 || responseStatus == 409 || responseStatus == 500 || responseStatus == 501
    Examples:
      | Vcanal | Vmsisdn       | Vrut       |
      | app    | 56721801189   | "61668357" |
      | app    | "56721801222" | 95473148   |
      | app    | 56721801222   |            |
