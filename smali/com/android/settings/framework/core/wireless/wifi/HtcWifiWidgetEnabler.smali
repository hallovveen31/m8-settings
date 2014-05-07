.class public Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcWifiWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEnableAutoTestLog:Z

.field private mIsWifiDisable:Z

.field private mNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mEnableAutoTestLog:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWifiEnabled(Z)V

    return-void
.end method

.method private checkWifiPolicy()V
    .locals 5

    .prologue
    const v4, 0x7f0c088f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v0

    .line 360
    .local v0, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iput-boolean v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 364
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 391
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iput-boolean v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 374
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    iput-boolean v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 383
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 388
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 389
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setSwitchEnabled(Z)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->updateWifiState()V

    goto :goto_0
.end method

.method private ensureWifiManagerObjects()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcServiceManager;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 156
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V

    .line 158
    :cond_0
    return-void
.end method

.method private getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    .prologue
    .line 456
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a8a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "ssid"
    .parameter "cwState"

    .prologue
    .line 467
    packed-switch p2, :pswitch_data_0

    .line 480
    :pswitch_0
    const v0, 0x7f0c07f8

    .line 482
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 469
    .end local v0           #resId:I
    :pswitch_1
    const v0, 0x7f0c07fd

    .line 470
    .restart local v0       #resId:I
    goto :goto_0

    .line 472
    .end local v0           #resId:I
    :pswitch_2
    const v0, 0x7f0c07fc

    .line 473
    .restart local v0       #resId:I
    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getTurnOffHotspotDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    .prologue
    .line 439
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c07d3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07d4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f8a

    new-instance v2, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;-><init>(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f8b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private handleIPTStateChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 342
    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive USBNET connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    if-eqz v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 347
    .local v0, wifiState:I
    if-eqz p1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 349
    :cond_1
    const v1, 0x7f0c08aa

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(I)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->updateWifiState()V

    .line 352
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 305
    sget-boolean v3, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStateChanged, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 309
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 310
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 311
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, ssid:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    .line 319
    :goto_0
    sget-object v3, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get debug: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, p1, v5}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 323
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v3, :cond_4

    .line 324
    const v3, 0x7f0c08a2

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(I)V

    .line 333
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 317
    .restart local v0       #info:Landroid/net/wifi/WifiInfo;
    .restart local v1       #ssid:Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    goto :goto_0

    .line 326
    .restart local v2       #str:Ljava/lang/String;
    :cond_4
    const v3, 0x7f0c106e

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(I)V

    goto :goto_1

    .line 329
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 486
    const-string v1, "persist.security.wifi.lockout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 490
    if-nez p0, :cond_1

    const-string p0, ""

    .line 497
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 492
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 493
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 495
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private setWifiEnabled(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const v5, 0x7f0c0d31

    const/4 v4, 0x0

    .line 398
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 399
    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->blockWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->createDialog(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 426
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    if-eqz p1, :cond_2

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callingApp"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_internet-wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setSwitchEnabled(Z)V

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(I)V

    .line 423
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 2

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->ensureWifiManagerObjects()V

    .line 337
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 338
    .local v0, wifiState:I
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 339
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "alertDialog"

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 296
    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;
    .locals 2

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 226
    invoke-static {p1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->getBaseState(I)Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V

    .line 228
    return-void
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c106f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 232
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleStateChangedInBackground, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsWifiDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mIsWifiDisable:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    if-eq p1, v1, :cond_2

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$2;->$SwitchMap$com$android$settings$framework$core$wireless$wifi$HtcWifiState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 284
    const v1, 0x7f0c0d31

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 242
    :pswitch_0
    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V

    .line 243
    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->checkWifiPolicy()V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->updateWifiState()V

    goto :goto_0

    .line 253
    :pswitch_3
    const v1, 0x7f0c0512

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 257
    :pswitch_4
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v1, :cond_3

    .line 258
    const v1, 0x7f0c08a2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    .line 264
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v1, :cond_1

    .line 265
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Wi-Fi on)][START] turn Wi-Fi on --- END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_3
    const v1, 0x7f0c106e

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 269
    :pswitch_5
    const v1, 0x7f0c0513

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 272
    :pswitch_6
    const/4 v0, 0x0

    .line 273
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    const/4 v0, 0x1

    .line 276
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 278
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Wi-Fi off)][START] turn Wi-Fi off --- END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;)V

    .line 183
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, action:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 106
    sget-object v5, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    const-string v5, "newState"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 117
    :cond_3
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 120
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 122
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "com.htc.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/CustomUtil;->isCTSsid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const-string v5, "cw_reg_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 125
    .local v4, state:I
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    .end local v4           #state:I
    :cond_5
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 131
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 132
    .local v3, netinfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    sget v6, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->TYPE_USBNET:I

    if-ne v5, v6, :cond_1

    .line 133
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->handleIPTStateChanged(Z)V

    goto/16 :goto_0

    .line 135
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #netinfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->checkWifiPolicy()V

    goto/16 :goto_0

    .line 137
    :cond_7
    const-string v5, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->checkWifiPolicy()V

    goto/16 :goto_0

    .line 139
    :cond_8
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-static {v5, v6}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 141
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setSwitchEnabled(Z)V

    goto/16 :goto_0

    .line 143
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setSwitchEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onResumeInBackground(Landroid/app/Activity;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->ensureWifiManagerObjects()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->checkWifiPolicy()V

    .line 166
    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 187
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onToggleChangeInBackground, newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChangeInBackground(Z)V

    .line 191
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0d32

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v1, :cond_2

    .line 196
    if-eqz p1, :cond_4

    .line 197
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Wi-Fi on)][START] turn Wi-Fi on --- BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 204
    .local v0, wifiApState:I
    if-eqz p1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 206
    :cond_3
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->WIFI_HOTSPOT_INTERACTIVE_NOTIFICATION:Z

    if-eqz v1, :cond_5

    .line 207
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->getTurnOffHotspotDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->createDialog(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    goto :goto_0

    .line 199
    .end local v0           #wifiApState:I
    :cond_4
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Wi-Fi off)][START] turn Wi-Fi off --- BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    .restart local v0       #wifiApState:I
    :cond_5
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 215
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWifiEnabled(Z)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 85
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v0, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "com.htc.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method
