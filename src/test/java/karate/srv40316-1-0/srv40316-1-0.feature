@Insurance_WOM
Feature:flujo seguros


  @obtenerInformacionSeguro
  Scenario Outline: validaciones de campo metodo 40316-1-0 metodo sincrono

    Given header 'Content-Type' = 'application/json'
    When url 'http://insurance.wom.desa/ocp/product/srv40316-1-0/rest/digitalOrdering/oneShotInsurancePay'
    And request {"<transactionId>": "<VtransactionId>","<orderId>": "<VorderId>","<idTarjeta>": "<VidTarjeta>"}
    And method POST
    And assert responseStatus == 404 || responseStatus == 500||responseStatus == 400

    Examples:
      | transactionId | VtransactionId      | orderId | VorderId | idTarjeta | VidTarjeta             |
      | transactionId | 1628115311768123123 | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      | transactionId |                     | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       | orderId |          | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       | orderId | 42430428 | idTarjeta |                        |
      | transactionId | 1628115311768       | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      |               |                     | orderId | 42430428 | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       |         |          | idTarjeta | 61030705f7c9270001a822 |
      | transactionId | 1628115311768       | orderId | 42430428 |           |                        |
      |               |                     |         |          |           |                        |

