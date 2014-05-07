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

    .prologue
    .line 17
    const-class v0, Lcom/android/settings/accounts/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    sput-object v0, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    .line 19
    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    sput-object v0, Lcom/android/settings/accounts/Util;->ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTwitterHaveFile(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 33
    const/4 v5, -0x1

    .line 35
    .local v5, rid:I
    :try_start_0
    const-string v7, "com.htc.sense.socialnetwork.twitter"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, authContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 37
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 45
    .local v4, res:Landroid/content/res/Resources;
    if-eqz v3, :cond_1

    .line 46
    const-string v7, "com.htc.sense.socialnetwork.twitter"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 47
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 52
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 53
    const-string v7, "twitter_account_authorize"

    const-string v8, "xml"

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #authContext:Landroid/content/Context;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    move v6, v5

    .line 63
    .end local v5           #rid:I
    .local v6, rid:I
    :goto_1
    return v6

    .line 40
    .end local v6           #rid:I
    .restart local v1       #authContext:Landroid/content/Context;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #rid:I
    :cond_0
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Context is null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 41
    .end local v5           #rid:I
    .restart local v6       #rid:I
    goto :goto_1

    .line 49
    .end local v6           #rid:I
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v5       #rid:I
    :cond_1
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "PackageManager is null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 50
    .end local v5           #rid:I
    .restart local v6       #rid:I
    goto :goto_1

    .line 55
    .end local v6           #rid:I
    .restart local v5       #rid:I
    :cond_2
    const/4 v5, -0x1

    .line 56
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "ApplicationInfo and Resources are null !"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 58
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #authContext:Landroid/content/Context;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 59
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 61
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v7, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t load preferences.xml file from "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOverlayColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, color:I
    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 114
    .local v2, ta:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 115
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2           #ta:Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v4, "Get overlay color fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, color:I
    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 102
    .local v2, ta:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 103
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2           #ta:Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/accounts/Util;->TAG:Ljava/lang/String;

    const-string v4, "Get theme color fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, isInAllCapsLocale:Z
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, hasClient:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v3, 0x1

    .line 75
    :goto_0
    if-nez v3, :cond_0

    .line 85
    :goto_1
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 79
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, enableSetting:I
    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    move v1, v4

    .line 85
    .local v1, enable:Z
    :cond_2
    goto :goto_1
.end method
