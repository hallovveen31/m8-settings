.class public Lcom/android/settings/ChargeOnlyService;
.super Landroid/app/Service;
.source "ChargeOnlyService.java"


# static fields
.field protected static final BatteryChangePartial_Intent:Ljava/lang/String; = "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

.field protected static final ChargeOnly_Intent:Ljava/lang/String; = "com.htc.settings.action.CHARGE_ONLY"

.field protected static final ConfigurationChanged_Intent:Ljava/lang/String; = "com.htc.intent.action.CONFIGURATION_CHANGED"

.field protected static final ConnectedPower_Intent:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field protected static final DisconnectedPower_Intent:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field protected static final PlatForm_Permission:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final TAG:Ljava/lang/String; = "SmartNS_ChargeOnlyService"


# instance fields
.field protected chargeOnlyMode:Z

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x0

    iput-object p0, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    const-string v1, "SmartNS_ChargeOnlyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.settings.action.CHARGE_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->cancelNotification(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/ChargeOnlyEnabler;->enableAllUSB(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ChargeOnly_Mode"

    invoke-static {v1, v2, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ChargeOnly_Mode"

    invoke-static {v1, v2, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->isCharging(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->addNotification(Landroid/content/Context;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 v1, 0x3

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ChargeOnly_Mode"

    invoke-static {v1, v2, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    const-string v1, "SmartNS_ChargeOnlyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Theme color changed or Localization changed. Charge only mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->isCharging(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ChargeOnlyService;->chargeOnlyMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->addNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->cancelNotification(Landroid/content/Context;)V

    goto :goto_1
.end method
