.class final Lcom/android/settings/SmartNSUtility$1;
.super Ljava/lang/Object;
.source "SmartNSUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/SmartNSUtility$1;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    const-string v7, "WirelessSettings"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$on:Z

    if-eqz v6, :cond_9

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/SmartNSUtility;->closeIPT(Landroid/content/Context;)V
    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->access$000(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v6, :cond_1

    :try_start_1
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    const/16 v6, -0x22

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v4

    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MHS check status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "requestMHS"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v6, -0x12

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v4

    :cond_0
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MHS request status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "requestMHS"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v6, "SmartNS_Utility"

    const-string v7, "MHS subscribe"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/SmartNSUtility;->setPCType(Landroid/content/Context;)V
    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->access$100(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    :cond_2
    const-string v6, "retry_tethering"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    sput-boolean v10, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "isNSOpening"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/settings/SmartNSUtility;->enableWifi(ZLandroid/content/Context;)Z

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "default_wifi"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->setReceiverEnabled(Landroid/content/Context;)V

    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$on:Z

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->setAlarmIntent(Landroid/content/Context;)V

    :cond_6
    const-string v6, "SmartNS_Utility"

    const-string v7, "USB tethering connect success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    const-string v6, "SmartNS_Utility"

    const-string v7, "MHS not subscribe"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "WarningUI"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v6, "SmartNS_Utility"

    const-string v7, "Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_8
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB tethering connect fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_9
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v6, :cond_a

    :try_start_3
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    const/16 v6, -0x42

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_a
    :goto_3
    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "hasTethered"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean v9, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "isNSOpening"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$on:Z

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "SmartNS_Utility"

    const-string v7, "disconnect success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SmartNSUtility;->setReceiverDisabled(Landroid/content/Context;)V

    const-string v6, "default_wifi"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/SmartNSUtility$1;->val$mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/android/settings/SmartNSUtility;->enableWifi(ZLandroid/content/Context;)Z

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "default_wifi"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "WarningUI"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v6, "SmartNS_Utility"

    const-string v7, "Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_c
    const-string v6, "SmartNS_Utility"

    const-string v7, "USB tethering disconnect fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
