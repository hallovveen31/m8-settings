.class public Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;
.super Ljava/lang/Object;
.source "HtcStorageFeatureFlags.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final HTC_EMMC_STORAGE_SIZE_KEY:Ljava/lang/String; = "htc_emmc_storage_size"

.field private static final STORAGE_FLAG_EMMC_STORAGE_MASK:I = 0x20

.field private static final STORAGE_FLAG_EXTERNAL_STORAGE_MASK:I = 0x1

.field private static final STORAGE_FLAG_INTERNAL_STORAGE_MASK:I = 0x4

.field private static final STORAGE_FLAG_PHONE_STORAGE_LIKE_MASK:I = 0x80

.field private static final STORAGE_FLAG_PHONE_STORAGE_MASK:I = 0x8

.field private static final STORAGE_FLAG_SD_CARD_MASK:I = 0x2

.field private static final STORAGE_FLAG_USB_STORAGE_MASK:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field public static final isDataEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isPhoneEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isPhoneEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isPhoneEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isSdCardEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isSdCardEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isSdCardEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sStorageFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->DEBUG:Z

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportPhoneStorageVolume()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEmmcStorageLargerThan100Mb()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit16 v0, v0, 0x80

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportSdCardStorageVolume()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportUsbStorageVolume()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    :cond_2
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.hasInternalFat(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.hasRemovableStorageSlot(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.hasPhoneStorage(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.hasUsbDeviceSlot(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.isEncryptedFilesystemEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->isEncryptedFilesystemEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.isExternalStorageEmulated(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->isExternalStorageEmulated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.isExternalStorageRemovable(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->isExternalStorageRemovable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getLegacyExternalStorageDirectory(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getExternalStorageState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getPhoneStorageDirectory(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getPhoneStorageState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getRemovableStorageDirectory(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getRemovableStorageState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getUsbDeviceDirectory(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcWrapEnvironment.getUsbDeviceState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportExternalStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportSdCardStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportInternalStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportPhoneStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportEmmcStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportEmmcStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportUsbStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportUsbStorage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportPhoneStorageLike: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorageLike()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "encryption_enabled"

    const-string v2, "support_encryption"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "data_encryption_ui_visible"

    const-string v2, "support_3lm_ui"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isDataEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags$1;

    const-string v1, "phone_encryption_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "phone_encryption_ui_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "phone_encryption_ui_visible"

    const-string v2, "support_3lm_ui"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags$2;

    const-string v1, "sdcard_encryption_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags$2;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "sdcard_encryption_ui_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionUiEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    new-instance v0, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v1, "sdcard_encryption_ui_visible"

    const-string v2, "support_3lm_ui"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isSdCardEncryptionUiVisible:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    return-void

    :cond_4
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptStorageCoolDownAttempts()I
    .locals 3

    const/16 v0, 0xa

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const-string v1, "decrypt_storage_cool_down_attempts"

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDecryptStorageMaxFailedAttempts()I
    .locals 3

    const/16 v0, 0x1e

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const-string v1, "decrypt_storage_max_failed_attempts"

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static isEmmcStorageLargerThan100Mb()Z
    .locals 12

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-wide/16 v7, 0x0

    const-wide/32 v5, 0x6400000

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "htc_emmc_storage_size"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    :cond_0
    :goto_0
    if-nez v4, :cond_2

    const-string v9, "fat"

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->getBlockInfo(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-long v7, v9

    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    const-string v10, "emmc storage is FUSE-ed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "htc_emmc_storage_size"

    invoke-static {v9, v10, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_2
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emmc storage size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    cmp-long v9, v7, v5

    if-ltz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    return v9

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    sget-boolean v9, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    const-string v10, "htc_emmc_storage_size doesn\'t exist. Query storage size from HtcProcEmmcInfo."

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->getTotalSpace()J

    move-result-wide v7

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static final isPhoneStorageFuse()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/framework/os/HtcSystemProperties;->isPhoneStorageFuse()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneStorageFuse (from volumes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneStorageFuse (from system properites): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->log(Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The values are not synced!\n - from volumes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - from system properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final supportAppStorageLocSettings()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move v1, v5

    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v7

    const/high16 v8, 0x4080

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    move v3, v5

    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v7

    const/high16 v8, 0x3fc0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    move v4, v5

    :goto_2
    if-eqz v1, :cond_4

    if-nez v3, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    :goto_3
    return v5

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public static final supportCloudStorageGroup()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4080

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportEmmcStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportExternalSdCardStorage()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v0

    return v0
.end method

.method public static supportExternalStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportInternalSdCardStorage()Z
    .locals 1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportInternalStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportMakeMoreSpace()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f8ccccd

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/high16 v3, 0x4040

    cmpl-float v3, v0, v3

    if-gez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static final supportOptimization(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.defragment"

    const-string v5, "com.htc.defragment.DefragmentMain"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static supportPhoneStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportPhoneStorageLike()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSdCardStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportShowMediaInformation(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportUsbStorage()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
