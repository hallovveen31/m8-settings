.class public Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;
.super Ljava/lang/Object;
.source "HtcDeveloperFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportPerformanceMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final supportShowDeveloperByDefault()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
