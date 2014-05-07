.class public Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;
.super Ljava/lang/Object;
.source "HtcBackupFeatureFlags.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 132
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final supportDefaultTipsAndHelp(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-static {}, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final supportDefaultTransfer(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-static {}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->getDefaultTransferIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final supportDnaTransfer(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getDnaTransferIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final supportHtcSyncManager(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 103
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.nero.android.htc.sync"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static final supportTransferMyStuff(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDnaTransfer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
