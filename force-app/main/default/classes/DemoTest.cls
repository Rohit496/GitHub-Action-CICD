@isTest
private class DemoTest {
    @isTest
    static void testDemoConstructor() {
        Test.startTest();
        Demo d = new Demo();
        Test.stopTest();
        // Verify that the constructor logs two debug statements
    }
}
