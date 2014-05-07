.class Lcom/android/settings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 80
    const/4 v5, 0x0

    .line 82
    .local v5, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 83
    new-instance v5, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v5           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 84
    .restart local v5       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->access$000(Lcom/android/settings/wifi/WifiEnabler;I)V

    .line 130
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 135
    :cond_2
    return-void

    .line 93
    :cond_3
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/SupplicantState;

    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v7, v6}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 98
    :cond_4
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 101
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 103
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v6, "com.htc.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/wifi/CustomUtil;->isCTSsid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    const-string v6, "cw_reg_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 106
    .local v4, state:I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$500(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$500(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/settings/wifi/WifiEnabler;->getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    .end local v4           #state:I
    :cond_6
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 114
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 115
    .local v3, netinfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    sget v7, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->TYPE_USBNET:I

    if-ne v6, v7, :cond_1

    .line 116
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleIPTStateChanged(Z)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto/16 :goto_0

    .line 118
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #netinfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v6, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 119
    const-string v6, "WifiEnabler"

    const-string v7, "onReceive INTENT_ALLOW_WIFI_CHANGE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #calls: Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$800(Lcom/android/settings/wifi/WifiEnabler;)V

    goto/16 :goto_0

    .line 121
    :cond_8
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-static {v6, v7}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 123
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButtonLight;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto/16 :goto_0

    .line 125
    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButtonLight;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto/16 :goto_0
.end method
