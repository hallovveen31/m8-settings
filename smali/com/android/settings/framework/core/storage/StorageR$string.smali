.class public Lcom/android/settings/framework/core/storage/StorageR$string;
.super Ljava/lang/Object;
.source "StorageR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/StorageR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final crypt_keeper_dialog_need_password_message:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final crypt_keeper_dialog_need_password_title:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sd_card_encrypt_confirm_description:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sd_card_encrypt_confirm_title:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sd_card_encrypt_settings_description:I = 0x0

.field public static final sd_card_encrypt_title:I = 0x7f0c09a6

.field public static final sd_card_unencrypt_confirm_description:I

.field public static final sd_card_unencrypt_confirm_title:I

.field public static final sd_card_unencrypt_settings_description:I

.field public static final sd_card_unencrypt_title:I

.field public static final sd_encrypt:I

.field public static final sd_encrypt_summary:I

.field public static final sd_encrypt_summary_enabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x7f0c0ad2

    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;->getCurrentType()Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcIEncryptionStrategy$SdCardCryptoType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/StorageR$1;->$SwitchMap$com$android$settings$framework$core$storage$encrypt$strategy$HtcIEncryptionStrategy$SdCardCryptoType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please contact SSD (storage team) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "that the configuration is incorrect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - support SD card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->supportSdCardStorageVolume()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - SdCardCryptoType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    const v1, 0x7f0c0ac9

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt:I

    const v1, 0x7f0c0aca

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary:I

    const v1, 0x7f0c0acb

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary_enabled:I

    const v1, 0x7f0c0acd

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->crypt_keeper_dialog_need_password_title:I

    const v1, 0x7f0c0ace

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->crypt_keeper_dialog_need_password_message:I

    const v1, 0x7f0c0acc

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_settings_description:I

    const v1, 0x7f0c0acf

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_title:I

    const v1, 0x7f0c0ad0

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_description:I

    sput v3, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_title:I

    const v1, 0x7f0c0ad1

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_settings_description:I

    sput v3, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_title:I

    const v1, 0x7f0c0ad3

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_description:I

    :goto_0
    return-void

    :pswitch_1
    const v1, 0x7f0c0999

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt:I

    const v1, 0x7f0c099a

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary:I

    const v1, 0x7f0c099b

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary_enabled:I

    const v1, 0x7f0c0c6b

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->crypt_keeper_dialog_need_password_title:I

    const v1, 0x7f0c0c6c

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->crypt_keeper_dialog_need_password_message:I

    const v1, 0x7f0c09a7

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_settings_description:I

    const v1, 0x7f0c09a6

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_title:I

    const v1, 0x7f0c09a8

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_description:I

    const v1, 0x7f0c09a9

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_title:I

    const v1, 0x7f0c09aa

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_settings_description:I

    sget v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_title:I

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_title:I

    const v1, 0x7f0c09ab

    sput v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_description:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
