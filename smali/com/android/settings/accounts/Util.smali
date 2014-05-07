.class public Lcom/android/settings/accounts/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String; = null

.field public static ACTION_TAP_TO_TOP:Ljava/lang/String; = null

.field public static final DEFAULT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field public static final HTCTWITTERTYPE:Ljava/lang/String; = "com.htc.sense.socialnetwork.twitter"

.field public static final MEDIA_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_MEDIA"

.field public static final PLATFORM_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field public static final SHARED_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_SHARED"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/accounts/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    sput-object v0, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    sput-object v0, Lcom/android/settings/accounts/Util;->ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTwitterHaveFile(Landroid/content/Context;)I
    .locals 10

    const/4 v5, -0x1

    :try_start_0
    const-string v7, "com.htc.sense.socialnetwork.twitter"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v7, "com.htc.sense.socialnetwork.twitter"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    const-string v7, "twitter_account_authorize"

    const-string v8, "xml"

    iget-object v9, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    move v6, v5

    :goto_1
    return v6

    :cond_0
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Context is null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "PackageManager is null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "ApplicationInfo and Resources are null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOverlayColor(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v4, "Get overlay color fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v4, "Get theme color fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Not Found !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    goto :goto_1
.end method
