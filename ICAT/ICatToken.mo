// This is a generated Motoko binding.
// Please use `import service "ic:canister_id"` instead to call canisters on the IC if possible.

module {
  public type Account = { owner : Principal; subaccount : ?Subaccount };
  public type AccountId = Blob;
  public type AccountId__1 = Blob;
  public type AccountId__2 = Blob;
  public type Account__1 = { owner : Principal; subaccount : ?Subaccount };
  public type Address = Text;
  public type Address__1 = Text;
  public type Address__2 = Text;
  public type Address__3 = Text;
  public type Allowance = { remaining : Nat; spender : AccountId__1 };
  public type AllowanceArgs = { account : Account; spender : Account };
  public type Amount = Nat;
  public type ApproveArgs = {
    fee : ?Nat;
    memo : ?Blob;
    from_subaccount : ?Blob;
    created_at_time : ?Nat64;
    amount : Nat;
    expected_allowance : ?Nat;
    expires_at : ?Nat64;
    spender : Account;
  };
  public type ApproveError = {
    #GenericError : { message : Text; error_code : Nat };
    #TemporarilyUnavailable;
    #Duplicate : { duplicate_of : Nat };
    #BadFee : { expected_fee : Nat };
    #AllowanceChanged : { current_allowance : Nat };
    #CreatedInFuture : { ledger_time : Nat64 };
    #TooOld;
    #Expired : { ledger_time : Nat64 };
    #InsufficientFunds : { balance : Nat };
  };
  public type Callback = shared TxnRecord__1 -> async ();
  public type Callback__1 = shared TxnRecord__1 -> async ();
  public type CoinSeconds = { updateTime : Int; coinSeconds : Nat };
  public type Config = { feeTo : ?Address__2 };
  public type Config__1 = { MAX_PUBLICATION_TRIES : ?Nat };
  public type Config__2 = {
    MAX_STORAGE_TRIES : ?Nat;
    EN_DEBUG : ?Bool;
    MAX_CACHE_NUMBER_PER : ?Nat;
    MAX_CACHE_TIME : ?Nat;
  };
  public type DRC207Support = {
    timer : { interval_seconds : ?Nat; enable : Bool };
    monitorable_by_self : Bool;
    monitorable_by_blackhole : { canister_id : ?Principal; allowed : Bool };
    cycles_receivable : Bool;
  };
  public type Data = Blob;
  public type Decider = Text;
  public type ExecuteType = { #fallback; #send : Nat; #sendAll };
  public type From = Text;
  public type Gas = { #token : Nat; #cycles : Nat; #noFee };
  public type Gas__1 = { #token : Nat; #cycles : Nat; #noFee };
  public type Gas__2 = { #token : Nat; #cycles : Nat; #noFee };
  public type InitArgs = {
    fee : Nat;
    decimals : Nat8;
    metadata : ?[Metadata];
    name : ?Text;
    totalSupply : Nat;
    founder : ?Address;
    symbol : ?Text;
  };
  public type Metadata = { content : Text; name : Text };
  public type Metadata__1 = { content : Text; name : Text };
  public type Metadata__2 = {
    fee : Nat;
    decimals : Nat8;
    owner : Principal;
    logo : Text;
    name : Text;
    totalSupply : Nat;
    symbol : Text;
  };
  public type MsgType = { #onApprove; #onExecute; #onTransfer; #onLock };
  public type MsgType__1 = { #onApprove; #onExecute; #onTransfer; #onLock };
  public type Nonce = Nat;
  public type Operation = {
    #approve : { allowance : Nat };
    #lockTransfer : {
      locked : Nat;
      expiration : Time__1;
      decider : AccountId__1;
    };
    #transfer : { action : { #burn; #mint; #send } };
    #executeTransfer : { fallback : Nat; lockedTxid : Txid__1 };
  };
  public type Operation__1 = {
    #approve : { allowance : Nat };
    #lockTransfer : {
      locked : Nat;
      expiration : Time__2;
      decider : AccountId__2;
    };
    #transfer : { action : { #burn; #mint; #send } };
    #executeTransfer : { fallback : Nat; lockedTxid : Txid__3 };
  };
  public type Sa = Blob;
  public type Setting = { MAX_PUBLICATION_TRIES : Nat };
  public type Setting__1 = {
    MAX_STORAGE_TRIES : Nat;
    EN_DEBUG : Bool;
    MAX_CACHE_NUMBER_PER : Nat;
    MAX_CACHE_TIME : Nat;
  };
  public type Spender = Text;
  public type Subaccount = Blob;
  public type Subscription = { callback : Callback; msgTypes : [MsgType] };
  public type Time = Int;
  public type Time__1 = Int;
  public type Time__2 = Int;
  public type Timeout = Nat32;
  public type Timestamp = Nat64;
  public type To = Text;
  public type TokenInfo = {
    holderNumber : Nat;
    deployTime : Time;
    metadata : Metadata__2;
    historySize : Nat;
    cycles : Nat;
    feeTo : Principal;
  };
  public type Transaction = {
    to : AccountId__1;
    value : Nat;
    data : ?Blob;
    from : AccountId__1;
    operation : Operation;
  };
  public type Transaction__1 = {
    to : AccountId__2;
    value : Nat;
    data : ?Blob;
    from : AccountId__2;
    operation : Operation__1;
  };
  public type TransferArgs = {
    to : Account;
    fee : ?Nat;
    memo : ?Blob;
    from_subaccount : ?Subaccount;
    created_at_time : ?Timestamp;
    amount : Nat;
  };
  public type TransferError = {
    #GenericError : { message : Text; error_code : Nat };
    #TemporarilyUnavailable;
    #BadBurn : { min_burn_amount : Nat };
    #Duplicate : { duplicate_of : Nat };
    #BadFee : { expected_fee : Nat };
    #CreatedInFuture : { ledger_time : Nat64 };
    #TooOld;
    #InsufficientFunds : { balance : Nat };
  };
  public type TransferFromArgs = {
    to : Account;
    fee : ?Nat;
    spender_subaccount : ?Blob;
    from : Account;
    memo : ?Blob;
    created_at_time : ?Nat64;
    amount : Nat;
  };
  public type TransferFromError = {
    #GenericError : { message : Text; error_code : Nat };
    #TemporarilyUnavailable;
    #InsufficientAllowance : { allowance : Nat };
    #BadBurn : { min_burn_amount : Nat };
    #Duplicate : { duplicate_of : Nat };
    #BadFee : { expected_fee : Nat };
    #CreatedInFuture : { ledger_time : Nat64 };
    #TooOld;
    #InsufficientFunds : { balance : Nat };
  };
  public type TxReceipt = {
    #Ok : Nat;
    #Err : {
      #InsufficientAllowance;
      #InsufficientBalance;
      #ErrorOperationStyle;
      #Unauthorized;
      #LedgerTrap;
      #ErrorTo;
      #Other : Text;
      #BlockUsed;
      #AmountTooSmall;
    };
  };
  public type Txid = Blob;
  public type Txid__1 = Blob;
  public type Txid__2 = Blob;
  public type Txid__3 = Blob;
  public type TxnQueryRequest = {
    #getEvents : { owner : ?Address };
    #txnCount : { owner : Address };
    #lockedTxns : { owner : Address };
    #lastTxids : { owner : Address };
    #lastTxidsGlobal;
    #getTxn : { txid : Txid__1 };
    #txnCountGlobal;
  };
  public type TxnQueryResponse = {
    #getEvents : [TxnRecord__1];
    #txnCount : Nat;
    #lockedTxns : { txns : [TxnRecord__1]; lockedBalance : Nat };
    #lastTxids : [Txid__1];
    #lastTxidsGlobal : [Txid__1];
    #getTxn : ?TxnRecord__1;
    #txnCountGlobal : Nat;
  };
  public type TxnRecord = {
    gas : Gas;
    msgCaller : ?Principal;
    transaction : Transaction;
    txid : Txid__1;
    nonce : Nat;
    timestamp : Time__1;
    caller : AccountId__1;
    index : Nat;
  };
  public type TxnRecord__1 = {
    gas : Gas;
    msgCaller : ?Principal;
    transaction : Transaction;
    txid : Txid__1;
    nonce : Nat;
    timestamp : Time__1;
    caller : AccountId__1;
    index : Nat;
  };
  public type TxnRecord__2 = {
    gas : Gas__2;
    msgCaller : ?Principal;
    transaction : Transaction__1;
    txid : Txid__3;
    nonce : Nat;
    timestamp : Time__2;
    caller : AccountId__2;
    index : Nat;
  };
  public type TxnResult = {
    #ok : Txid__1;
    #err : {
      code : {
        #NonceError;
        #InsufficientGas;
        #InsufficientAllowance;
        #UndefinedError;
        #InsufficientBalance;
        #NoLockedTransfer;
        #DuplicateExecutedTransfer;
        #LockedTransferExpired;
      };
      message : Text;
    };
  };
  public type Value = { #Int : Int; #Nat : Nat; #Blob : Blob; #Text : Text };
  public type Self = actor {
    allowance : shared query (Principal, Principal) -> async Nat;
    approve : shared (Principal, Nat) -> async TxReceipt;
    balanceOf : shared query Principal -> async Nat;
    decimals : shared query () -> async Nat8;
    drc202_canisterId : shared query () -> async Principal;
    drc202_config : shared Config__2 -> async Bool;
    drc202_events : shared query ?Address__3 -> async [TxnRecord__2];
    drc202_events_filter : shared query (?Address__3, ?Time, ?Time) -> async (
        [TxnRecord__2],
        Bool,
      );
    drc202_getConfig : shared query () -> async Setting__1;
    drc202_pool : shared query () -> async [(Txid__2, Nat)];
    drc202_txn : shared query Txid__2 -> async ?TxnRecord__2;
    drc202_txn2 : shared Txid__2 -> async ?TxnRecord__2;
    drc207 : shared query () -> async DRC207Support;
    drc20_allowance : shared query (Address__1, Spender) -> async Amount;
    drc20_approvals : shared query Address__1 -> async [Allowance];
    drc20_approve : shared (
        Spender,
        Amount,
        ?Nonce,
        ?Sa,
        ?Data,
      ) -> async TxnResult;
    drc20_balanceOf : shared query Address__1 -> async Amount;
    drc20_decimals : shared query () -> async Nat8;
    drc20_dropAccount : shared ?Sa -> async Bool;
    drc20_executeTransfer : shared (
        Txid,
        ExecuteType,
        ?To,
        ?Nonce,
        ?Sa,
        ?Data,
      ) -> async TxnResult;
    drc20_fee : shared query () -> async Amount;
    drc20_gas : shared query () -> async Gas__1;
    drc20_getCoinSeconds : shared query ?Address__1 -> async (
        CoinSeconds,
        ?CoinSeconds,
      );
    drc20_holdersCount : shared query () -> async (Nat, Nat, Nat);
    drc20_lockTransfer : shared (
        To,
        Amount,
        Timeout,
        ?Decider,
        ?Nonce,
        ?Sa,
        ?Data,
      ) -> async TxnResult;
    drc20_lockTransferFrom : shared (
        From,
        To,
        Amount,
        Timeout,
        ?Decider,
        ?Nonce,
        ?Sa,
        ?Data,
      ) -> async TxnResult;
    drc20_metadata : shared query () -> async [Metadata__1];
    drc20_name : shared query () -> async Text;
    drc20_subscribe : shared (Callback__1, [MsgType__1], ?Sa) -> async Bool;
    drc20_subscribed : shared query Address__1 -> async ?Subscription;
    drc20_symbol : shared query () -> async Text;
    drc20_totalSupply : shared query () -> async Amount;
    drc20_transfer : shared (To, Amount, ?Nonce, ?Sa, ?Data) -> async TxnResult;
    drc20_transferBatch : shared ([To], [Amount], ?Nonce, ?Sa, ?Data) -> async [
        TxnResult
      ];
    drc20_transferFrom : shared (
        From,
        To,
        Amount,
        ?Nonce,
        ?Sa,
        ?Data,
      ) -> async TxnResult;
    drc20_txnQuery : shared query TxnQueryRequest -> async TxnQueryResponse;
    drc20_txnRecord : shared Txid -> async ?TxnRecord;
    getMetadata : shared query () -> async Metadata__2;
    getTokenFee : shared query () -> async Nat;
    getTokenInfo : shared query () -> async TokenInfo;
    historySize : shared query () -> async Nat;
    icpubsub_config : shared Config__1 -> async Bool;
    icpubsub_getConfig : shared query () -> async Setting;
    icrc1_balance_of : shared query Account__1 -> async Nat;
    icrc1_decimals : shared query () -> async Nat8;
    icrc1_fee : shared query () -> async Nat;
    icrc1_metadata : shared query () -> async [(Text, Value)];
    icrc1_minting_account : shared query () -> async ?Account__1;
    icrc1_name : shared query () -> async Text;
    icrc1_supported_standards : shared query () -> async [
        { url : Text; name : Text }
      ];
    icrc1_symbol : shared query () -> async Text;
    icrc1_total_supply : shared query () -> async Nat;
    icrc1_transfer : shared TransferArgs -> async {
        #Ok : Nat;
        #Err : TransferError;
      };
    icrc2_allowance : shared query AllowanceArgs -> async {
        allowance : Nat;
        expires_at : ?Nat64;
      };
    icrc2_approve : shared ApproveArgs -> async {
        #Ok : Nat;
        #Err : ApproveError;
      };
    icrc2_transfer_from : shared TransferFromArgs -> async {
        #Ok : Nat;
        #Err : TransferFromError;
      };
    ictokens_clearSnapshot : shared () -> async Bool;
    ictokens_config : shared Config -> async Bool;
    ictokens_getConfig : shared query () -> async Config;
    ictokens_getSnapshot : shared query (Nat, Nat) -> async (
        Time,
        [(AccountId, Nat)],
        Bool,
      );
    ictokens_heldFirstTime : shared query Address__1 -> async ?Time;
    ictokens_maxSupply : shared query () -> async ?Nat;
    ictokens_setFee : shared Amount -> async Bool;
    ictokens_setMetadata : shared [Metadata__1] -> async Bool;
    ictokens_snapshot : shared Amount -> async Bool;
    ictokens_snapshotBalanceOf : shared query (Nat, Address__1) -> async (
        Time,
        ?Nat,
      );
    ictokens_top100 : shared query () -> async [(Address__1, Nat)];
    logo : shared query () -> async Text;
    name : shared query () -> async Text;
    standard : shared query () -> async Text;
    symbol : shared query () -> async Text;
    totalSupply : shared query () -> async Nat;
    transfer : shared (Principal, Nat) -> async TxReceipt;
    transferFrom : shared (Principal, Principal, Nat) -> async TxReceipt;
    wallet_receive : shared () -> async ();
  }
}
