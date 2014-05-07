.class Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;
.super Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;
.source "HtcInternalStorageEncryptor.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 51
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_1

    .line 68
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume should be the data-storage volume  or the FUSE-ed phone-storage volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getEncryptionStatusName(I)Ljava/lang/String;
    .locals 4
    .parameter "statusCode"

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 172
    const-string v0, "UNKNOWN"

    .line 173
    .local v0, statusName:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->TAG:Ljava/lang/String;

    const-string v2, "Unknown case."

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :goto_0
    return-object v0

    .line 160
    .end local v0           #statusName:Ljava/lang/String;
    :pswitch_0
    const-string v0, "ENCRYPTION_STATUS_ACTIVE"

    .line 161
    .restart local v0       #statusName:Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0           #statusName:Ljava/lang/String;
    :pswitch_1
    const-string v0, "ENCRYPTION_STATUS_INACTIVE"

    .line 164
    .restart local v0       #statusName:Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0           #statusName:Ljava/lang/String;
    :pswitch_2
    const-string v0, "ENCRYPTION_STATUS_ACTIVATING"

    .line 167
    .restart local v0       #statusName:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0           #statusName:Ljava/lang/String;
    :pswitch_3
    const-string v0, "ENCRYPTION_STATUS_UNSUPPORTED"

    .line 170
    .restart local v0       #statusName:Ljava/lang/String;
    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canEncrypt()Z
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v1

    .line 93
    .local v1, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 94
    .local v0, canEncrypt:Z
    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canEncrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->log(Ljava/lang/String;)V

    .line 99
    :cond_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public decrypt(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The disk encryption cannot be reversed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 127
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 128
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
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
    .line 72
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

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
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 77
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isDataEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    .local v1, context:Landroid/content/Context;
    const-string v5, "device_policy"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 183
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 195
    .local v3, status:I
    sget-boolean v5, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "isEncrypted():"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n - Google:encrypedProperty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (from \'vold.decrypt\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n - Google:encrypedProperty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (from \'ro.crypto.state\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n - status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->getEncryptionStatusName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (from DevicePolicyManager)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->log(Ljava/lang/String;)V

    .line 219
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 230
    :goto_0
    :pswitch_0
    return v4

    .line 222
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEncryptionRequired()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 248
    const-string v3, "DeviceManager3LM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 252
    .local v0, deviceManager:Landroid/os/IDeviceManager3LM;
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptionRequired(): deviceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->log(Ljava/lang/String;)V

    .line 257
    :cond_0
    if-eqz v0, :cond_3

    .line 258
    const/4 v2, 0x1

    .line 261
    .local v2, isRequired:Z
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceManager3LM;->isDataEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 266
    :goto_0
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptionRequired(): deviceManager: isDataEncryptionRequired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->log(Ljava/lang/String;)V

    .line 275
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 277
    .end local v2           #isRequired:Z
    :goto_2
    return-object v3

    .line 262
    .restart local v2       #isRequired:Z
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->TAG:Ljava/lang/String;

    const-string v4, "Failed to invoke isSdEncryptionRequired."

    invoke-static {v3, v4, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 277
    .end local v2           #isRequired:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->canEncrypt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;->getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v1

    .line 112
    .local v1, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 114
    .local v0, isVisible:Z
    goto :goto_0
.end method
