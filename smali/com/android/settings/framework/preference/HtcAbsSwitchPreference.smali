.class public abstract Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;
.super Lcom/htc/preference/HtcSwitchPreference;
.source "HtcAbsSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mSubTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method private final initializeInBackground()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 156
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 284
    check-cast v1, Ljava/lang/String;

    .end local v1           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 296
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 313
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_5

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 318
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->syncStateFromDataSourceInBackground()V

    .line 319
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setPersistent(Z)V

    .line 270
    return-void
.end method

.method private final syncStateFromDataSourceInBackground()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 237
    return-void
.end method

.method private final syncStateToDataSourceInBackground()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method private final syncStateToDataSourceInBackground(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 257
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/CharSequence;
.end method

.method protected final getSubTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mSubTag:Ljava/lang/String;

    .line 490
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mSubTag:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mSubTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getSubTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method protected onChange(Z)Z
    .locals 1
    .parameter "newState"

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method protected final onClick()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 364
    .local v0, newState:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onChange(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    :goto_1
    return-void

    .line 363
    .end local v0           #newState:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    .restart local v0       #newState:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setChecked(Z)V

    .line 370
    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->syncStateToDataSourceInBackground(Z)V

    goto :goto_1
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->initializeInBackground()V

    .line 384
    return-void
.end method

.method protected abstract onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 434
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v3

    .line 437
    .local v3, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v3, :cond_0

    .line 438
    const/4 v4, 0x0

    .line 473
    :goto_0
    return v4

    .line 441
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 473
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 443
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onInitializeInBackground(Landroid/content/Context;)V

    goto :goto_1

    .line 447
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 451
    .local v0, checked:Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setCheckedInForeground(Z)V

    goto :goto_1

    .line 454
    :cond_2
    sget-boolean v4, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 455
    const-string v4, "Failed to retrieve a remote data source."

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->log(Ljava/lang/String;)V

    .line 456
    sget-object v4, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .end local v0           #checked:Ljava/lang/Boolean;
    :pswitch_2
    iget-object v4, v3, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 463
    .local v2, newState:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->onSetValueInBackground(Landroid/content/Context;Z)Z

    move-result v1

    .line 468
    .local v1, isSuccessful:Z
    if-nez v1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->syncStateFromDataSourceInBackground()V

    goto :goto_1

    .line 441
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
    .line 389
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 392
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    .line 396
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 428
    :goto_1
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 402
    :pswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 406
    :pswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 410
    :pswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 415
    :pswitch_5
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 420
    :pswitch_6
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 425
    :pswitch_7
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 396
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
    .end packed-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->syncStateFromDataSourceInBackground()V

    .line 324
    return-void
.end method

.method protected abstract onSetValueInBackground(Landroid/content/Context;Z)Z
.end method

.method public final setCheckedInForeground(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCheckedInForeground(Z)V

    .line 219
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 229
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public final setSummaryOffInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOff"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public final setSummaryOnInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOn"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method
