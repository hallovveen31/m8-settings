.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost$IfHostCategory;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost$ErrorCode;
    }
.end annotation


# static fields
.field public static final EXCLUSION_DISABLE:Z = false

.field public static final EXCLUSION_ENABLE:Z = true

.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final NO_INDEX:I = -0x2

.field private static final SPECIFIC_HOST_CATEGORY:[I = null

.field private static final SPECIFIC_HOST_CLEAR_PREFERRED_ACTIVITY:[Z = null

.field private static final SPECIFIC_HOST_DATA:[Ljava/lang/String; = null

.field private static final SPECIFIC_HOST_PACKAGENAME_PREFIX:[Ljava/lang/String; = null

.field private static final SPECIFIC_PATH_DATA_PATTERN:[Ljava/lang/String; = null

.field private static final SPECIFIC_PATH_DATA_PREFIX:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-3)"


# instance fields
.field private mCategory:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->LOG_DEBUG:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_CATEGORY:[I

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mobitvng.mobitv.com"

    aput-object v1, v0, v3

    const-string v1, "ec2-23-23-148-113.compute-1.amazonaws.com"

    aput-object v1, v0, v4

    const-string v1, "www.htc.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "/link/videocenter"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PREFIX:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PATTERN:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.mobitv.client"

    aput-object v1, v0, v3

    const-string v1, "com.htc.family"

    aput-object v1, v0, v4

    const-string v1, "com.htc.videocenter.ui"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_PACKAGENAME_PREFIX:[Ljava/lang/String;

    new-array v0, v2, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_CLEAR_PREFERRED_ACTIVITY:[Z

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x20t 0x0t
        0x2t 0x0t 0x20t 0x0t
        0x3t 0x0t 0x20t 0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    const/high16 v0, 0x20

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mCategory:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    const/high16 v0, 0x20

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mCategory:I

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->setUriString(Ljava/lang/String;)V

    return-void
.end method

.method private getActivityForGeneralHostLink(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 5

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    const-string v3, " @@@@@  handle general host link."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@  handle this general host link - there are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    const-string v3, " @@@@@  ERROR: get activity failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getExcludedIntentList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHostIndex(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    const-string v4, " @@@@@  ERROR: get host index failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method private getIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v6, -0x2

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_2

    :cond_0
    move v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    sget-object v7, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_a

    sget-object v7, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v8, :cond_7

    sget-object v7, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PREFIX:[Ljava/lang/String;

    aget-object v5, v7, v2

    sget-object v7, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PATTERN:[Ljava/lang/String;

    aget-object v4, v7, v2

    if-eqz v5, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_4

    :cond_3
    if-eqz v4, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v8, :cond_1

    :cond_4
    if-eqz p2, :cond_5

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_8

    :cond_5
    if-eqz v5, :cond_6

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_9

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v8, :cond_1

    :cond_9
    if-eqz v4, :cond_7

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v8, :cond_7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "HtcAppAssociationsUtils(2-3)"

    const-string v8, " @@@@@  ERROR: get host index failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    move v2, v6

    goto/16 :goto_0
.end method

.method private static getIntentFilterList(Ljava/util/List;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;I)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v8

    :cond_0
    sget-object v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    aget-object v5, v10, p1

    sget-object v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PREFIX:[Ljava/lang/String;

    aget-object v7, v10, p1

    sget-object v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PATTERN:[Ljava/lang/String;

    aget-object v6, v10, p1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_5

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v6, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_6

    :cond_2
    const/4 v0, 0x0

    :goto_2
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v9, :cond_3

    const/4 v10, 0x1

    invoke-virtual {v3, v7, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v0, v9, :cond_4

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v4, v6, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v8, v9

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v9, "HtcAppAssociationsUtils(2-3)"

    const-string v10, " @@@@@  ERROR: Failed to get intent filter list!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getIntentList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getIntentList(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_PATH_DATA_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    const-string v4, " @@@@@  ERROR: get intent list failed!!!...2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private queryActivities(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/4 v15, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v20, -0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIntentList(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_2

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIntentList(Ljava/util/List;I)Z

    move-result v20

    if-nez v20, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getExcludedIntentList(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    const v21, 0x10040

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    const v21, 0x10040

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    :goto_1
    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    const v21, 0x10040

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_a

    const/4 v2, 0x0

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_7

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_7

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    new-instance v18, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v20, "HtcAppAssociationsUtils(2-3)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " @@@@@ after query activities: size1="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", size2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    const-string v20, "HtcAppAssociationsUtils(2-3)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " @@@@@                  package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private queryActivities(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mCategory:I

    return v0
.end method

.method public getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v10, :cond_1

    :cond_0
    move-object v7, v9

    :goto_0
    return-object v7

    :cond_1
    const-string v8, "http"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "https"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v7, v9

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    :cond_3
    move-object v7, v9

    goto :goto_0

    :cond_4
    const-string v8, "maps.google.com"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v8, v10, :cond_5

    const-string v8, "youtube.com"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v8, v10, :cond_6

    :cond_5
    move-object v7, v9

    goto :goto_0

    :cond_6
    const-string v8, "HtcAppAssociationsUtils(2-3)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@   host = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIndex()I

    move-result v5

    const/4 v8, -0x2

    if-ne v5, v8, :cond_7

    move-object v7, v9

    goto :goto_0

    :cond_7
    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_CATEGORY:[I

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->setCategory(I)V

    const/4 v0, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, p1, v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v8, "HtcAppAssociationsUtils(2-3)"

    const-string v10, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    move-object v7, v9

    goto/16 :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mCategory:I

    return-void
.end method

.method public setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 25

    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->LOG_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@ set preferred activity.  flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v17, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_DATA:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_9

    if-eqz p4, :cond_1

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_1
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_CATEGORY:[I

    aget v3, v3, v17

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/16 v24, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v12, 0x1

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_5
    if-nez v12, :cond_6

    new-instance v7, Landroid/content/ComponentName;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_6
    if-eqz p4, :cond_7

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->SPECIFIC_HOST_CATEGORY:[I

    aget v3, v3, v17

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v6, v0, [Landroid/content/ComponentName;

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v15, v0, :cond_8

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v21, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v6, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_8
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    const/high16 v5, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :catch_0
    move-exception v14

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-3)"

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return-void
.end method

.method public setUriString(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->mUri:Ljava/lang/String;

    :cond_0
    return-void
.end method
