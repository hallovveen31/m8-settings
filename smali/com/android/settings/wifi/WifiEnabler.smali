.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiEnabler"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWifiDisable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Z

.field private mSsid:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStateMachineEvent:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mSwitchHeader:Landroid/view/View;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 76
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    .line 141
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    .line 142
    check-cast p2, Lcom/htc/widget/HtcToggleButtonLight;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 148
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    return-void

    .line 144
    .restart local p2
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiEnabler;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleIPTStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButtonLight;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    return-object v0
.end method

.method private checkWifiPolicy()V
    .locals 7

    .prologue
    const v6, 0x7f0c088f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 339
    .local v0, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1

    .line 340
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 342
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "DeviceManager3LM"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DeviceManager3LM;

    .line 349
    .local v1, dm:Lcom/htc/service/DeviceManager3LM;
    invoke-virtual {v1}, Lcom/htc/service/DeviceManager3LM;->getWifiState()I

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 351
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 352
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 358
    .end local v1           #dm:Lcom/htc/service/DeviceManager3LM;
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 359
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 360
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->updateWifiState()V

    goto :goto_0
.end method

.method public static getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "ssid"
    .parameter "cwState"

    .prologue
    .line 393
    packed-switch p2, :pswitch_data_0

    .line 406
    :pswitch_0
    const v1, 0x7f0c07f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, resText:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 395
    .end local v0           #resText:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0c07fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .restart local v0       #resText:Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v0           #resText:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0c07fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0       #resText:Ljava/lang/String;
    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleIPTStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 326
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive USBNET connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c08aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->updateWifiState()V

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 305
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 307
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0c106e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 316
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v0       #info:Landroid/net/wifi/WifiInfo;
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 282
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c0d31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c0512

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c106e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c0513

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c106f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 295
    :cond_0
    return-void
.end method

.method private setWifiEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const v2, 0x7f0c0d31

    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    if-eqz p1, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callingApp"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_internet-wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 386
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 321
    .local v0, wifiState:I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 323
    .end local v0           #wifiState:I
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 181
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 210
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0d32

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    invoke-virtual {p1, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 219
    .local v0, wifiApState:I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 221
    :cond_2
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->WIFI_HOTSPOT_INTERACTIVE_NOTIFICATION:Z

    if-eqz v1, :cond_3

    .line 222
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c07d3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c07d4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0f8a

    new-instance v3, Lcom/android/settings/wifi/WifiEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiEnabler$3;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0f8b

    new-instance v3, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 251
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 175
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V

    .line 167
    return-void
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 7
    .parameter "switchHeader"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 184
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    .line 186
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x7f09000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcToggleButtonLight;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x1020010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 194
    .local v2, wifiState:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v4

    .line 195
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v4, :cond_4

    move v0, v4

    .line 196
    .local v0, isDisabled:Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v5

    .line 194
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v5

    .line 195
    goto :goto_2
.end method
