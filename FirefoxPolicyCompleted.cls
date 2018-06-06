global class NoFirefoxPolicyCondition implements TxnSecurity.PolicyCondition {

  public boolean evaluate(TxnSecurity.Event e) {
    if (e.action == 'Login'){
      LoginHistory loginAttempt = [select Browser from LoginHistory where Id = :e.data.get('loginHistoryId')];
      if (loginAttempt.Browser.startsWith('Firefox')){
          return true;
      }
    }
    return false;
  }

}