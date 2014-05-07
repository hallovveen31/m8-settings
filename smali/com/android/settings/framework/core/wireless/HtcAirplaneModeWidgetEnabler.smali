.class public Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcAirplaneModeWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$2;,
        Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;,
        Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;",
        ">;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final INTENT_IMS_SHUTDOWN_RADIO:Ljava/lang/String; = "com.htc.ipservice.IMS_SHUTDOWN_RADIO"

.field private static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SLOT_1_CHECKED_KEY:Ljava/lang/String; = "slot1_is_checked"

.field private static final SLOT_2_CHECKED_KEY:Ljava/lang/String; = "slot2_is_checked"

.field private static final TAG:Ljava/lang/String;

.field private static transient sFromServiceState:Ljava/lang/Integer;

.field private static transient sServiceStateMain:Ljava/lang/Integer;

.field private static transient sServiceStateSub:Ljava/lang/Integer;


# instance fields
.field private bIsWidgetChecked:Z

.field private mAirplaneModeListener:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

.field private mAirplaneModeObserver:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

.field private mMainPhoneType:I

.field private mSubPhoneType:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private powerOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->TAG:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sFromServiceState:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I

    return p1
.end method

.method static synthetic access$502(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    return-object p0
.end method

.method private ensureTelephonyObjects()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeListener:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;-><init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeListener:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeObserver:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;-><init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeObserver:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

    .line 222
    :cond_2
    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, value:I
    if-ne v0, v1, :cond_0

    .line 197
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 620
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 596
    const-string v0, "onAirplaneModeChanged"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;-><init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    :cond_0
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v2, 0x0

    .line 552
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set AirplaneMode to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 557
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    .line 560
    if-eqz p1, :cond_2

    const v1, 0x7f0c0512

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetSummary(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 574
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 575
    if-eqz p1, :cond_4

    const-string v0, "enable"

    .line 576
    .local v0, ATS:Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATS][com.android.settings.AirplaneModeEnabler]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][complete]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 580
    .end local v0           #ATS:Ljava/lang/String;
    :cond_1
    return-void

    .line 560
    :cond_2
    const v1, 0x7f0c0513

    goto :goto_0

    :cond_3
    move v1, v2

    .line 564
    goto :goto_1

    .line 575
    :cond_4
    const-string v0, "disable"

    goto :goto_2
.end method

.method private syncState()V
    .locals 18

    .prologue
    .line 390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    .line 391
    .local v6, flightMode:Z
    sget-object v7, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sFromServiceState:Ljava/lang/Integer;

    .line 392
    .local v7, fromServiceState:Ljava/lang/Integer;
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 393
    .local v8, nextState:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "syncState! flightMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeDualAccess()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 397
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    if-nez v15, :cond_1

    .line 398
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->updateServiceStates()V

    .line 400
    :cond_1
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    if-eqz v15, :cond_2

    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    if-nez v15, :cond_5

    .line 402
    :cond_2
    sget-boolean v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v15, :cond_3

    .line 403
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dualMode flightMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / serviceState: null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 407
    :cond_3
    if-eqz v6, :cond_4

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 408
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 545
    :goto_1
    return-void

    .line 407
    :cond_4
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_0

    .line 410
    :cond_5
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    if-nez v15, :cond_9

    const/4 v11, 0x1

    .line 411
    .local v11, serviceStateMain:I
    :goto_2
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    if-nez v15, :cond_a

    const/4 v12, 0x1

    .line 412
    .local v12, serviceStateSub:I
    :goto_3
    sget-boolean v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 413
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "flightMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / serviceStateMain: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->getServiceStateName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / serviceStateSub: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v12}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->getServiceStateName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " powerOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 417
    :cond_6
    if-eqz v6, :cond_7

    const/4 v15, 0x3

    if-ne v11, v15, :cond_7

    const/4 v15, 0x3

    if-eq v12, v15, :cond_8

    :cond_7
    if-nez v6, :cond_c

    const/4 v15, 0x3

    if-eq v11, v15, :cond_c

    const/4 v15, 0x3

    if-eq v12, v15, :cond_c

    .line 420
    :cond_8
    if-eqz v6, :cond_b

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 421
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 422
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_1

    .line 410
    .end local v11           #serviceStateMain:I
    .end local v12           #serviceStateSub:I
    :cond_9
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    .line 411
    .restart local v11       #serviceStateMain:I
    :cond_a
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_3

    .line 420
    .restart local v12       #serviceStateSub:I
    :cond_b
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_4

    .line 424
    :cond_c
    if-eqz v6, :cond_e

    const/4 v15, 0x3

    if-ne v11, v15, :cond_d

    const/4 v15, 0x3

    if-eq v12, v15, :cond_e

    .line 425
    :cond_d
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 426
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    .line 427
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto/16 :goto_1

    .line 429
    :cond_e
    if-nez v6, :cond_f

    const/4 v15, 0x3

    if-eq v11, v15, :cond_f

    const/4 v15, 0x3

    if-eq v12, v15, :cond_f

    .line 431
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 433
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto/16 :goto_1

    .line 436
    :cond_f
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v9

    .line 437
    .local v9, sTelephonyManager:Lcom/htc/service/HtcTelephonyManager;
    const/4 v1, 0x0

    .line 438
    .local v1, IccStateMainReady:Z
    const/4 v4, 0x0

    .line 439
    .local v4, IccStateSubReady:Z
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v5

    .line 440
    .local v5, IccStateUIM:I
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v2

    .line 441
    .local v2, IccStateSIM:I
    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v3

    .line 442
    .local v3, IccStateSub:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IccStateUIM:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", IccStateSIM:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", IccStateSub:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 444
    const/4 v15, 0x5

    if-ne v15, v5, :cond_13

    const/4 v1, 0x1

    .line 445
    :goto_5
    const/4 v15, 0x5

    if-ne v15, v2, :cond_14

    const/4 v4, 0x1

    .line 450
    :cond_10
    :goto_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IccStateMainReady:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", IccStateSubReady:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "slot1_is_checked"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    .line 454
    .local v13, slot1Enable:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "slot2_is_checked"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v14

    .line 455
    .local v14, slot2Enable:Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "slot1state:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", slot2state:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 456
    if-nez v6, :cond_21

    const/4 v15, 0x3

    if-eq v11, v15, :cond_11

    const/4 v15, 0x3

    if-ne v12, v15, :cond_21

    .line 458
    :cond_11
    if-eqz v13, :cond_12

    if-nez v14, :cond_19

    .line 459
    :cond_12
    if-eqz v6, :cond_18

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 460
    :goto_7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    .line 483
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto/16 :goto_1

    .line 444
    .end local v13           #slot1Enable:Z
    .end local v14           #slot2Enable:Z
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 445
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 446
    :cond_15
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 447
    const/4 v15, 0x5

    if-ne v15, v2, :cond_16

    const/4 v1, 0x1

    .line 448
    :goto_9
    const/4 v15, 0x5

    if-ne v15, v3, :cond_17

    const/4 v4, 0x1

    :goto_a
    goto/16 :goto_6

    .line 447
    :cond_16
    const/4 v1, 0x0

    goto :goto_9

    .line 448
    :cond_17
    const/4 v4, 0x0

    goto :goto_a

    .line 459
    .restart local v13       #slot1Enable:Z
    .restart local v14       #slot2Enable:Z
    :cond_18
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_7

    .line 462
    :cond_19
    if-eqz v1, :cond_1a

    if-nez v4, :cond_1e

    .line 464
    :cond_1a
    if-nez v4, :cond_1b

    const/4 v15, 0x3

    if-ne v11, v15, :cond_1c

    :cond_1b
    if-nez v1, :cond_1d

    const/4 v15, 0x3

    if-eq v12, v15, :cond_1d

    .line 466
    :cond_1c
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 467
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_8

    .line 469
    :cond_1d
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 470
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_8

    .line 475
    :cond_1e
    const/4 v15, 0x3

    if-eq v11, v15, :cond_1f

    const/4 v15, 0x3

    if-ne v12, v15, :cond_20

    .line 476
    :cond_1f
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 477
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_8

    .line 479
    :cond_20
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 480
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_8

    .line 489
    :cond_21
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    .line 490
    const/4 v15, 0x3

    if-eq v11, v15, :cond_22

    const/4 v15, 0x3

    if-eq v12, v15, :cond_22

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 492
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto/16 :goto_1

    .line 490
    :cond_22
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_b

    .line 497
    .end local v1           #IccStateMainReady:Z
    .end local v2           #IccStateSIM:I
    .end local v3           #IccStateSub:I
    .end local v4           #IccStateSubReady:Z
    .end local v5           #IccStateUIM:I
    .end local v9           #sTelephonyManager:Lcom/htc/service/HtcTelephonyManager;
    .end local v11           #serviceStateMain:I
    .end local v12           #serviceStateSub:I
    .end local v13           #slot1Enable:Z
    .end local v14           #slot2Enable:Z
    :cond_23
    if-nez v7, :cond_26

    .line 498
    sget-boolean v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v15, :cond_24

    .line 499
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "flightMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / serviceState: null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 505
    :cond_24
    if-eqz v6, :cond_25

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 506
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto/16 :goto_1

    .line 505
    :cond_25
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_c

    .line 509
    :cond_26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 511
    .local v10, serviceState:I
    sget-boolean v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v15, :cond_27

    .line 512
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "flightMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / serviceState: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->getServiceStateName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " powerOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 521
    :cond_27
    if-eqz v6, :cond_28

    const/4 v15, 0x3

    if-eq v10, v15, :cond_29

    :cond_28
    if-nez v6, :cond_2b

    const/4 v15, 0x3

    if-eq v10, v15, :cond_2b

    .line 525
    :cond_29
    const/4 v15, 0x3

    if-ne v10, v15, :cond_2a

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 527
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 528
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto/16 :goto_1

    .line 525
    :cond_2a
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_d

    .line 531
    :cond_2b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v15

    if-eqz v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    if-nez v15, :cond_2c

    if-nez v6, :cond_2c

    const/4 v15, 0x3

    if-ne v10, v15, :cond_2c

    .line 532
    sget-object v15, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 533
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto/16 :goto_1

    .line 538
    :cond_2c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    .line 539
    const/4 v15, 0x3

    if-ne v10, v15, :cond_2d

    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .line 541
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto/16 :goto_1

    .line 539
    :cond_2d
    sget-object v8, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    goto :goto_e
.end method

.method private updateServiceStates()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    .line 647
    .local v0, telephonyMgr:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v0, :cond_0

    .line 648
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateMain:Ljava/lang/Integer;

    .line 649
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->sServiceStateSub:Ljava/lang/Integer;

    .line 651
    :cond_0
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 626
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 627
    if-eqz p4, :cond_0

    const-string v2, "exit_ecm_result"

    invoke-virtual {p4, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 629
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->bIsWidgetChecked:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setAirplaneModeInECM(ZZ)V

    .line 631
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    return-object v0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 346
    const/4 v2, 0x0

    .local v2, isTurningOn:Z
    const/4 v1, 0x0

    .line 347
    .local v1, isOn:Z
    const v3, 0x7f0c106f

    .line 348
    .local v3, summaryResId:I
    const/4 v0, 0x0

    .line 350
    .local v0, checked:Ljava/lang/Boolean;
    sget-object v4, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$2;->$SwitchMap$com$android$settings$framework$core$wireless$HtcAirplaneModeState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 353
    :pswitch_0
    sget-object v4, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 354
    sget-object v4, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->syncState()V

    goto :goto_0

    .line 363
    :pswitch_2
    const/4 v2, 0x1

    .line 365
    :pswitch_3
    if-eqz v2, :cond_0

    const v3, 0x7f0c0512

    .line 367
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetSummary(I)V

    goto :goto_0

    .line 365
    :cond_0
    const v3, 0x7f0c0513

    goto :goto_1

    .line 372
    :pswitch_4
    const/4 v1, 0x1

    .line 374
    :pswitch_5
    if-eqz v1, :cond_1

    .line 375
    const v3, 0x7f0c106e

    .line 376
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 381
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 384
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabled(Z)V

    goto :goto_0

    .line 378
    :cond_1
    const v3, 0x7f0c106f

    .line 379
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeListener:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeObserver:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 1

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "onRebindViewInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 299
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 300
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.htc.ipservice.IMS_SHUTDOWN_RADIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    const-string v1, "powerOn"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    .line 271
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerOn radio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->powerOn:Z

    if-nez v1, :cond_2

    .line 276
    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    .line 279
    :cond_2
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->ensureTelephonyObjects()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeListener:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mAirplaneModeObserver:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2
    .parameter "newState"

    .prologue
    .line 304
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToggleChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 309
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->bIsWidgetChecked:Z

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setWidgetEnabledImmediately(Z)V

    .line 317
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToggleChangeInBackground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 323
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 634
    const-string v0, "setAirplaneModeInECM"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V

    .line 635
    if-eqz p1, :cond_0

    .line 637
    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->setAirplaneModeOn(Z)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 247
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "com.htc.ipservice.IMS_SHUTDOWN_RADIO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method
