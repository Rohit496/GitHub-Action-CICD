trigger LeadTrigger on Lead(before update) {
  if (Trigger.isBefore && Trigger.isUpdate) {
    System.debug('Inside the trigger');
    for (Lead leadRecord : Trigger.new) {
      // leadRecord.Status = 'Working-Contacted';
      if (leadRecord.Industry == 'Healthcare') {
        leadRecord.LeadSource = 'Purchase List';
        leadRecord.Primary__c = 'Yes';
      }
    }
  }

}