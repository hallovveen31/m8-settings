.class public final Lcom/android/settings/framework/flag/HtcSkuFlags;
.super Ljava/lang/Object;
.source "HtcSkuFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    }
.end annotation


# static fields
.field private static final CUSTOMER_ID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final enableStickyCallbackWarning:Z = false

#the value of this static final field might be set in the static constructor
.field public static final isDebugMode:Z = false

.field public static final isMessageDebugMode:Z = false

.field public static final isPerformanceDebugMode:Z = false

.field public static final isSecurityDebugMode:Z = false

.field private static mSupportMarketApplication:Ljava/lang/Boolean; = null

.field private static mSupportPhoneFunctionalities:Ljava/lang/Boolean; = null

.field private static sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata; = null

.field private static sTabletSenseVersion:F = 0.0f

.field private static sTabletSenseVersionInString:Ljava/lang/String; = null

.field public static final supportWiFi:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/settings/framework/flag/HtcSkuFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->enableStickyCallbackWarning:Z

    const/high16 v0, -0x4080

    sput v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->CUSTOMER_ID:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->CUSTOMER_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetadata(Landroid/content/Context;)Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sMetadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    goto :goto_0
.end method

.method private static getTabletMainSenseVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getTabletSenseVersion()F
    .locals 9

    sget v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    sget v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersionInString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    float-to-double v5, v4

    const-wide/high16 v7, 0x4000

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    const-string v3, "1.0"

    :cond_1
    :goto_2
    sput-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sput v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "senseVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletMainSenseVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "senseVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mainVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v5, 0x3f80

    goto :goto_0

    :cond_2
    const v5, 0x40066666

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    const-string v3, "1.1"

    goto :goto_2

    :cond_3
    const v5, 0x400ccccd

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    const-string v3, "1.2"

    goto :goto_2

    :cond_4
    const/high16 v5, 0x4060

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_5

    const-string v3, "1.5"

    goto :goto_2

    :cond_5
    const/high16 v5, 0x4080

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    const-string v3, "2.0"

    goto :goto_2
.end method

.method public static getTabletSenseVersionInString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isAppExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    const-string v5, "-isAppExisted(), context is null."

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isDisclosed()Z
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_DISCLOSE_FLAG:Z

    return v0
.end method

.method public static isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    const-string v3, "-isPackageEnable(), context is null."

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-isPackageEnable(), enableState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static support3LM(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static supportAllCaps(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/reflect/com/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static supportGoogleMobileServices(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.gms"

    invoke-static {p0, v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isAppExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static supportHidiServices(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.htc.cn.voice"

    const-string v1, "com.htc.cn.voice"

    invoke-static {p0, v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isAppExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static supportMarketApplication(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static final supportPhoneFunctionalities()Z
    .locals 2

    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "ro.phone.function"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static supportTalkBackServices(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.google.android.marvin.talkback"

    const-string v1, "com.google.android.marvin.talkback"

    invoke-static {p0, v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isAppExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isAppExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static suppressAllLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static suppressCriticalLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static suppressDebugLog()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressInfoLog()Z

    move-result v0

    return v0
.end method

.method public static suppressInfoLog()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressWarnLog()Z

    move-result v0

    return v0
.end method

.method public static suppressVerboseLog()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressDebugLog()Z

    move-result v0

    return v0
.end method

.method public static suppressWarnLog()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressAllLog()Z

    move-result v0

    return v0
.end method
