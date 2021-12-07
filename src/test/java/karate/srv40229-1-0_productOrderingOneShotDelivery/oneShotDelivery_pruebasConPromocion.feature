@Insurance_WOM
Feature:oneShotDelivery


  @obtenerRespuestaPorCaso
  Scenario Outline: prueba srv40229-1-0 requestConPromocion


    Given header 'Content-Type' = 'application/json'
    When url 'http://ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShotDelivery'
    And request {"ProductOrderOneShotDeliveryRequestMessage": {"<orderIdDOM>": "<orderId>","<cardId>": "<tarjeta>","<email>": "<e-mail>","<channel>": "<canales>","items": [{"<itemCode>": "<codigoItem>","<itemName>": "<nombreP>","<itemType>": "<tipoProducto>","<type>": "<PrePOST>","<serviceType>": "<producto>","<quantity>": <cantidad>,"installmentInfoMsg": {"<version>": "<versionPago>","<noOfInstallments>": <cuotas>},"<promotionDetailMsg>": [{"<promotionID>": "<promocion>","<promotionName>": "<nombrePromocion>"}]}]}}
    And method POST
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And assert responseStatus == 400

    Examples:
      | orderIdDOM | orderId           | cardId | tarjeta                  | email | e-mail                          | channel | canales | itemCode | codigoItem   | itemName | nombreP    | itemType | tipoProducto | type | PrePOST  | serviceType | producto | quantity | cantidad | version | versionPago           | noOfInstallments | cuotas | promotionID | promocion | promotionName | nombrePromocion |
      | orderIdDOM | 5VZ1NHGT9KV6ZZVJS | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | WompayOneShot         | noOfInstallments | 0      | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | 2JCXP7KV705RIL    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | Fibra12               | noOfInstallments | 12     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | 2JCXP7KV7064AD    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | 6CuotasSinPagoInicial | noOfInstallments | 6      | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | 2JCXP7KV706G1L    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | Fibra6                | noOfInstallments | 6      | promotionID | STB10010  | promotionName | STB10010        |



