.class public Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;
.super Ljava/lang/Object;
.source "HtcCallFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportCallEntry()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportPhoneFunctionalities()Z

    move-result v0

    return v0
.end method
