.class public Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;
.super Ljava/lang/Object;
.source "HtcFingerprintFeatureFlags.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->DEBUG:Z

    .line 23
    const-class v0, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFingerprintEnabled()Z
    .locals 7

    .prologue
    .line 82
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 83
    .local v0, context:Landroid/content/Context;
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 84
    .local v2, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    .line 86
    .local v1, currentPwQuality:I
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v4

    if-gt v1, v4, :cond_1

    const/4 v3, 0x1

    .line 88
    .local v3, result:Z
    :goto_0
    sget-boolean v4, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFingerprintEnabled(): required quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fingerprint quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return v3

    .line 86
    .end local v3           #result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isStorageEncrypted()Z
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 55
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 56
    .local v1, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 67
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->canEncrypt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v2

    or-int/2addr v0, v2

    .line 72
    :cond_2
    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStorageEncrypted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    return v0
.end method

.method public static final supportFingerprintSetting()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->TAG:Ljava/lang/String;

    const-string v4, "supportFingerprintSetting(): begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-static {}, Lcom/htc/fingerprintapi/HtcFingerprint;->hasFingerprint()I

    move-result v0

    .line 32
    .local v0, fingerprintStatus:I
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supportFingerprintSetting(): fingerprintStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HtcFingerprint.FP_SENSOR_NONE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HtcFingerprint.FP_SENSOR_VALIDITY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HtcFingerprint.FP_SENSOR_NOT_INITIAL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x40b0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->isStorageEncrypted()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static final supportFingerprintStorageEncryption()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
