.class public final Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeWith226Levels.java"

# interfaces
.implements Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeBrightness(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method public encodeBrightness(I)I
    .locals 1

    add-int/lit8 v0, p1, -0x1e

    return v0
.end method

.method public getMaximumBacklight()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public setProgressMax(Landroid/widget/SeekBar;)V
    .locals 1

    const/16 v0, 0xe1

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method
