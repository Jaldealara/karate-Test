@Insurance_WOM
Feature:oneShotDelivery


  @obtenerRespuestaPorCaso
  Scenario Outline: prueba srv40229-1-0 requestSinPromocion


    Given header 'Content-Type' = 'application/json'

    When url 'http://ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShotDelivery'
    And request { "ProductOrderOneShotDeliveryRequestMessage": {"<orderIdDOM>": "<orderId>","<cardId>": "<tarjeta>","<email>": "<e-mail>","<channel>": "<canales>","items":[{"<itemCode>": "<codigoItem>","<itemName>": "<nombreP>","<itemType>": "<tipoProducto>","<type>": "<PrePOST>","<serviceType>":"<producto>","<quantity>": <cantidad>,"installmentInfoMsg": {"<version>": "<versionPago>","<noOfInstallments>": "<cuotas>"}}]}}
    And method POST
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And assert responseStatus == 200 || responseStatus == 201

    Examples:
      | orderIdDOM | orderId           | cardId | tarjeta                  | email | e-mail                          | channel | canales | itemCode | codigoItem   | itemName | nombreP    | itemType | tipoProducto | type | PrePOST  | serviceType | producto | quantity | cantidad | version | versionPago            | noOfInstallments | cuotas |
      | orderIdDOM | 52C9KV6ZNF4A      | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot          | noOfInstallments | 0      |
      | orderIdDOM | FBX489KV6ZNNA8    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | 6CuotasSinPagoInicial  | noOfInstallments | 6      |
      | orderIdDOM | FBX489KV6ZNVHO    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | Fibra6                 | noOfInstallments | 6      |
      | orderIdDOM | FBX489KV6ZO3JR    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | Fibra12                | noOfInstallments | 12     |
      | orderIdDOM | FBX489KV6ZOBG7    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | 12CuotasSinPagoInicial | noOfInstallments | 0      |
      | orderIdDOM | FBX489KV6ZOJFL    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | Fibra24                | noOfInstallments | 0      |
      | orderIdDOM | 1EBS19KV6ZTNRA    | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | WompayOneShot          | noOfInstallments | 0      |
      | orderIdDOM | 5VZ1NHGT9KV6ZWZBV | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 2        | version | Fibra6                 | noOfInstallments | 0      |
      | orderIdDOM | 5VZ1NHGT9KV6ZXPDU | cardId | 617094119c321f00012933a4 | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | itemType | HardwareOP   | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | 12CuotasSinPagoInicial | noOfInstallments | 0      |

