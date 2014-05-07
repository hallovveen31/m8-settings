.class public Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;
.super Lcom/android/internal/telephony/HtcBuildUtils;
.source "HtcWrapBuildUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sMethod_KDDI_WORDING_CONFIG:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v1, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->DEBUG:Z

    :try_start_0
    const-class v2, Lcom/android/internal/telephony/HtcBuildUtils;

    const-string v3, "KDDI_WORDING_CONFIG"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->sMethod_KDDI_WORDING_CONFIG:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcBuildUtils;-><init>()V

    return-void
.end method

.method public static KDDI_WORDING_CONFIG()Z
    .locals 6

    const/4 v3, 0x0

    sget-object v2, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->sMethod_KDDI_WORDING_CONFIG:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->sMethod_KDDI_WORDING_CONFIG:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->TAG:Ljava/lang/String;

    const-string v4, "failed to invoke KDDI_WORDING_CONFIG()"

    invoke-static {v2, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0
.end method
