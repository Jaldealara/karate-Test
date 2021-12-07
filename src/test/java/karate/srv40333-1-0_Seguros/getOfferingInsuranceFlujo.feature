@Insurance_WOM
Feature:flujo seguros

  Background:
    * def llamadaDatos = call read('getInfoInsuranceFlujo.feature')
    * def rut = llamadaDatos.rut
    * def numero = llamadaDatos.msisdn
    * def imei = llamadaDatos.imei
    * def trID = llamadaDatos.trID

  @obtenerInformacionSeguro
 Scenario Outline : validaciones de campos String metodo 40333-1-0 GetInfoInsurance

    Given header 'Content-Type' = 'application/json'
    When  url 'http://insurance.wom.uat/ocp/srv40333-1-0/rest/getOfferingInsurance'
    And request
    """
  {
    "canal": "App",
    "rut": "<rut>",
    "msisdn": "<numero>",
    "imei": "<imei>",
    "segmento": "<segmento>",
    "transactionId": "<trID>",
    "scenario": "insuranceOnly"
}
    """
    And method POST
    And assert responseStatus == 201
    #Then match response == { code:'#string',message:'#string',subErrors:'#array'}
    Examples:
      |  |  |  |  | segmento |  |
      |  |  |  |  | prepaid  |  |







