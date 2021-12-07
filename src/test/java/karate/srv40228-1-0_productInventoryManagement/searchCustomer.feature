@ProductInventory
Feature:searchCustomer


  @obtenerRespuestaPorCaso
  Scenario: pruebas metodo get searchCustomer

    Given header 'Content-Type' = 'application/json'
    When url 'http://ott.wom.uat/ocp/product/srv40228-1-0/rest/productInventoryManagement/searchCustomer/19315921-4'
    And method get
    Then status 500

    



