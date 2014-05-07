.class public Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
.source "HtcPhoneStorageEncryptionPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c099f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method protected getNextPageTitleRes(Z)I
    .locals 1
    .parameter "doEncrypt"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const v0, 0x7f0c09ac

    .line 91
    .local v0, resId:I
    :goto_0
    return v0

    .line 89
    .end local v0           #resId:I
    :cond_0
    const v0, 0x7f0c09af

    .restart local v0       #resId:I
    goto :goto_0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/phone/HtcPhoneStorageEncryptionPreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
