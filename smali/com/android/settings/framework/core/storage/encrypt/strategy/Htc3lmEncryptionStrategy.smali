.class public Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;
.super Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;
.source "Htc3lmEncryptionStrategy.java"


# static fields
.field private static final DEBUG:Z

.field private static final SECURITY_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    return-void
.end method

.method private static getKeyStoreStatus(Landroid/security/KeyStore;)Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyStore:state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nKeyStore:contain(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sd_encryption_256"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sd_encryption_256"

    invoke-virtual {p0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nKeyStore:contain(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-virtual {p0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)V
    .locals 6

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne p1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sd_encryption"

    invoke-static {v4, v5, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportSdCardStorageVolume()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "com.android.settings.action.FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportSdCardStorageVolume()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "com.android.internal.os.storage.FORMAT_ONLY"

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt(...)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->getKeyStoreStatus(Landroid/security/KeyStore;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->log(Ljava/lang/String;)V

    :cond_0
    const-string v1, "sd_encryption"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    const-string v1, "sd_encryption_256"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt(...)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->getKeyStoreStatus(Landroid/security/KeyStore;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)V

    return-void
.end method

.method public isEncrypted()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEncrypted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->log(Ljava/lang/String;)V

    :cond_0
    return v0
.end method
