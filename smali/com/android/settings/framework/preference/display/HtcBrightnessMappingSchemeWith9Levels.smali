.class public final Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeWith9Levels.java"

# interfaces
.implements Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;


# instance fields
.field private mapping:[I

.field private range:[I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    return-void

    :array_0
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public decodeBrightness(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    aget v0, v0, p1

    return v0
.end method

.method public encodeBrightness(I)I
    .locals 3

    const/4 v0, 0x4

    const/16 v2, 0x8e

    if-gt p1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getMaximumBacklight()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setProgressMax(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method
