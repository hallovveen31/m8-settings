.class public Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcExternalSdCardStorageGroup.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

.field private mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

.field private mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

.field private mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

.field private mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummary()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->updateState()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;->updateState()V

    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e67

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->onRefresh()V

    :cond_0
    return-void
.end method

.method protected onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->onRefresh()V

    return-void
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    invoke-virtual {p1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40a0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->pluginMediaFilesInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;I)I

    move-result v1

    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    sget-object v5, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
