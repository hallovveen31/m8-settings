.class public Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcInternalStorageGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

.field private mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

.field private mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 6
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    .line 97
    .local v3, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 98
    invoke-virtual {p1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40a0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 106
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    .line 107
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 121
    :goto_0
    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    invoke-interface {v1, v3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 123
    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v4, v1

    .line 124
    check-cast v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;

    .end local v1           #media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v1       #media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    invoke-interface {v1, v3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 132
    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v4, v1

    .line 133
    check-cast v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 134
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 139
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;

    .end local v1           #media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v1       #media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    invoke-interface {v1, v3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 141
    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v4, v1

    .line 142
    check-cast v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 147
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    sget-object v5, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    .line 149
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 150
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 155
    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    new-instance v2, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 162
    .local v2, p:Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;
    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 168
    invoke-virtual {p1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 171
    .end local v2           #p:Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;
    :cond_0
    return-void

    .line 111
    .end local v1           #media:Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;
    :cond_1
    new-instance v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    .line 112
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->mDetailedTotalAvailable:Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {p1, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
