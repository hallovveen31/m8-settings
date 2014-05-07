.class public Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;
.super Ljava/lang/Object;
.source "HtcHarmanFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHarmanSettingsVisibility()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHarman()Z

    move-result v0

    return v0
.end method
