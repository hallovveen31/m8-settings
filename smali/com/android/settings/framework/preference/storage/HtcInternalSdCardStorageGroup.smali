.class public Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcInternalSdCardStorageGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

.field private mEncrypt:Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;

.field private mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

.field private mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

.field private mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

.field private mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportEmmcStorage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->updateState()V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportOptimization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;->updateState()V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;->updateState()V

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    .line 270
    :cond_4
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c028e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 232
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingMediaFilesSpace()V

    .line 234
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getMediaFilesSpace()V

    .line 235
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "trigged to call getMediaFilesSpace()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->log(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1
    .parameter "lifecycle"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    .line 246
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    if-ne p1, v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->onRefresh()V

    .line 249
    :cond_0
    return-void
.end method

.method protected onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 189
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v2, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingAppsSpace()V

    .line 211
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingMediaFilesSpace()V

    .line 212
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "trigged to stop getAppsSpace()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->log(Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getAppsSpace()V

    .line 194
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "trigged to call getAppsSpace()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->onRefresh()V

    .line 223
    return-void
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 6
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 108
    .local v1, order:I
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    .line 109
    .local v3, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 110
    invoke-virtual {p1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40a0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 118
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    .line 119
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 120
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->setOrder(I)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 133
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->pluginMediaFilesInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;I)I

    move-result v1

    .line 136
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportEmmcStorage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    sget-object v5, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    .line 139
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->setOrder(I)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 141
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportOptimization(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    .line 146
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;->setOrder(I)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 148
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mOptimization:Lcom/android/settings/framework/preference/storage/HtcOptimizationPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 154
    :cond_1
    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    .line 156
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;->setOrder(I)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 158
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 163
    :cond_2
    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    new-instance v2, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 170
    .local v2, p:Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;
    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->setOrder(I)V

    .line 177
    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 180
    .end local v2           #p:Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;
    :cond_3
    return-void

    .line 124
    :cond_4
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    .line 125
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 126
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setOrder(I)V

    .line 127
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
