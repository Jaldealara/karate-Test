@Insurance_WOM
Feature:oneShotDelivery


  @obtenerRespuestaPorCaso
  Scenario Outline: prueba srv40229-1-0 requestSinPromocion

    Given header 'Content-Type' = 'application/json'
    When url 'http://ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShotDelivery'
    And request {"ProductOrderOneShotDeliveryRequestMessage": {"<orderIdDOM>": "<orderId>","<cardId>": "<tarjeta>","<email>": "<e-mail>","<channel>": "<canales>","items": [{"<itemCode>": "<codigoItem>","<itemName>": "<nombreP>","<itemType>": "<tipoProducto>","<type>": "<PrePOST>","<serviceType>": "<producto>","<quantity>": <cantidad>,"installmentInfoMsg": {"<version>": "<versionPago>","<noOfInstallments>": <cuotas>},"<promotionDetailMsg>": [{"<promotionID>": "<promocion>","<promotionName>": "<nombrePromocion>"}]}]}}
    And method POST
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And assert responseStatus == 200 || responseStatus == 201

    Examples:
      | orderIdDOM | orderId         | cardId | tarjeta                  | email | e-mail                          | channel | canales | itemCode | codigoItem   | itemName | nombreP    | itemType | tipoProducto | type | PrePOST  | serviceType | producto | quantity | cantidad | version | versionPago            | noOfInstallments | cuotas | promotionID | promocion | promotionName | nombrePromocion |
      | orderIdDOM | QS1E8KV70JD0P   | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | WompayOneShot          | noOfInstallments | 0      | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | QS1E8KV70KADI   | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | Fibra6                 | noOfInstallments | 6      | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | QS1E8KV70KJ59   | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | 12CuotasSinPagoInicial | noOfInstallments | 12     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | QS1E8KV70KPQN   | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | Fibra24                | noOfInstallments | 24     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | QS1E8KV70KWLJ   | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | 24CuotasSinPagoInicial | noOfInstallments | 24     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | GKUVZ9KV70RUSD  | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | Fibra6                 | noOfInstallments | 6      | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | GKUVZ9KV70S2D6  | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | 12CuotasSinPagoInicial | noOfInstallments | 12     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | 150QUQ9KV70S8XE | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | Fibra24                | noOfInstallments | 24     | promotionID | STB10010  | promotionName | STB10010        |
      | orderIdDOM | 150QUQ9KV70SF28 | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot          | noOfInstallments | 0      | promotionID | STB10010  | promotionName | STB10010        |