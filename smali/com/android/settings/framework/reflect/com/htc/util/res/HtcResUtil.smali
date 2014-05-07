.class public Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.util.res.HtcResUtil"

.field private static final TAG:Ljava/lang/String;

.field private static final sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sIsInAllCapsLocale:Ljava/lang/reflect/Method;

.field private static sIsInAllCapsLocaleSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocaleSupported:Z

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.htc.util.res.HtcResUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sClass:Ljava/lang/Class;

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->TAG:Ljava/lang/String;

    const-string v3, "Cannot find the class \'com.htc.util.res.HtcResUtil\'"

    invoke-static {v2, v3, v1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sClass:Ljava/lang/Class;

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    sget-boolean v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocaleSupported:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocale:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sClass:Ljava/lang/Class;

    const-string v4, "isInAllCapsLocale"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocale:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocale:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    sput-boolean v7, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocaleSupported:Z

    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocaleSupported:Z

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocale:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->sIsInAllCapsLocale:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
