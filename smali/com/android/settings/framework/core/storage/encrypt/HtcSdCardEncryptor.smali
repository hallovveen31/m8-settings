.class Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;
.super Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;
.source "HtcSdCardEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
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

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 69
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume should be the SD card volume  or the non-FUSE-ed phone-storage volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStrategy()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor$1;->$SwitchMap$com$android$settings$framework$core$storage$encrypt$strategy$HtcIEncryptionStrategy$SdCardCryptoType:[I

    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;->getCurrentType()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    sget-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->TAG:Ljava/lang/String;

    const-string v1, "Settings is showing the encryption UI, but the underlying does not support it."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcDefaultEncryptionStrategy;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcDefaultEncryptionStrategy;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_0

    .line 272
    :pswitch_1
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/Htc3lmEncryptionStrategy;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isUiEnabled_condition1()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v0

    .line 214
    .local v0, state:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUiEnabled(): state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 225
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 228
    :goto_0
    return-object v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUiEnabled_condition2()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "encryption_ui_enabled"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 252
    .local v0, uiEnabled:Z
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0           #uiEnabled:Z
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v1

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canEncrypt()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v1

    .line 109
    .local v1, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;->getCurrentType()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;

    move-result-object v2

    sget-object v5, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 111
    .local v0, canEncrypt:Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 113
    :goto_1
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canEncrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 116
    :cond_0
    return v0

    .end local v0           #canEncrypt:Z
    :cond_1
    move v0, v4

    .line 109
    goto :goto_0

    .restart local v0       #canEncrypt:Z
    :cond_2
    move v0, v4

    .line 111
    goto :goto_1
.end method

.method public canReverse()Z
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->isEncryptionRequired()Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    .local v0, isRequired:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decrypt(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getStrategy()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;->decrypt(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getStrategy()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;->encrypt(Ljava/lang/String;)V

    .line 287
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
    .line 90
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

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
    .line 100
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

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
    .line 95
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 161
    const-string v3, ">> isUiEnabled()"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->isUiEnabled_condition1()Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    .local v0, enabled:Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 167
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< isUiEnabled():condition1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    :cond_2
    :goto_0
    return v2

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->isUiEnabled_condition2()Ljava/lang/Boolean;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< isUiEnabled():condition2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 182
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->canReverse()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->canReverse()Z

    move-result v3

    if-nez v3, :cond_6

    .line 187
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 188
    const-string v3, "<< isUiEnabled():condition3: false"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getUiEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v1

    .line 195
    .local v1, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< isUiEnabled():condition4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 198
    :cond_7
    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getStrategy()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isEncryptionRequired()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 309
    const-string v3, "DeviceManager3LM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 313
    .local v0, deviceManager:Landroid/os/IDeviceManager3LM;
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptionRequired(): deviceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 318
    :cond_0
    if-eqz v0, :cond_3

    .line 319
    const/4 v2, 0x1

    .line 322
    .local v2, isRequired:Z
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceManager3LM;->isSdEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 327
    :goto_0
    sget-boolean v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptionRequired(): deviceManager: isSdEncryptionRequired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->log(Ljava/lang/String;)V

    .line 336
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 338
    .end local v2           #isRequired:Z
    :goto_2
    return-object v3

    .line 323
    .restart local v2       #isRequired:Z
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->TAG:Ljava/lang/String;

    const-string v4, "Failed to invoke isSdEncryptionRequired."

    invoke-static {v3, v4, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 336
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 338
    .end local v2           #isRequired:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->canEncrypt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;->getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v1

    .line 129
    .local v1, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    .local v0, isVisible:Z
    goto :goto_0
.end method
