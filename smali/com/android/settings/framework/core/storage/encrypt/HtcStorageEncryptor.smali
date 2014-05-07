.class public abstract Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;
.super Ljava/lang/Object;
.source "HtcStorageEncryptor.java"

# interfaces
.implements Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY_ENCRYPTION_UI_ENABLED:Ljava/lang/String; = "encryption_ui_enabled"

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field protected final mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 58
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 408
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method

.method public static getEncryptor(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
    .locals 2
    .parameter "volume"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcDefaultEncryptor;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcDefaultEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcSdCardEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEncrypted(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z
    .locals 4
    .parameter "volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    if-nez p0, :cond_2

    .line 193
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "The \'volume\' is null or not support."

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 222
    :cond_1
    :goto_0
    return v1

    .line 199
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 200
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 202
    .local v1, encrypted:Z
    sget-object v2, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 217
    :goto_1
    sget-boolean v2, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEncrypted(...): \n - volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - encrypted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isInternalStorageEncrypted(Landroid/content/Context;)Z

    move-result v1

    .line 205
    goto :goto_1

    .line 207
    :pswitch_1
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isPhoneStorageEncrypted(Landroid/content/Context;)Z

    move-result v1

    .line 208
    goto :goto_1

    .line 210
    :pswitch_2
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isSdCardEncrypted(Landroid/content/Context;)Z

    move-result v1

    .line 211
    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEncryptionUiEnabledByServerPush(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "encryption_ui_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, value:Z
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEncryptionUiEnabledByServerPush(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return v0
.end method

.method public static isInternalStorageEncrypted(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, encrypted:Z
    const/4 v2, 0x0

    .line 243
    .local v2, isNotConsistent:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_encryption"

    invoke-static {v4, v5, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 272
    if-eqz v1, :cond_0

    .line 277
    const-string v4, "ro.crypto.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, encrypedProperty:Ljava/lang/String;
    const-string v4, "encrypted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    const/4 v2, 0x1

    .line 285
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_encryption"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 292
    .end local v0           #encrypedProperty:Ljava/lang/String;
    :cond_0
    sget-boolean v4, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "isInternalStorageEncrypted():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - Google:encrypedProperty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (from \'vold.decrypt\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - Google:encrypedProperty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.crypto.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (from \'ro.crypto.state\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - 3LM:encrypted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (from Secure.DATA_ENCRYPTION)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - isNotConsistent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    .line 317
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return v1
.end method

.method public static isPhoneStorageEncrypted(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, encrypted:Z
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportPhoneStorageVolume()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 370
    :goto_0
    return v1

    .line 349
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isInternalStorageEncrypted(Landroid/content/Context;)Z

    move-result v0

    .line 355
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneStorageEncrypted(): FUSE case: \n - encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v1, v0

    .line 370
    goto :goto_0

    .line 363
    :cond_2
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isSdCardEncrypted(Landroid/content/Context;)Z

    move-result v0

    .line 365
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneStorageEncrypted(): non-FUSE case: \n - encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isSdCardEncrypted(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 396
    .local v0, encrypted:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 400
    sget-boolean v1, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSdCardStorageEncrypted(): \n - encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->Log(Ljava/lang/String;)V

    .line 404
    :cond_0
    return v0
.end method


# virtual methods
.method protected abstract getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getUiEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 113
    return-void
.end method
