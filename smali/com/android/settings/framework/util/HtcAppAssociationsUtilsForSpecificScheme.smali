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

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    .line 81
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    .line 92
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

    .line 101
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

    .line 112
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CLEAR_PREFERRED_ACTIVITY:[Z

    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x10t 0x0t
        0x2t 0x0t 0x10t 0x0t
        0x3t 0x0t 0x10t 0x0t
        0x4t 0x0t 0x10t 0x0t
        0x5t 0x0t 0x10t 0x0t
        0x6t 0x0t 0x10t 0x0t
    .end array-data

    .line 112
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

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/high16 v0, 0x10

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    .line 123
    return-void
.end method

.method private static getIntentFilterList(Ljava/util/List;I)Z
    .locals 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v2, 0x0

    .line 701
    if-nez p0, :cond_0

    .line 720
    :goto_0
    return v2

    .line 705
    :cond_0
    if-ltz p1, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_2

    .line 706
    :cond_1
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent filter list failed!!! ...out of range!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v1, v3, p1

    .line 713
    .local v1, schemeData:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 715
    .end local v1           #schemeData:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent filter list failed!!! ...1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter "schemeData"
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

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    if-nez p0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v4

    .line 730
    :cond_1
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v5, :cond_0

    .line 735
    move-object v3, p1

    .line 737
    .local v3, newSchemeData:Ljava/lang/String;
    :try_start_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 738
    const/4 v6, 0x0

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 742
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 748
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 752
    .local v2, filter2:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 754
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 757
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 759
    goto :goto_0

    .line 760
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: get intent filter list failed!!! ...2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIntentList(Ljava/util/List;I)Z
    .locals 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    .line 640
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return v2

    .line 644
    :cond_0
    if-ltz p2, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt p2, v3, :cond_2

    .line 645
    :cond_1
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent list failed!!! ...out of range!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v1, v3, p2

    .line 652
    .local v1, schemeData:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentList(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 654
    .end local v1           #schemeData:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: get intent list failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "schemeData"
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

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 665
    if-nez p0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v3

    .line 669
    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v4, :cond_0

    .line 674
    move-object v1, p1

    .line 676
    .local v1, newSchemeData:Ljava/lang/String;
    :try_start_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .end local v2           #sb:Ljava/lang/StringBuilder;
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

    .line 696
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcAppAssociationsUtils(2-6)"

    const-string v5, " @@@@@  ERROR: get intent list failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v4, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "index"
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

    .prologue
    const/4 v0, 0x0

    .line 242
    if-nez p1, :cond_0

    .line 243
    const-string v1, "HtcAppAssociationsUtils(2-6)"

    const-string v2, " @@@@@  ERROR: query activity list failed!!!...null poninter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-object v0

    .line 247
    :cond_0
    if-ltz p2, :cond_1

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_2

    .line 248
    :cond_1
    const-string v1, "HtcAppAssociationsUtils(2-6)"

    const-string v2, " @@@@@  ERROR: query activity list failed!!! ...out of range!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    sget-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .parameter "context"
    .parameter "schemeData"
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

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 154
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!...null pointer!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v10, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v10

    .line 160
    :cond_1
    const/4 v14, 0x0

    .line 161
    .local v14, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v6, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 164
    .local v13, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 165
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v10, 0x0

    goto :goto_0

    .line 169
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

    .line 171
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v10, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    .line 175
    .local v17, size:I
    :goto_1
    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    .line 178
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    const v19, 0x10040

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 188
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .line 189
    .local v12, packageName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 190
    .local v11, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 192
    .local v2, bFind:Z
    const/4 v7, 0x0

    .line 193
    .local v7, j:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    .line 196
    const/4 v2, 0x0

    .line 197
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 199
    const/4 v8, 0x0

    .line 200
    .local v8, k:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 203
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 205
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 206
    const/4 v2, 0x1

    .line 211
    :cond_3
    if-nez v2, :cond_4

    .line 212
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 201
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 176
    .end local v8           #k:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    .end local v2           #bFind:Z
    .end local v7           #j:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #outputPackageName:Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_7
    new-instance v16, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 220
    .local v16, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    sget-boolean v18, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v18, :cond_0

    .line 223
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@ after query activities: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 226
    .local v15, ri:Landroid/content/pm/ResolveInfo;
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " @@@@@                  package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 231
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v10           #outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #ri:Landroid/content/pm/ResolveInfo;
    .end local v16           #riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    .end local v17           #size:I
    :catch_0
    move-exception v3

    .line 232
    .local v3, e:Ljava/lang/Exception;
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    const-string v19, " @@@@@  ERROR: query activity list failed!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v18, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    return v0
.end method

.method public getPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "useSpecificSchemeRule"
    .parameter "schemeData"
    .parameter "category"

    .prologue
    const/4 v7, 0x1

    .line 307
    if-eqz p3, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 308
    :cond_0
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...No shceme!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v5, ""

    .line 355
    :goto_0
    return-object v5

    .line 312
    :cond_1
    if-eqz p2, :cond_2

    .line 313
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v5, ""

    goto :goto_0

    .line 318
    :cond_2
    const/4 v1, 0x0

    .line 319
    .local v1, index:I
    move v4, p4

    .line 320
    .local v4, specificCategory:I
    move-object v2, p3

    .line 322
    .local v2, newSchemeData:Ljava/lang/String;
    :try_start_0
    const-string v5, ":"

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3
    if-nez p2, :cond_7

    .line 331
    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 333
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_5

    .line 338
    :cond_4
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_6

    .line 339
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v5, ""

    goto :goto_0

    .line 331
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_6
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v4, v5, v1

    .line 349
    :goto_2
    invoke-static {p1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 346
    :cond_7
    move v4, p4

    goto :goto_2

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    const-string v6, " @@@@@  ERROR: get preferred activity from DB failed!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    const-string v5, ""

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 9
    .parameter "context"
    .parameter "urlData"

    .prologue
    const/4 v7, 0x0

    .line 266
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getSpecificSchemeIndex(Ljava/lang/String;)I

    move-result v3

    .line 268
    .local v3, index:I
    const/4 v6, -0x2

    if-ne v3, v6, :cond_0

    move-object v5, v7

    .line 299
    :goto_0
    return-object v5

    .line 272
    :cond_0
    sget-object v6, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setCategory(I)V

    .line 275
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 276
    .local v4, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 278
    .local v0, bFind:Z
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 280
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 283
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    const/4 v0, 0x1

    .line 285
    goto :goto_0

    .line 289
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 290
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 293
    .end local v0           #bFind:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HtcAppAssociationsUtils(2-6)"

    const-string v8, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v6, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    move-object v5, v7

    .line 299
    goto :goto_0
.end method

.method public getSpecificSchemeIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "urlData"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x2

    .line 128
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    :cond_0
    move v1, v3

    .line 148
    :cond_1
    :goto_0
    return v1

    .line 132
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, urlDataLowerCase:Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, index:I
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 138
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v5, :cond_1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcAppAssociationsUtils(2-6)"

    const-string v5, " @@@@@  ERROR: get specific scheme index failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v4, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move v1, v3

    .line 148
    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 261
    iput p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->mCategory:I

    .line 262
    return-void
.end method

.method public setPreferredActivity(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 26
    .parameter "context"
    .parameter "useSpecificSchemeRule"
    .parameter "schemeData"
    .parameter "category"

    .prologue
    .line 364
    if-eqz p3, :cond_0

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 365
    :cond_0
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...No shceme!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    if-eqz p2, :cond_3

    .line 370
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_3
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v3, :cond_4

    .line 375
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

    .line 379
    :cond_4
    move-object/from16 v19, p3

    .line 381
    .local v19, newSchemeData:Ljava/lang/String;
    :try_start_0
    const-string v3, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 383
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .local v22, sb:Ljava/lang/StringBuilder;
    const-string v3, ":"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 389
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v15, 0x0

    .line 390
    .local v15, index:I
    move/from16 v24, p4

    .line 391
    .local v24, specificCategory:I
    move-object/from16 v25, v19

    .line 393
    .local v25, specificData:Ljava/lang/String;
    if-nez p2, :cond_a

    .line 394
    const/4 v15, 0x0

    :goto_1
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_6

    .line 396
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    aget-object v25, v3, v15

    .line 398
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 403
    :cond_6
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-lt v15, v3, :cond_8

    .line 404
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...Don\'t handle it!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v15           #index:I
    .end local v24           #specificCategory:I
    .end local v25           #specificData:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 494
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@  ERROR: set preferred activity failed!!! ...1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 394
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v15       #index:I
    .restart local v24       #specificCategory:I
    .restart local v25       #specificData:Ljava/lang/String;
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 408
    :cond_8
    :try_start_1
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v24, v3, v15

    .line 416
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 418
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 419
    :cond_9
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@ WARNING: Cannot find any apps for the specific sheme!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    .end local v18           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    move-object/from16 v25, v19

    .line 412
    move/from16 v24, p4

    goto :goto_2

    .line 423
    .restart local v18       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    const/4 v7, 0x0

    .line 424
    .local v7, tempComponent:Landroid/content/ComponentName;
    const/4 v11, 0x0

    .line 426
    .local v11, bFind:Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 428
    .local v21, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 430
    const/4 v11, 0x1

    .line 431
    new-instance v7, Landroid/content/ComponentName;

    .end local v7           #tempComponent:Landroid/content/ComponentName;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v21           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v7       #tempComponent:Landroid/content/ComponentName;
    :cond_d
    if-nez v11, :cond_e

    .line 438
    new-instance v7, Landroid/content/ComponentName;

    .end local v7           #tempComponent:Landroid/content/ComponentName;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .restart local v7       #tempComponent:Landroid/content/ComponentName;
    :cond_e
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 447
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    .line 449
    .local v23, size:I
    move/from16 v0, v23

    new-array v6, v0, [Landroid/content/ComponentName;

    .line 451
    .local v6, components:[Landroid/content/ComponentName;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move/from16 v0, v23

    if-ge v13, v0, :cond_f

    .line 452
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 454
    .local v10, ai:Landroid/content/pm/ActivityInfo;
    new-instance v20, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v20, queryComponentName:Landroid/content/ComponentName;
    aput-object v20, v6, v13

    .line 451
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 458
    .end local v10           #ai:Landroid/content/pm/ActivityInfo;
    .end local v20           #queryComponentName:Landroid/content/ComponentName;
    :cond_f
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v16, intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 461
    const-string v3, "HtcAppAssociationsUtils(2-6)"

    const-string v4, " @@@@@ WARNING: Cannot get and filter rule for the specific sheme!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 465
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 468
    .local v17, intentFilterSize:I
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_1

    .line 469
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

    .line 468
    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method

.method public setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter "flag"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 505
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    .line 506
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

    .line 514
    :cond_0
    const/4 v15, 0x0

    .local v15, index:I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_DATA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v15, v2, :cond_9

    .line 516
    if-eqz p4, :cond_1

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 517
    :cond_1
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v2, v2, v15

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, componentName:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 514
    .end local v11           #componentName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 527
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v18

    .line 529
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    const/4 v6, 0x0

    .line 534
    .local v6, tempComponent:Landroid/content/ComponentName;
    const/16 v22, 0x0

    .line 535
    .local v22, tempPackageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 537
    .local v10, bFind:Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 539
    .local v20, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 540
    const/4 v10, 0x1

    .line 541
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #tempComponent:Landroid/content/ComponentName;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 548
    .end local v20           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v10, :cond_6

    .line 549
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #tempComponent:Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 554
    :cond_6
    if-eqz p4, :cond_7

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 556
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    :cond_7
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->SPECIFIC_SCHEME_CATEGORY:[I

    aget v2, v2, v15

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 580
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    .line 582
    .local v21, size:I
    move/from16 v0, v21

    new-array v5, v0, [Landroid/content/ComponentName;

    .line 584
    .local v5, components:[Landroid/content/ComponentName;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_8

    .line 585
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 587
    .local v9, ai:Landroid/content/pm/ActivityInfo;
    new-instance v19, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v19, queryComponentName:Landroid/content/ComponentName;
    aput-object v19, v5, v13

    .line 584
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 596
    .end local v9           #ai:Landroid/content/pm/ActivityInfo;
    .end local v19           #queryComponentName:Landroid/content/ComponentName;
    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v16, intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 604
    .local v17, intentFilterSize:I
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    .line 605
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

    .line 604
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 630
    .end local v5           #components:[Landroid/content/ComponentName;
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    .end local v10           #bFind:Z
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v17           #intentFilterSize:I
    .end local v18           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21           #size:I
    .end local v22           #tempPackageName:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 631
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-6)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v2, "HtcAppAssociationsUtils(2-6)"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    .end local v12           #e:Ljava/lang/Exception;
    :cond_9
    return-void
.end method
