.class public Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
.source "HtcInternalStorageEncryptionPreference.java"


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
.method public getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c099d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c099c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method protected getNextPageTitleRes(Z)I
    .locals 3
    .parameter "doEncrypt"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    const v0, 0x7f0c09b2

    .line 79
    .local v0, resId:I
    return v0

    .line 76
    .end local v0           #resId:I
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Does not support decrypt for the data storage."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
