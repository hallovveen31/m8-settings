.class public Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;
.super Ljava/lang/Object;
.source "HtcInfraredFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportInfraredEntry(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.irda"

    const-string v4, "com.htc.irda.opp.IrdaOppLauncherActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
