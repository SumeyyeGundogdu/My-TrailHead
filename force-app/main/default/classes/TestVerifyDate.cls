@isTest
private class TestVerifyDate {
   @isTest
   private static void testCheckDays(){
      // VerifyDate obj = new VerifyDate();
      Date D =VerifyDate.CheckDates(Date.parse('01/01/2020'), Date.parse('01/05/2020'));
      system.assertEquals(date.parse('01/05/2020'), D);      
   }
   @isTest
   private static void testCheckDays1(){
      // VerifyDate obj = new VerifyDate();
      Date D =VerifyDate.CheckDates(Date.parse('01/01/2020'), Date.parse('05/05/2020'));
      system.assertEquals(date.parse('01/31/2020'), D);      
   }

   @isTest
   private static void testSetEndOfMonthDate(){
      Date returndate = VerifyDate.SetEndOfMonthDate(date.parse('01/01/2020'));
   }
}
