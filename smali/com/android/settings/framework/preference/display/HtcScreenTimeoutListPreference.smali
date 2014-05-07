.class public final Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcScreenTimeoutListPreference.java"


# static fields
.field private static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0xea60

.field public static final KEY:Ljava/lang/String; = "SCREEN_TIMEOUT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

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
    .line 30
    const-class v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->initialize()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->initialize()V

    .line 74
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 438
    sget-object v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method


# virtual methods
.method protected applyDemoMode()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setEnabled(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "SCREEN_TIMEOUT"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryText(I)Ljava/lang/String;
    .locals 2
    .parameter "milliseconds"

    .prologue
    .line 425
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 428
    :cond_0
    if-gez p1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c015c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "SCREEN_TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setKey(Ljava/lang/String;)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setPersistent(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step1_loadTimeValueList()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step2_applyExchangePolicy()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step3_bindData()V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->applyDemoMode()V

    .line 230
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 370
    if-gez p2, :cond_0

    .line 417
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    .local v0, selectedValue:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 388
    const-string v1, "onClick(...)"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t getIndexOfPolicyItem(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t isInsertionMode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t selectedValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t setValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t setSummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 408
    :cond_2
    const-string v1, "screen_off_timeout"

    invoke-static {p0, v1, v0}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 411
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_3

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t keep the latest value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 416
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0xea60

    const/4 v5, -0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, defaultValue:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, findIndex:I
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t defaultValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t findIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 131
    :cond_0
    if-ne v1, v5, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v6}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t new defaultValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 147
    const-string v3, "\t and also sync it to the database"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 158
    .local v2, indexOfPolicyItem:I
    if-ne v0, v5, :cond_3

    .line 163
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    :goto_0
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 176
    const-string v3, "\t hasPolicy: true"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t indexOfPolicyItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t new defaultValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 182
    .end local v2           #indexOfPolicyItem:I
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    .restart local v2       #indexOfPolicyItem:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 203
    :goto_0
    return-object v3

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 192
    .local v2, values:[Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 196
    :cond_1
    array-length v1, v2

    .line 197
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 198
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 364
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected step1_loadTimeValueList()V
    .locals 3

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->getEntries(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 255
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "step1_loadTimeValueList()"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
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

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected step2_applyExchangePolicy()V
    .locals 6

    .prologue
    .line 268
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 269
    const-string v3, "step2_applyExchangePolicy()"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 273
    :cond_0
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-direct {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    .line 275
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 279
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    .line 282
    .local v1, indexOfPolicyItem:I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v2, newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 286
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 290
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 291
    const-string v3, "\t hasPolicy: true"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 293
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

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v0           #i:I
    .end local v1           #indexOfPolicyItem:I
    .end local v2           #newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method protected step3_bindData()V
    .locals 8

    .prologue
    .line 304
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 305
    const-string v6, "step3_bindData()"

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 311
    .local v4, size:I
    new-array v1, v4, [Ljava/lang/String;

    .line 312
    .local v1, entries:[Ljava/lang/String;
    new-array v5, v4, [Ljava/lang/String;

    .line 313
    .local v5, values:[Ljava/lang/String;
    new-array v0, v4, [Z

    .line 317
    .local v0, enabled:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 318
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 319
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 320
    const/4 v6, 0x1

    aput-boolean v6, v0, v2

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v3

    .line 331
    .local v3, indexOfPolicyItem:I
    add-int/lit8 v2, v3, 0x1

    :goto_1
    if-ge v2, v4, :cond_2

    .line 332
    const/4 v6, 0x0

    aput-boolean v6, v0, v2

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 339
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_3

    .line 340
    const-string v6, "\t hasPolicy: true"

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t indexOfPolicyItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t entries["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 348
    .end local v3           #indexOfPolicyItem:I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 351
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_4

    .line 352
    const-string v6, "\t entries / values:"

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->Log(Ljava/lang/String;)V

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 357
    :cond_4
    return-void
.end method
