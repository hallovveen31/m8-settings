.class Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileNetworkEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcMobileNetworkEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcMobileNetworkEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcMobileNetworkEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HtcMobileNetworkEnabler;Lcom/android/settings/HtcMobileNetworkEnabler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;-><init>(Lcom/android/settings/HtcMobileNetworkEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    move v2, v7

    :goto_0
    const-string v9, "HtcMobileNetworkEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received action -  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v2, :cond_9

    const-string v7, "HtcMobileNetworkEnabler"

    const-string v9, "isDDDS "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "phone_type"

    const/4 v9, -0x1

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "HtcMobileNetworkEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.intent.action.ANY_DATA_STATE received. PhoneType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$100(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$200(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/content/Context;

    move-result-object v7

    const-string v10, "connectivity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    #setter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v9, v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$102(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    const-string v7, "HtcMobileNetworkEnabler"

    const-string v9, "mConnectivityManager is null, rebind it"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$100(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "HtcMobileNetworkEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MobileDataPhoneType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$100(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$100(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v7

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    invoke-static {v7, p2}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$300(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v5

    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "networkUnvailable"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v8

    #setter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v7, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$402(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z

    const-string v8, "HtcMobileNetworkEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " broadcast - state = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", unavailable = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", capability = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_6

    const-string v7, "(unspecified)"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", reason = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_7

    const-string v7, "(unspecified)"

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCheckState = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "default"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const-string v7, "HtcMobileNetworkEnabler"

    const-string v8, "DDDS- checkMobileNetworkSummaryPolicy "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    invoke-static {v7, v5, v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$600(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$000(Lcom/android/settings/HtcMobileNetworkEnabler;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v2, v8

    goto/16 :goto_0

    :cond_6
    move-object v7, v1

    goto :goto_1

    :cond_7
    move-object v7, v4

    goto :goto_2

    :cond_8
    const-string v7, "HtcMobileNetworkEnabler"

    const-string v8, "not the current phone type change. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    invoke-static {v7, p2}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$300(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v5

    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "networkUnvailable"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v8

    #setter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v7, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$402(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z

    invoke-static {}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$700()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v8, "HtcMobileNetworkEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " broadcast - state = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", unavailable = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", capability = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_c

    const-string v7, "(unspecified)"

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", reason = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_d

    const-string v7, "(unspecified)"

    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCheckState = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v7, "default"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_b
    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    invoke-static {v7, v5, v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$600(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    move-object v7, v1

    goto :goto_5

    :cond_d
    move-object v7, v4

    goto :goto_6

    :cond_e
    const-string v8, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v8

    if-eq v7, v8, :cond_f

    const-string v7, "HtcMobileNetworkEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mCheckState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; MobileDataEnabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v8

    #setter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v7, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$402(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z
    invoke-static {v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->onCheckStateChange(Z)V

    :cond_f
    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$800(Lcom/android/settings/HtcMobileNetworkEnabler;)I

    goto/16 :goto_3

    :cond_10
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$800(Lcom/android/settings/HtcMobileNetworkEnabler;)I

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v7, "HtcMobileNetworkEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasReceivedHtcSIMIntent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$900(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get sim state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcMobileNetworkEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasReceivedHtcSIMIntent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z
    invoke-static {v9}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$900(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get sim state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #getter for: Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z
    invoke-static {v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$900(Lcom/android/settings/HtcMobileNetworkEnabler;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "HtcMobileNetworkEnabler"

    const-string v9, "receive com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #setter for: Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z
    invoke-static {v8, v7}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$902(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z

    goto/16 :goto_3
.end method
