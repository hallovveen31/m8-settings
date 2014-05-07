.class public Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcMobileDataWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;"
    }
.end annotation


# static fields
.field private static final ACTION_HTC_SIMCARD_STATUS_UPDATE:Ljava/lang/String; = "android.intent.action.HTC_SIMCARD_STATUS_UPDATE"

.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

#the value of this static final field might be set in the static constructor
.field private static final CT_ROAMING:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final OriginalSummaryId:I = 0x7f0c106f

.field private static final SPRINT_ROAMING:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlwaysEnableUI:Ljava/lang/Boolean;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private volatile mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

.field private volatile mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mIsMobileDataEnabled:Z

.field mMobileEngineLock:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    .line 85
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->SPRINT_ROAMING:Z

    .line 88
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->CT_ROAMING:Z

    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mIsMobileDataEnabled:Z

    .line 75
    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mAlwaysEnableUI:Ljava/lang/Boolean;

    .line 77
    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    .line 79
    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mMobileEngineLock:Ljava/lang/Object;

    .line 298
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->persistMobileDataSettingEnabled(Z)V

    return-void
.end method

.method private ensureMobileDataObjects()V
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 125
    .local v0, isDDDS:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    if-nez v1, :cond_1

    .line 127
    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "mHtcMobileNetworkEnabler is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$1;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    .line 164
    :cond_1
    :goto_1
    return-void

    .line 124
    .end local v0           #isDDDS:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    .restart local v0       #isDDDS:Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-nez v1, :cond_1

    .line 146
    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "mHtcMobileNetworkEngine is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$2;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    goto :goto_1
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getStringId(I)Ljava/lang/String;
    .locals 5
    .parameter "summaryType"

    .prologue
    .line 378
    const v0, 0x7f0c106f

    .line 379
    .local v0, stringId:I
    const-string v1, ""

    .line 381
    .local v1, summary:Ljava/lang/String;
    rem-int/lit8 v2, p1, 0x64

    packed-switch v2, :pswitch_data_0

    .line 425
    :pswitch_0
    const v0, 0x7f0c106f

    .line 428
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c03aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    :cond_0
    return-object v1

    .line 383
    :pswitch_1
    const v0, 0x7f0c039e

    .line 384
    goto :goto_0

    .line 386
    :pswitch_2
    const v0, 0x7f0c039d

    .line 387
    goto :goto_0

    .line 389
    :pswitch_3
    const v0, 0x7f0c03a1

    .line 390
    goto :goto_0

    .line 392
    :pswitch_4
    const v0, 0x7f0c03a0

    .line 393
    goto :goto_0

    .line 395
    :pswitch_5
    const v0, 0x7f0c03a8

    .line 396
    goto :goto_0

    .line 398
    :pswitch_6
    const v0, 0x7f0c03a2

    .line 399
    goto :goto_0

    .line 401
    :pswitch_7
    const v0, 0x7f0c03a9

    .line 402
    goto :goto_0

    .line 405
    :pswitch_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 406
    const v0, 0x7f0c03a4

    goto :goto_0

    .line 408
    :cond_1
    const v0, 0x7f0c03a3

    .line 410
    goto :goto_0

    .line 412
    :pswitch_9
    const v0, 0x7f0c039f

    .line 413
    goto :goto_0

    .line 415
    :pswitch_a
    const v0, 0x7f0c03a6

    .line 416
    goto :goto_0

    .line 418
    :pswitch_b
    const v0, 0x7f0c03a7

    .line 419
    goto :goto_0

    .line 421
    :pswitch_c
    const v0, 0x7f0c03a5

    .line 422
    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 330
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private isUnderDataRoamingArea()Z
    .locals 5

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, roamArea:Z
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 313
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 325
    :goto_0
    return v2

    .line 317
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 318
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 319
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 323
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #mConnMgr:Landroid/net/ConnectivityManager;
    :cond_1
    sget-object v3, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v4, "mTelephonyManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private persistMobileDataSettingEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 438
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 439
    .local v0, isDDDS:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-virtual {v1, p1}, Lcom/android/settings/HtcMobileNetworkEnabler;->setMobileNetworkEnabled(Z)V

    .line 454
    :cond_1
    :goto_1
    return-void

    .line 438
    .end local v0           #isDDDS:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 441
    .restart local v0       #isDDDS:Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v1, p1}, Landroid/net/HtcMobileNetworkEngine;->setMobileNetworkEnabled(Z)V

    goto :goto_1
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEnablerUI()V
    .locals 7

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, checkedState:Z
    const/4 v1, 0x1

    .line 176
    .local v1, enabledState:Z
    const/4 v3, 0x0

    .line 177
    .local v3, summaryType:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 178
    .local v2, isDDDS:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mMobileEngineLock:Ljava/lang/Object;

    monitor-enter v5

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->ensureMobileDataObjects()V

    .line 180
    if-eqz v2, :cond_3

    .line 181
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    if-eqz v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-virtual {v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->getCheckedState()Z

    move-result v0

    .line 183
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-virtual {v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->getEnableState()Z

    move-result v1

    .line 184
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-virtual {v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->getSummaryType()I

    move-result v3

    .line 197
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetChecked(Z)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setSwitchEnabled(Z)V

    .line 201
    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    .line 202
    sget-object v4, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "summary:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getStringId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 177
    .end local v2           #isDDDS:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    .restart local v2       #isDDDS:Z
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v6, "mHtcMobileNetworkEnabler is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 189
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v4, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v4}, Landroid/net/HtcMobileNetworkEngine;->getCheckedState()Z

    move-result v0

    .line 191
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v4}, Landroid/net/HtcMobileNetworkEngine;->getEnableState()Z

    move-result v1

    .line 192
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v4}, Landroid/net/HtcMobileNetworkEngine;->getSummaryType()I

    move-result v3

    goto :goto_1

    .line 194
    :cond_4
    sget-object v4, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v6, "mHtcMobileNetworkEngine is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

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

    .line 352
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_1

    const-string v0, "profiler.performance"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 353
    :cond_1
    if-eqz p2, :cond_3

    .line 354
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][Settings][Mobile network on][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    :goto_0
    return-void

    .line 356
    :cond_3
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][Settings][Mobile network off][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mMobileEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-virtual {v0}, Lcom/android/settings/HtcMobileNetworkEnabler;->release()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v0}, Landroid/net/HtcMobileNetworkEngine;->release()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    .line 223
    :cond_1
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 209
    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "alertDialog"

    .prologue
    .line 370
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 374
    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
    .locals 2

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    return-object v0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->updateEnablerUI()V

    .line 365
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;)V

    .line 241
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onResumeInBackground(Landroid/app/Activity;)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->updateEnablerUI()V

    .line 171
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2
    .parameter "newState"

    .prologue
    .line 459
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 460
    :cond_0
    if-eqz p1, :cond_2

    .line 461
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][Settings][Mobile network on][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0

    .line 463
    :cond_2
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][Settings][Mobile network off][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 245
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->TAG:Ljava/lang/String;

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

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChangeInBackground(Z)V

    .line 265
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->isUnderDataRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->SPRINT_ROAMING:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->CT_ROAMING:Z

    if-nez v1, :cond_4

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->persistMobileDataSettingEnabled(Z)V

    .line 296
    .end local v0           #customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 284
    .restart local v0       #customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    :cond_2
    if-nez v0, :cond_3

    .line 285
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03b3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 294
    .end local v0           #customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->persistMobileDataSettingEnabled(Z)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "outIntentFilter"

    .prologue
    .line 106
    return-void
.end method
