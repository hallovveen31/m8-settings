.class public abstract Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbsActionPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupHostRelationship;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field private mInitialized:Z

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

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsActionPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mInitialized:Z

    .line 96
    return-void
.end method

.method private final initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 197
    return-void
.end method

.method private onClickInBackground()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method private startIntent()V
    .locals 5

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 363
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 364
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The intent of the preference ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    move-result-object v0

    .line 370
    .local v0, actionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    if-nez v0, :cond_1

    .line 371
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 389
    :cond_1
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    if-ne v0, v2, :cond_2

    .line 390
    const-string v2, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomTitleRes()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-static {v2, v1, v0}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomIntent()Landroid/content/Intent;
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setIntent(Landroid/content/Intent;)V

    .line 353
    :cond_0
    return-object v0
.end method

.method protected onApplyDemoMode()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 412
    instance-of v0, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 414
    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 420
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->initializeInBackground()V

    .line 421
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 464
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 484
    :goto_0
    return v1

    .line 468
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 484
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 472
    :sswitch_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 474
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mInitialized:Z

    if-nez v1, :cond_1

    .line 475
    new-instance v1, Lcom/android/settings/framework/app/HtcSuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "did not call through to super.onInitializeInBackground(Context)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/app/HtcSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->onClickInBackground()V

    goto :goto_1

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 426
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 429
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 455
    :goto_0
    return v1

    .line 433
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 455
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 435
    :sswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 439
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 443
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setTitle(I)V

    goto :goto_1

    .line 447
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 451
    :sswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setEnabled(Z)V

    goto :goto_1

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x15 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, text:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 278
    check-cast v2, Ljava/lang/String;

    .end local v2           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setKey(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomTitleRes()I

    move-result v3

    .line 290
    .local v3, textRes:I
    if-lez v3, :cond_5

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setTitleInForeground(I)V

    .line 301
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2       #text:Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v1

    .line 308
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setIntent(Landroid/content/Intent;)V

    .line 312
    :cond_4
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->onApplyDemoMode()V

    .line 318
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mInitialized:Z

    .line 319
    return-void

    .line 294
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2       #text:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->startIntent()V

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public redirectCustomIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "incomingIntent"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 253
    return-void
.end method

.method public setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 101
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public final setTitleInForeground(I)V
    .locals 1
    .parameter "titleRes"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(I)V

    .line 231
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method
