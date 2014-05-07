.class public Lcom/android/settings/framework/preference/storage/sdcard/HtcSdCardEncryptionPreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
.source "HtcSdCardEncryptionPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method protected getNextPageTitleRes(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c09a6

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_title:I

    goto :goto_0
.end method
