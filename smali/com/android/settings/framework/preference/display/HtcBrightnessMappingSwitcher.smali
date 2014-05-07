.class public Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;-><init>()V

    return-object v0
.end method
