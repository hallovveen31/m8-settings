.class public final Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcInactivityTimeListPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DEFAULT_INACTIVITY_TIME_VALUE:I = 0x12c

.field public static final KEY:Ljava/lang/String; = "INACTIVITY_TIME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DISPATCH_VALUE_ACTION:Ljava/lang/String;

.field private KEY_SELECTED_VALUE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mInitialized:Z

.field private mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

.field private mRegistered:Z

.field private mTimeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 510
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 511
    const-string v0, "com.android.settings.framework.preference.action.DISPATCH_VALUE_ACTION"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    .line 513
    const-string v0, "selected_value"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    .line 538
    new-instance v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;-><init>(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->preIntialize()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 510
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 511
    const-string v0, "com.android.settings.framework.preference.action.DISPATCH_VALUE_ACTION"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    .line 513
    const-string v0, "selected_value"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    .line 538
    new-instance v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;-><init>(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->preIntialize()V

    .line 88
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 501
    sget-object v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private preIntialize()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "INACTIVITY_TIME"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setKey(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->registerReceiver()V

    .line 122
    return-void
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 520
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterReceiver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v5, 0x40b0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    const-string v0, "com.htc.permission.APP_PLATFORM"

    :goto_1
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 532
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnRegisterReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyDemoMode()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->unregisterReceiver()V

    .line 92
    return-void
.end method

.method protected getEntryText(I)Ljava/lang/String;
    .locals 7
    .parameter "milliseconds"

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 470
    div-int/lit16 v1, p1, 0x3e8

    .line 472
    .local v1, seconds:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01c0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .end local v1           #seconds:I
    .end local v2           #time:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 462
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSummaryText(I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "milliseconds"

    .prologue
    .line 485
    div-int/lit16 v0, p1, 0x3e8

    .line 489
    .local v0, seconds:I
    if-gtz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01be

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, summary:Ljava/lang/String;
    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    const v0, 0x7f0c01bd

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setTitle(I)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setDialogTitle(I)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setPersistent(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step1_loadTimeValueList()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step2_applyExchangePolicy()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step3_bindData()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step4_bindDefaultOption()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->applyDemoMode()V

    .line 141
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->initialize()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->unregisterReceiver()V

    .line 563
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, -0x1

    .line 376
    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 379
    .local v4, which:I
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 382
    .local v2, selectedValue:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setValue(Ljava/lang/String;)V

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, summary:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v0

    .line 392
    .local v0, indexOfPolicyItem:I
    if-ne v4, v0, :cond_0

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .end local v0           #indexOfPolicyItem:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 400
    const-string v5, "onClick(...)"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t which: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t getIndexOfPolicyItem(): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t isInsertionMode(): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t selectedValue: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t setValue: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t setSummary: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "inactivity_time"

    if-ne v2, v6, :cond_5

    move v5, v6

    :goto_0
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_lock_after_timeout"

    if-ne v2, v6, :cond_6

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 431
    :cond_2
    const-string v7, "inactivity_time"

    if-ne v2, v6, :cond_7

    move v5, v6

    :goto_2
    invoke-static {p0, v7, v5}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 435
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_3

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t keep the latest value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v6, :cond_8

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 442
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, resultIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_4

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch selectedValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 449
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 413
    .end local v1           #resultIntent:Landroid/content/Intent;
    :cond_5
    div-int/lit16 v5, v2, 0x3e8

    goto :goto_0

    :cond_6
    move v5, v2

    .line 418
    goto :goto_1

    .line 431
    :cond_7
    div-int/lit16 v5, v2, 0x3e8

    goto :goto_2

    .line 436
    :cond_8
    div-int/lit16 v6, v2, 0x3e8

    goto :goto_3
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->registerReceiver()V

    .line 568
    return-void
.end method

.method protected step1_loadTimeValueList()V
    .locals 3

    .prologue
    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->getEntries(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 166
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "step1_loadTimeValueList()"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t this.mTimeValueList["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected step2_applyExchangePolicy()V
    .locals 6

    .prologue
    .line 179
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "step2_applyExchangePolicy()"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 184
    :cond_0
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-direct {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    .line 186
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    .line 193
    .local v1, indexOfPolicyItem:I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v2, newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 197
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iput-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 201
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 202
    const-string v3, "\t hasPolicy: true"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t new this.mTimeValueList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0           #i:I
    .end local v1           #indexOfPolicyItem:I
    .end local v2           #newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method protected step3_bindData()V
    .locals 7

    .prologue
    .line 215
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 216
    const-string v5, "step3_bindData()"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 222
    .local v3, size:I
    new-array v0, v3, [Ljava/lang/String;

    .line 223
    .local v0, entries:[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 227
    .local v4, values:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 228
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 229
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 239
    .local v2, indexOfPolicyItem:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 242
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_2

    .line 243
    const-string v5, "\t hasPolicy: true"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t indexOfPolicyItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t entries["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 251
    .end local v2           #indexOfPolicyItem:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 255
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_3

    .line 256
    const-string v5, "\t entries / values:"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_3
    return-void
.end method

.method protected step4_bindDefaultOption()V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    const/4 v3, -0x1

    .line 267
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 268
    const-string v4, "step4_bindDefaultOption()"

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "inactivity_time"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, defaultValue:I
    if-ne v0, v3, :cond_5

    move v0, v3

    .line 283
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 285
    .local v1, findIndex:I
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_1

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t defaultValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t findIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 298
    :cond_1
    if-ne v1, v3, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "inactivity_time"

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 307
    if-ne v0, v3, :cond_6

    move v0, v3

    .line 310
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "inactivity_time"

    if-ne v0, v3, :cond_7

    move v4, v3

    :goto_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    if-ne v0, v3, :cond_8

    move v4, v3

    :goto_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_2

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t new defaultValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v0, v3, :cond_9

    move v4, v3

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 325
    const-string v4, "\t and also sync it to the database"

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v4}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    iget-object v4, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v4}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 336
    .local v2, indexOfPolicyItem:I
    if-ne v0, v3, :cond_a

    .line 341
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 353
    :goto_5
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_3

    .line 354
    const-string v3, "\t hasPolicy: true"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t indexOfPolicyItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t new defaultValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 361
    .end local v2           #indexOfPolicyItem:I
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setValue(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_4

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t setValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t setSummary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V

    .line 368
    :cond_4
    return-void

    .line 279
    .end local v1           #findIndex:I
    :cond_5
    mul-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_0

    .line 307
    .restart local v1       #findIndex:I
    :cond_6
    mul-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_1

    .line 310
    :cond_7
    div-int/lit16 v4, v0, 0x3e8

    goto/16 :goto_2

    :cond_8
    move v4, v0

    .line 316
    goto/16 :goto_3

    .line 322
    :cond_9
    div-int/lit16 v4, v0, 0x3e8

    goto/16 :goto_4

    .line 346
    .restart local v2       #indexOfPolicyItem:I
    :cond_a
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_5
.end method
