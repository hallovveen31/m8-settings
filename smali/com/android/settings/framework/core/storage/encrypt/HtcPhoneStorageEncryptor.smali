.class Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;
.super Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;
.source "HtcPhoneStorageEncryptor.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The volume should be the phone-storage volume."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p0

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;-><init>(Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone-encryptor:proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$2;-><init>(Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    goto :goto_0
.end method


# virtual methods
.method public canEncrypt()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canEncrypt()Z

    move-result v0

    return v0
.end method

.method public canReverse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canReverse()Z

    move-result v0

    return v0
.end method

.method public decrypt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->decrypt(Ljava/lang/String;)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->encrypt(Ljava/lang/String;)V

    return-void
.end method

.method protected getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method protected getUiEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method protected getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isEncryptionRequired()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncryptionRequired()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v0

    goto :goto_0
.end method
