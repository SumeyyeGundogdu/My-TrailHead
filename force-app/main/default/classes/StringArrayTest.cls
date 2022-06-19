public with sharing class StringArrayTest {
    public static List<string> generateStringArray(integer lenghtOfList){
        List<String> testList = new List<String>();
        for(integer i = 0; i<lenghtOfList; i++){
            testList.add('Test ' + i);            
        }
        System.debug(testList);
        return testList;
    }
}