trigger CaseTrigger on Case(before insert) {
  if (Trigger.isBefore && Trigger.isInsert) {
    for (Case caseRecord : Trigger.new) {
      if (caseRecord.Origin == 'Phone') {
        caseRecord.Priority = 'High';
      } else {
        caseRecord.Priority = 'Low';
      }
    }
  }

}