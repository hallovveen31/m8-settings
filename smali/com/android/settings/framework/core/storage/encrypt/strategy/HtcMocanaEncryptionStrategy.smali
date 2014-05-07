.class public Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;
.super Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;
.source "HtcMocanaEncryptionStrategy.java"


# static fields
.field private static final DEBUG:Z

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V

    return-void
.end method

.method private runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne p1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v2, p2}, Landroid/os/storage/IMountService;->enableFilesystemEncryption(Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2, p2}, Landroid/os/storage/IMountService;->disableFilesystemEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to run crypto\n - actionType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private runCryptoInNewThread(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;-><init>(Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "decrypt(...)"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->runCryptoInNewThread(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "encrypt(...)"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcAbsEncryptionStrategy;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->runCryptoInNewThread(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V

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

    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->DEBUG:Z

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
