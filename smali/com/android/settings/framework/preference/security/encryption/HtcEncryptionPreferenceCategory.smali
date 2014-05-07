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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f0c0c63

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    return-void
.end method

.method private setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    invoke-virtual {p1, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public pluginGroupComponentsOnResume(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    return-void
.end method

.method public setup(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    new-instance v1, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mDataPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mPhoneStoragePreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setupDependencies(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->mSdCardaPreference:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    :cond_2
    return-void
.end method
