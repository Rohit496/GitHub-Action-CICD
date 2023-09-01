@isTest
private class DemoTest {
    @isTest
    static void testDemoConstructor() {
        Test.startTest();
        Demo d = new Demo();
        Test.stopTest();
        // Verify that the constructor logs two debug statements
        List<LogEntry> logs = [SELECT Id, Application, Level, Message FROM ApexLog WHERE Application = 'SFDC' AND Level = 'DEBUG' ORDER BY CreatedDate DESC LIMIT 2];
        System.assertEquals(2, logs.size(), 'Expected two debug logs');
        System.assertEquals('Demo constructor', logs[0].Message, 'Unexpected debug log message');
        System.assertEquals('Demo constructor', logs[1].Message, 'Unexpected debug log message');
    }
}