.class public Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcEncryptionPreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

.field private mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

.field private mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 35
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 36
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 35
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 36
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 35
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 36
    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    .line 69
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0c0c63

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setTitle(I)V

    .line 76
    return-void
.end method

.method private setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V
    .locals 0
    .parameter "fragment"
    .parameter "volume"
    .parameter "preference"

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p3, p2}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 127
    invoke-virtual {p1, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public pluginGroupComponentsOnResume(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 136
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setOrder(I)V

    .line 140
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 141
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 157
    :cond_2
    return-void
.end method

.method public setup(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    .line 90
    .local v2, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    new-instance v1, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    .line 92
    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 96
    .end local v1           #pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    .end local v2           #volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    .line 97
    .restart local v2       #volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    new-instance v1, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v1       #pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    .line 100
    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 104
    .end local v1           #pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    new-instance v1, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v1       #pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    .line 108
    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    .line 110
    .end local v1           #pref:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
    :cond_2
    return-void
.end method
