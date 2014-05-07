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

    .prologue
    .line 23
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

    .line 26
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 39
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eq v1, v2, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The volume should be the phone-storage volume."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    move-object v0, p0

    .line 47
    .local v0, mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    new-instance v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;-><init>(Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    .line 85
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 86
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

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->log(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance v1, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$2;-><init>(Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    goto :goto_0
.end method


# virtual methods
.method public canEncrypt()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canEncrypt()Z

    move-result v0

    return v0
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canReverse()Z

    move-result v0

    return v0
.end method

.method public decrypt(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->decrypt(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->encrypt(Ljava/lang/String;)V

    .line 141
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

    .prologue
    .line 92
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

    .prologue
    .line 102
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

    .prologue
    .line 97
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isEncryptionRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncryptionRequired()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;->mEncryptorProxy:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isVisible()Z

    move-result v0

    goto :goto_0
.end method
