@Insurance_WOM
Feature:oneShotDelivery


  @obtenerRespuestaPorCaso
  Scenario Outline: prueba srv40229-1-0 requestSinPromocion


    Given header 'Content-Type' = 'application/json'
    When url 'http://ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShot'
    And request {"ProductOrderOneShotRequestMessage": {"<cardId>": "<cardID>","<email>": "<Email>","<channel>": "<canal>","items":[{"<itemCode>": "<codigoItem>","<itemName>": "<nombreItem>","<itemType>": "<tipoItem>","<type>": "<PrePost>","<serviceType>":"<producto>","<quantity>":<cantidad>,"installmentInfoMsg": {"<version>": "<tipoPago>","<noOfInstallments>": <cuotas>}}]}}
    And method POST
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And assert responseStatus == 200 || responseStatus == 201

    Examples:
      | cardId | cardID                   | email | Email                           | channel | canal   | itemCode | codigoItem   | itemName | nombreItem | itemType | tipoItem   | type | PrePost  | serviceType | producto | quantity | cantidad | version | tipoPago              | noOfInstallments | cuotas |
      | cardId | asdasda                  | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId |                          | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      |        |                          | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | null                     | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | sadasdsad                       | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email |                                 | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e |       |                                 | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | null                            | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | Mkjkjkj | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel |         | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl |         |         | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | null    | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 0a312        | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode |              | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   |          |              | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | null         | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | asdasd     | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName |            | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 |          |            | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | null       | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | Haasdas    | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  |            | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn |          |            | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | null       | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Pasdas   | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type |          | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP |      |          | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | null     | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | sadsad   | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType |          | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid |             |          | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | null     | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 121q3123 | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity |          | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  |          |          | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | null     | version | WompayOneShot | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | sad                   | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version |                       | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        |         |                       | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | null                  | noOfInstallments | 6      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6a12   |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments |        |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot |                  |        |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM   | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | null   |


  @obtenerRespuestaPorCaso
  Scenario Outline: prueba srv40229-1-0 requestSinPromocion


    Given header 'Content-Type' = 'application/json'
    When url 'https://apicast-ott.wom.uat/ocp/customer/srv40229-1-0/rest/productOrdering/productOrderOneShot'
    And request {"ProductOrderOneShotRequestMessage": {"<cardId>": "<cardID>","<email>": "<Email>","<channel>": "<canal>","items":[{"<itemCode>": "<codigoItem>","<itemName>": "<nombreItem>","<itemType>": "<tipoItem>","<type>": "<PrePost>","<serviceType>":"<producto>","<quantity>":<cantidad>,"installmentInfoMsg": {"<version>": "<tipoPago>","<noOfInstallments>": <cuotas>},"promotionDetailMsg": [{"<promotionID>": "<codePromo>","<promotionName>": "<namePromo>"}]}]}}
    And method POST
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And assert responseStatus == 200 || responseStatus == 201

    Examples:
      | cardId | cardID                   | email | Email                           | channel | canal | itemCode | codigoItem   | itemName | nombreItem | itemType | tipoItem   | type | PrePost  | serviceType | producto | quantity | cantidad | version | tipoPago              | noOfInstallments | cuotas | promotionID | codePromo | promotionName | namePromo |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | STBasdsa  | promotionName | STB10000  |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID |           | promotionName | STB10000  |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      |             |           | promotionName | STB10000  |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | null      | promotionName | STB10000  |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | STB10000  | promotionName | sdsd      |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | STB10000  | promotionName |           |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | STB10000  |               |           |
      | cardId | 612fdcb91de72b0001c4be2e | email | jeremy.aldea@consultores.wom.cl | channel | MIWOM | itemCode | 001.004.0003 | itemName | WOM STB pn | iteType  | HardwareOP | type | Postpaid | serviceType | PRODUCT  | quantity | 1        | version | WompayOneShot | noOfInstallments | 6      | promotionID | STB10000  | promotionName | null      |

