@isTest
public class LeadProcessorTest {

   @isTest 
    public static void testit(){
        List<Lead> L_list = new List<Lead>();

        for(integer i=0; i<200; i++){
            Lead L = new Lead();
            L.LastName = 'name'+i;
            L.Company = 'Company';
            L.Status = 'Random Status';
            L_list.add(L);
        }
   
        insert L_list;

        Test.startTest();
        LeadProcessor lp  = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
    }   
}
