.class public Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;
.super Ljava/lang/Object;
.source "HtcBoomSoundFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBoomSoundSettingsVisibility()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportBoomSound()Z

    move-result v0

    return v0
.end method
