@CustomerBillCycle
Feature:test karate


  @pruebasUnitarias
  Scenario Outline: obtencion de informacion datos preliminares

    * header 'Content-Type' = 'application/x-www-form-urlencoded'

    Given url 'http://productcoreservice.ose.wom.cl/ocp/SRV40174-2-0/rest/planoffering/<data>/APP'

    And method GET

    * status 400

    Examples:
      | data        |
      | 482089011 |

