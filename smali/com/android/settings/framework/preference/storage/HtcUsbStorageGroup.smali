.class public Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcUsbStorageGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

.field private mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

.field private mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->updateState()V

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->updateSummary()V

    .line 146
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c029b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1
    .parameter "lifecycle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    .line 130
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    if-ne p1, v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->onRefresh()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->onRefresh()V

    .line 124
    return-void
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 3
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getUsbStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 83
    .local v1, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 84
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 97
    new-instance v2, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    .line 98
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 100
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 115
    new-instance v2, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    .line 116
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 117
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 118
    return-void
.end method
