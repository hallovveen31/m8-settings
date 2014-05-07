.class public Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;
.super Ljava/lang/Object;
.source "HtcPrivacyFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportGuestMode(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.htc.guestmode"

    const-string v6, "com.htc.guestmode.SettingsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportMusicBypass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
