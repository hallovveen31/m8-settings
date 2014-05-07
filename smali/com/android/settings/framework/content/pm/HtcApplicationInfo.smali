.class public Lcom/android/settings/framework/content/pm/HtcApplicationInfo;
.super Landroid/content/pm/ApplicationInfo;
.source "HtcApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;,
        Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static DISPLAY_DEFAULT_VALUE:Z

.field private static final TAG:Ljava/lang/String;

.field private static sConfiguredButton:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->DEBUG:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->DISPLAY_DEFAULT_VALUE:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->sConfiguredButton:Ljava/lang/reflect/Field;

    :try_start_0
    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string v2, "configuredButton"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->sConfiguredButton:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "The framework does not support the field \'configuredButton\'."

    invoke-static {v1, v0}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    return-void
.end method

.method public static getConfiguredButton(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;
    .locals 5

    sget-object v3, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->sConfiguredButton:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->sConfiguredButton:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->getConfiguredButtonState(I)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    move-result-object v1

    sget-boolean v3, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sConfiguredButton: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke getConfiguredButton("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
