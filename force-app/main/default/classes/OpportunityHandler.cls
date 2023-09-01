public with sharing class OpportunityHandler {
  public static void afterUpdate(List<Opportunity> oppList) {
    List<Task> taskList = new List<Task>();
    for (Opportunity oppRecord : oppList) {
      System.debug('1111111111');
      if (oppRecord.StageName == 'Closed Won') {
        System.debug('222222222222');
        Task t = new Task();
        t.Priority = 'High';
        t.Subject = 'Its Urgent';
        t.WhatId = oppRecord.Id;
        t.OwnerId = oppRecord.OwnerId;

        taskList.add(t);
        System.debug('taskList' + taskList);
      }
    }
    if (!taskList.isEmpty()) {
      System.debug('3333333333333');
      insert taskList;
    }
  }
}