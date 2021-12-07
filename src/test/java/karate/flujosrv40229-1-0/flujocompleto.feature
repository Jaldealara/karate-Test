@Insurance_WOM

Feature:oneShotDelivery

  Background:
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    * def orden = call read('orderID.feature')
    * def orderId = orden.response.orderId
  @ejecucionUnitariasSP
  Scenario Outline: prueba srv40229-1-0 pruebas unitarias (sinPromocion)



    Given header 'Content-Type' = 'application/json'
    When url 'http://ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShotDelivery'
    And request { "ProductOrderOneShotDeliveryRequestMessage": {"<orderIdDOM>": "<orderId>","<cardId>": "<tarjeta>","<email>": "<e-mail>","<channel>": "<canales>","items":[{"<itemCode>": "<codigoItem>","<itemName>": "<nombreP>","<itemType>": "<tipoProducto>","<type>": "<PrePOST>","<serviceType>":"<producto>","<quantity>": <cantidad>,"installmentInfoMsg": {"<version>": "<versionPago>","<noOfInstallments>": "<cuotas>"}}]}}
    And method POST
    Then assert responseStatus == 200 || responseStatus == 201

    Examples:
      | orderIdDOM |               | cardId | tarjeta                  | email | e-mail                          | channel | canales | itemCode | codigoItem    | itemName | nombreP    | itemType | tipoProducto | type | PrePOST        | serviceType | producto | quantity | cantidad | version | versionPago | noOfInstallments | cuotas |
      | orderIdDOM |               | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003  | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid       | serviceType | PRODUCT  | quantity | 1        | version | Fibra3      | noOfInstallments | 3      |
