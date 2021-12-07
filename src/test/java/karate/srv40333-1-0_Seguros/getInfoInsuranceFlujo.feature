@Insurance_WOM
Feature:flujo seguros

  Background:
    #aqui se ejecuta antes de cada escenario

  @obtenerInformacionSeguro
  Scenario Outline: validaciones de campos String metodo 40333-1-0 GetInfoInsurance

    Given header 'Content-Type' = 'application/json'
    When  url 'http://insurance.wom.uat/ocp/srv40333-1-0/rest/getInfoInsurance'
    And request
    """
    {
    "<canal>": "<Vcanal>",
    "<msisdn>":"<Vmsisdn>",
    "<rut>":"<Vrut>"
    }
    """
    And method POST
    And assert responseStatus == 201
    Then match response == { code:'#string',message:'#string',subErrors:'#array'}

    Examples:
      | canal | Vcanal | msisdn | Vmsisdn     | rut | Vrut      |
      | canal | App    | msisdn | 56721801670 | rut | 175283552 |
