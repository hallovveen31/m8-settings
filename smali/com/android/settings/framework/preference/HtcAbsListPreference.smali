.class public abstract Lcom/android/settings/framework/preference/HtcAbsListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAbsListPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

.field protected mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mSubTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->TAG:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->DEBUG:Z

    .line 65
    sget-boolean v0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->LOCAL_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 92
    new-instance v0, Lcom/android/settings/framework/os/HtcConcurrentCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 92
    new-instance v0, Lcom/android/settings/framework/os/HtcConcurrentCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method private initializeInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 195
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 665
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

    .line 666
    return-void
.end method

.method private onHandleNonUiMessage_ON_GET_VALUE()V
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 577
    .local v1, indexOfEntries:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 580
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 581
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is out of [0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setValueIndexInForeground(I)V

    .line 620
    .end local v0           #index:I
    :goto_0
    return-void

    .line 610
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve a remote data source."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n In this case, your UI will be blocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "since there is no index. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "See more about \'SET_VALUE_INDEX:mCounter\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 618
    sget-object v3, Lcom/android/settings/framework/preference/HtcAbsListPreference;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUiMessage_ON_SET_VALUE(Ljava/lang/String;)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 627
    .local v1, isSuccessful:Z
    if-nez v1, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->syncValueFromDataSourceInBackground()V

    .line 641
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 634
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 638
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find an existed value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 639
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbsListPreference;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onInitializeInBackground(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 328
    check-cast v1, Ljava/lang/String;

    .end local v1           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setKey(Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 340
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 355
    .local v2, textArray:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 356
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 360
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_5

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 365
    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 366
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setPersistent(Z)V

    .line 310
    const-string v0, "%s"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method private final setValueIndexInForeground(I)V
    .locals 1
    .parameter "index"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x18
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setValueIndexInForeground(I)V

    .line 251
    return-void
.end method

.method private final syncValueFromDataSourceInBackground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 260
    return-void
.end method

.method private final syncValueToDataSourceInBackground(Ljava/lang/Object;)V
    .locals 1
    .parameter "newValue"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected getCustomDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCustomEntries()[Ljava/lang/CharSequence;
.end method

.method protected abstract getCustomEntryValues()[Ljava/lang/CharSequence;
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "indexOfEntries"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getCustomTitle()Ljava/lang/CharSequence;
.end method

.method protected final getSubTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mSubTag:Ljava/lang/String;

    .line 657
    :goto_0
    return-object v0

    .line 656
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mSubTag:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mSubTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getSubTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 433
    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> onClick(): count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 438
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->awaitUntilMatchedAndNotified()V

    .line 440
    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->LOCAL_DEBUG:Z

    if-eqz v1, :cond_1

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   onClick(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    - Counter:count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    - Counter:enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    - dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (showing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 456
    :cond_1
    if-eqz v0, :cond_5

    .line 457
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 464
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< onClick(): count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 467
    :cond_3
    return-void

    .line 441
    :cond_4
    const-string v1, ""

    goto :goto_0

    .line 461
    :cond_5
    invoke-super {p0}, Lcom/htc/preference/HtcListPreference;->onClick()V

    goto :goto_1
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->initializeInBackground()V

    .line 480
    return-void
.end method

.method protected abstract onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 532
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 535
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 536
    const/4 v1, 0x0

    .line 564
    :goto_0
    return v1

    .line 539
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 564
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 541
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->countUp()Z

    .line 545
    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->LOCAL_DEBUG:Z

    if-eqz v1, :cond_1

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcMessageId.NonUi.ON_INITIALIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - Counter:count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - Counter:enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onHandleNonUiMessage_ON_GET_VALUE()V

    goto :goto_1

    .line 561
    :pswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onHandleNonUiMessage_ON_SET_VALUE(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 485
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 488
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x0

    .line 526
    :goto_0
    return v1

    .line 492
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 526
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 494
    :sswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 498
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 502
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 506
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setValueIndex(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->countUpAndDisabled()Z

    .line 510
    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsListPreference;->LOCAL_DEBUG:Z

    if-eqz v1, :cond_1

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcMessageId.Ui.SET_VALUE_INDEX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - Counter:count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - Counter:enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :sswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->LOCAL_DEBUG:Z

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPauseInBackground(): count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mCounter:Lcom/android/settings/framework/os/HtcConcurrentCounter;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcConcurrentCounter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "newValue"

    .prologue
    .line 384
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->syncValueFromDataSourceInBackground()V

    .line 371
    return-void
.end method

.method protected abstract onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 240
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsListPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method
