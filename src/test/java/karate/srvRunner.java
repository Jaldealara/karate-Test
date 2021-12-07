package karate;

import junit5.Karate;

class srvRunner {

    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:Karate/srv40228-1-0_productInventoryManagement/searchCustomer.feature").tags("@productInventory");
    }
}
