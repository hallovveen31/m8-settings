.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForSpecificScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme$IfSchemeCategory;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme$IfUseSchemeRule;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme$ErrorCode;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final SPECIFIC_SCHEME_CATEGORY:[I = null

.field private static final SPECIFIC_SCHEME_CLEAR_PREFERRED_ACTIVITY:[Z = null

.field private static final SPECIFIC_SCHEME_DATA:[Ljava/lang/String; = null

.field private static final SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-6)"


# instance fields
.field private mCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vzw:"

    aput-object v1, v0, v4

    const-string v1, "mobitvng:"

    aput-object v1, v0, v5

    const-string v1, "sprinttv:"

    aput-object v1, v0, v6

    const-string v1, "vnd.youtube:"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "vnd.youtube.launch:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lync:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.gravitymobile.app.hornbill"

    aput-object v1, v0, v4

    const-string v1, "com.mobitv.client"

    aput-object v1, v0, v5

    const-string v1, "com.mobitv.client"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.microsoft.office.lync"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CLEAR_PREFERRED_ACTIVITY:[Z

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x10t 0x0t
        0x2t 0x0t 0x10t 0x0t
        0x3t 0x0t 0x10t 0x0t
        0x4t 0x0t 0x10t 0x0t
        0x5t 0x0t 0x10t 0x0t
        0x6t 0x0t 0x10t 0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    return-void
.end method

.method private static getIntentFilterList(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    if-ltz p1, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_2

    :cond_1
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent filter list failed!!! ...out of range!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v1, v3, p1

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent filter list failed!!! ...1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v5, :cond_0

    move-object v3, p1

    :try_start_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: get intent filter list failed!!! ...2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    if-ltz p2, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt p2, v3, :cond_2

    :cond_1
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent list failed!!! ...out of range!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v1, v3, p2

    invoke-static {p1, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentList(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent list failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v4, :cond_0

    move-object v1, p1

    :try_start_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HtcAppAssociationsUtils(2-6)"

    const-string v5, " @@@@@  ERROR: get intent list failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "HtcAppAssociationsUtils(2-6)"

    const-string v2, " @@@@@  ERROR: query activity list failed!!!...null poninter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    if-ltz p2, :cond_1

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_2

    :cond_1
    const-string v1, "HtcAppAssociationsUtils(2-6)"

    const-string v2, " @@@@@  ERROR: query activity list failed!!! ...out of range!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!...null pointer!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/4 v14, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    const v19, 0x10040

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    :goto_1
    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    const v19, 0x10040

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    new-instance v16, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v18, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@ after query activities: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " @@@@@                  package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    return v0
.end method

.method public getPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    :cond_0
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...No shceme!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_1
    if-eqz p2, :cond_2

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v4, p4

    move-object v2, p3

    :try_start_0
    const-string v5, ":"

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez p2, :cond_7

    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_4
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_6

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v4, v5, v1

    :goto_2
    invoke-static {p1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :cond_7
    move v4, p4

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: get preferred activity from DB failed!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, ""

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getSpecificSchemeIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x2

    if-ne v3, v6, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    sget-object v6, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setCategory(I)V

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "HtcAppAssociationsUtils(2-6)"

    const-string v8, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v5, v7

    goto :goto_0
.end method

.method public getSpecificSchemeIndex(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "HtcAppAssociationsUtils(2-6)"

    const-string v5, " @@@@@  ERROR: get specific scheme index failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    return-void
.end method

.method public setPreferredActivity(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 26

    if-eqz p3, :cond_0

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_0
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...No shceme!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@ set preferred activity.  scheme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v19, p3

    :try_start_0
    const-string v3, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_5
    const/4 v15, 0x0

    move/from16 v24, p4

    move-object/from16 v25, v19

    if-nez p2, :cond_a

    const/4 v15, 0x0

    :goto_1
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_6

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v25, v3, v15

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    :cond_6
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt v15, v3, :cond_8

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_8
    :try_start_1
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v24, v3, v15

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@ WARNING: Cannot find any apps for the specific sheme!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v25, v19

    move/from16 v24, p4

    goto :goto_2

    :cond_b
    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v11, 0x1

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-nez v11, :cond_e

    new-instance v7, Landroid/content/ComponentName;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v6, v0, [Landroid/content/ComponentName;

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v23

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v20, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v20, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_f
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@ WARNING: Cannot get and filter rule for the specific sheme!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    const/high16 v5, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method

.method public setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 23

    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAppAssociationsUtils(2-6)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ set preferred activity.  flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v15, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v15, v2, :cond_9

    if-eqz p4, :cond_1

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_1
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v2, v2, v15

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    :cond_5
    if-nez v10, :cond_6

    new-instance v6, Landroid/content/ComponentName;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    :cond_6
    if-eqz p4, :cond_7

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_7
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v2, v2, v15

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v5, v0, [Landroid/content/ComponentName;

    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_8

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v19, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/high16 v4, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v12

    const-string v2, "HtcAppAssociationsUtils(2-6)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return-void
.end method
