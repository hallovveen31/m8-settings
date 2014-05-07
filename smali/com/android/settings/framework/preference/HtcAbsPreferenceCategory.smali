.class public abstract Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcAbsPreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/app/HtcIInternalHost$OnAddCallbackListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupParentChildRelationship;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sField_mPreferenceList:Ljava/lang/reflect/Field;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mInitialized:Z

.field private final mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mParent:Lcom/htc/preference/HtcPreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 108
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mInitialized:Z

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 108
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mInitialized:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 108
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mInitialized:Z

    .line 150
    return-void
.end method

.method private static containPreference(Lcom/htc/preference/HtcPreferenceGroup;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "group"
    .parameter "preference"

    .prologue
    .line 86
    invoke-static {}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getField_mPreferenceList()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v2, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :goto_0
    return v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke containPreference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getField_mPreferenceList()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->sField_mPreferenceList:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->sField_mPreferenceList:Ljava/lang/reflect/Field;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/htc/preference/HtcPreferenceGroup;

    const-string v1, "mPreferenceList"

    invoke-static {v0, v1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->sField_mPreferenceList:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method private final initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 205
    return-void
.end method

.method private final onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 328
    check-cast v0, Ljava/lang/String;

    .end local v0           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getCustomTitleRes()I

    move-result v1

    .line 334
    .local v1, textRes:I
    if-lez v1, :cond_2

    .line 343
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 344
    .restart local v0       #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 353
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mInitialized:Z

    .line 354
    return-void

    .line 347
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 348
    .restart local v0       #text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setTitleInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected containPreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 304
    invoke-static {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->containPreference(Lcom/htc/preference/HtcPreferenceGroup;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getCustomTitleRes()I

    move-result v0

    .line 173
    .local v0, titleResId:I
    if-lez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public final getParent()Lcom/htc/preference/HtcPreferenceGroup;
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    return-object v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method protected final logE(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method protected final logW(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public onAddCallback(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 358
    return-void
.end method

.method public onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 362
    return-void
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->initializeInBackground()V

    .line 380
    return-void
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 4
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 464
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 466
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->onInitializeInBackground(Landroid/content/Context;)V

    .line 468
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mInitialized:Z

    if-nez v1, :cond_0

    .line 469
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

    .line 475
    :sswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 477
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0

    .line 483
    .end local v0           #group:Lcom/htc/preference/HtcPreferenceGroup;
    :sswitch_2
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 485
    .restart local v0       #group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_0

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 437
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 445
    :goto_0
    return v1

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 443
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v3, "onHandleNonUiMessage(Message, HtcMessageParcel)"

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->checkCallSuperAlarmState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 2
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 417
    :sswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :sswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 425
    :sswitch_2
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 385
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 388
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 396
    :goto_0
    return v1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCallSuperAlarm(Z)V

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 394
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v3, "onHandleUiMessage(Message, HtcMessageParcel)"

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->checkCallSuperAlarmState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 367
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 240
    return-void
.end method

.method public final setParent(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "parent"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    .line 246
    return-void
.end method

.method public final setTitleInForeground(I)V
    .locals 1
    .parameter "titleRes"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(I)V

    .line 230
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public final setVisibleInBackground(Z)V
    .locals 4
    .parameter "visible"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x1f
    .end annotation

    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->getParent()Lcom/htc/preference/HtcPreferenceGroup;

    move-result-object v1

    .line 270
    .local v1, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-static {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->containPreference(Lcom/htc/preference/HtcPreferenceGroup;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 272
    .local v0, exist:Z
    sget-boolean v2, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibleInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, p1, :cond_1

    const-string v2, " (ingore the setting)"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - callers: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/settings/framework/util/log/HtcLog;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->log(Ljava/lang/String;)V

    .line 285
    :cond_0
    if-ne v0, p1, :cond_2

    .line 295
    :goto_1
    return-void

    .line 273
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 289
    :cond_2
    if-eqz p1, :cond_3

    .line 290
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->addPreferenceInBackgroundTo(Ljava/lang/Object;)V

    goto :goto_1

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->removePreferenceInBackgroundFrom(Lcom/htc/preference/HtcPreferenceGroup;)V

    goto :goto_1
.end method
