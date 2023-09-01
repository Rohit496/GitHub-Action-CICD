trigger TaskTrigger on Task(before insert) {
  System.debug('Outside the trigger');
  if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('Inside the trigger');
    for (Task t : Trigger.new) {
      t.Priority = 'High';
    }
  }
}