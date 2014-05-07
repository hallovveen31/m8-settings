.class public abstract Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAbsCheckboxPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupHostRelationship;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field protected mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 61
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 61
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 61
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method private final initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 174
    return-void
.end method

.method private onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 330
    check-cast v1, Ljava/lang/String;

    .end local v1           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setKey(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_4

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 359
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    if-eqz v1, :cond_5

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    .line 377
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setPersistent(Z)V

    .line 316
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/CharSequence;
.end method

.method public getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method protected onApplyDemoModeInBackground(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 385
    return-void
.end method

.method protected onChange(Z)Z
    .locals 1
    .parameter "newState"

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method protected final onClick()V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 446
    .local v0, newState:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onChange(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    :goto_1
    return-void

    .line 445
    .end local v0           #newState:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    .restart local v0       #newState:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setChecked(Z)V

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateToDataSourceInBackground(Z)V

    goto :goto_1
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 465
    instance-of v0, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 472
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->initializeInBackground()V

    .line 473
    return-void
.end method

.method protected abstract onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 530
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v3

    .line 533
    .local v3, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v3, :cond_0

    .line 534
    const/4 v4, 0x0

    .line 576
    :goto_0
    return v4

    .line 537
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 576
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 539
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onInitializeInBackground(Landroid/content/Context;)V

    goto :goto_1

    .line 543
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 547
    .local v0, checked:Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setCheckedInForeground(Z)V

    .line 551
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onApplyDemoModeInBackground(Z)V

    goto :goto_1

    .line 555
    :cond_2
    sget-boolean v4, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 556
    const-string v4, "Failed to retrieve a remote data source."

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->log(Ljava/lang/String;)V

    .line 557
    sget-object v4, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_1

    .line 563
    .end local v0           #checked:Ljava/lang/Boolean;
    :pswitch_2
    iget-object v4, v3, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 564
    .local v2, newState:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onSetValueInBackground(Landroid/content/Context;Z)Z

    move-result v1

    .line 569
    .local v1, isSuccessful:Z
    if-nez v1, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onPostSetValueInBackground(Landroid/content/Context;Z)V

    goto :goto_1

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 478
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 481
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 524
    :goto_0
    return v1

    .line 485
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 524
    :goto_1
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 487
    :pswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 491
    :pswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 495
    :pswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 499
    :pswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 504
    :pswitch_5
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 509
    :pswitch_6
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setChecked(Z)V

    goto :goto_1

    .line 514
    :pswitch_7
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 519
    :pswitch_8
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_1

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onPostSetValueInBackground(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 427
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    .line 390
    return-void
.end method

.method protected abstract onSetValueInBackground(Landroid/content/Context;Z)Z
.end method

.method public final performClickInForeground(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "preferenceScreen"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x22
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->performClickInForeground(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 272
    return-void
.end method

.method public final setCheckedInForeground(Z)V
    .locals 1
    .parameter "checked"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x19
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCheckedInForeground(Z)V

    .line 243
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 254
    return-void
.end method

.method public setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 105
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public final setSummaryOffInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOff"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x17
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public final setSummaryOnInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOn"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x16
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public final syncStateFromDataSourceInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 281
    return-void
.end method

.method protected final syncStateToDataSourceInBackground()V
    .locals 2
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method protected final syncStateToDataSourceInBackground(Z)V
    .locals 2
    .parameter "newState"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 303
    return-void
.end method
