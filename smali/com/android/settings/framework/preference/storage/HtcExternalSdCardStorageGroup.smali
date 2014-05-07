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

    .prologue
    .line 35
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

    .line 38
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummary()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->updateState()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;->updateState()V

    .line 189
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e67

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1
    .parameter "lifecycle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    .line 176
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    if-ne p1, v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->onRefresh()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->onRefresh()V

    .line 170
    return-void
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 6
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 97
    .local v1, order:I
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    .line 98
    .local v3, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 99
    invoke-virtual {p1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40a0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 107
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    .line 108
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->setOrder(I)V

    .line 110
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 123
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->pluginMediaFilesInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;I)I

    move-result v1

    .line 127
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    sget-object v5, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    .line 129
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->setOrder(I)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 134
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    .line 135
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setOrder(I)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 140
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    .line 141
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;->setOrder(I)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 146
    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    new-instance v2, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 153
    .local v2, p:Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;
    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;->setOrder(I)V

    .line 160
    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 163
    .end local v2           #p:Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;
    :cond_0
    return-void

    .line 113
    :cond_1
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    .line 114
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setOrder(I)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 117
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
