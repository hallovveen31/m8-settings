.class public abstract Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbsStatusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupParentChildRelationship;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field protected final mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mParent:Lcom/htc/preference/HtcPreferenceGroup;

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->DEBUG:Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 50
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 55
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 60
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 50
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 55
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 60
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 50
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 55
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 60
    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private final initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 157
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setPersistent(Z)V

    .line 256
    return-void
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

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

.method protected abstract getCustomTitle()Ljava/lang/CharSequence;
.end method

.method public final getParent()Lcom/htc/preference/HtcPreferenceGroup;
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    return-object v0
.end method

.method protected abstract isConstantSummary()Z
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

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

    .line 425
    return-void
.end method

.method protected final logE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "message"
    .parameter "e"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

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

    invoke-static {v0, v1, p2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    return-void
.end method

.method public onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 318
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->initializeInBackground()V

    .line 336
    return-void
.end method

.method protected abstract onGetSummaryInBackground()Ljava/lang/String;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v1

    .line 378
    .local v1, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v1, :cond_0

    .line 420
    :goto_0
    return v2

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v3, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 385
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 420
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    goto :goto_1

    .line 398
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->isConstantSummary()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onGetSummaryInBackground()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 405
    :pswitch_3
    iget-object v0, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 407
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_1

    .line 413
    .end local v0           #group:Lcom/htc/preference/HtcPreferenceGroup;
    :pswitch_4
    iget-object v0, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 415
    .restart local v0       #group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 344
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 368
    :goto_0
    return v1

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 351
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 368
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 353
    :sswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 357
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 361
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 365
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSelectable(Z)V

    goto :goto_1

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x15 -> :sswitch_2
        0x21 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 270
    check-cast v1, Ljava/lang/String;

    .end local v1           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setKey(Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 282
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->canSelectable()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSelectableInForeground(Z)V

    .line 293
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 304
    return-void
.end method

.method public onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 323
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->syncStateFromDataSourceInBackground()V

    .line 299
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method public final setParent(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 217
    return-void
.end method

.method public final setSelectableInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x21
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSelectableInForeground(Z)V

    .line 211
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public final setVisibleInBackground(Z)V
    .locals 2
    .parameter "visible"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->getParent()Lcom/htc/preference/HtcPreferenceGroup;

    move-result-object v0

    .line 237
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz p1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->addPreferenceInBackgroundTo(Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->removePreferenceInBackgroundFrom(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0
.end method

.method protected final syncStateFromDataSourceInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 200
    return-void
.end method
