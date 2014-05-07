.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForYouTubeLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink$ErrorCode;
    }
.end annotation


# static fields
.field public static final EXCLUSION_DISABLE:Z = false

.field public static final EXCLUSION_ENABLE:Z = true

.field public static final GET_INTENT_LIST_METHOD_DEFAULT:I = 0x0

.field public static final GET_INTENT_LIST_METHOD_YOUTUBE_SPECIFIC_URL:I = 0x1

.field public static final GET_INTENT_LIST_METHOD_YOUTUBE_WATCH:I = 0x0

.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final NO_INDEX:I = -0x2

.field private static final SPECIFIC_DATA:[Ljava/lang/String; = null

.field private static final SPECIFIC_DATA_PATTERN:[Ljava/lang/String; = null

.field private static final SPECIFIC_SCHEME:[Ljava/lang/String; = null

.field private static final SPECIFIC_SCHEME_CATEGORY:[I = null

.field private static final SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-9)"


# instance fields
.field private mCategory:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    .line 61
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "youtube.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ".*youtube\\.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.youtube:"

    aput-object v1, v0, v2

    const-string v1, "vnd.youtube.launch:"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME_CATEGORY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x10t 0x0t
        0x4t 0x0t 0x10t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uriString"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setUriString(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static getExcludedIntentList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p0, :cond_0

    .line 590
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    .line 593
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

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHostIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "host"

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, hostLowerCase:Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, index:I
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 149
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 159
    .end local v2           #index:I
    :goto_1
    return v2

    .line 147
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-9)"

    const-string v4, " @@@@@  ERROR: get host index failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public static getIntentFilterList(Ljava/util/List;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 603
    if-nez p0, :cond_0

    .line 604
    const/4 v9, 0x0

    .line 718
    :goto_0
    return v9

    .line 607
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 611
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 612
    const-string v10, "http://www.youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 613
    const-string v10, "https://www.youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 614
    const-string v10, "http://youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 615
    const-string v10, "https://youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 617
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 621
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 623
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 624
    const-string v10, "http"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 625
    const-string v10, "https"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 626
    const-string v10, "*.youtube.com"

    invoke-virtual {v1, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 632
    .local v2, filter3:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 634
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 635
    const-string v10, "http"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 636
    const-string v10, "https"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 637
    const-string v10, "youtube.com"

    invoke-virtual {v2, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 643
    .local v3, filter4:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 645
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 646
    const-string v10, "http"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 647
    const-string v10, "https"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 648
    const-string v10, "www.youtube.com"

    invoke-virtual {v3, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 654
    .local v4, filter5:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 656
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 657
    const-string v10, "http"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 658
    const-string v10, "https"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 659
    const-string v10, "youtube.com"

    invoke-virtual {v4, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 665
    .local v5, filter6:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 667
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 668
    const-string v10, "http"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 669
    const-string v10, "https"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 670
    const-string v10, "youtube.com"

    invoke-virtual {v5, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v10, "/watch"

    invoke-virtual {v5, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 673
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 677
    .local v6, filter7:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 679
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 680
    const-string v10, "http"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 681
    const-string v10, "https"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 682
    const-string v10, "www.youtube.com"

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v10, "/watch"

    invoke-virtual {v6, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 685
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 689
    .local v7, filter8:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 691
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 692
    const-string v10, "http"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 693
    const-string v10, "https"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 694
    const-string v10, "*.youtube.com"

    invoke-virtual {v7, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v10, "/watch"

    invoke-virtual {v7, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 697
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 701
    .local v8, filter9:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 703
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 704
    const-string v10, "http"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 705
    const-string v10, "https"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 706
    const-string v10, "youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v10, "www.youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v10, "*.youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v10, "/v/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 710
    const-string v10, "/e/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 711
    const-string v10, "/embed/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 712
    const-string v10, "/user/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 713
    const-string v10, "/view_play_list"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 714
    const-string v10, "/playlist"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 716
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getIntentList(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .line 539
    if-nez p1, :cond_0

    .line 556
    :goto_0
    return v1

    .line 544
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

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    const/4 v1, 0x1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentList(Ljava/util/List;I)Z
    .locals 4
    .parameter
    .parameter "method"
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
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .line 562
    if-nez p0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    if-nez p1, :cond_0

    .line 571
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "http://www.youtube.com/watch"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    const/4 v1, 0x1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPathSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
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

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private queryActivities(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 23
    .parameter "context"
    .parameter "getIntentListMethod"
    .parameter "bExcluded"
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

    .prologue
    .line 172
    const/16 v16, 0x0

    .line 173
    .local v16, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v15, 0x0

    .line 174
    .local v15, rExcludedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v3, excludedIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 178
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 180
    const/4 v11, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object v11

    .line 184
    :cond_1
    move/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 185
    const/4 v11, 0x0

    goto :goto_0

    .line 190
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 191
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getExcludedIntentList(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 192
    const/4 v11, 0x0

    goto :goto_0

    .line 196
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

    .line 198
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 199
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

    .line 203
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v11, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    .line 207
    .local v19, size:I
    :goto_1
    move/from16 v0, v19

    if-ge v4, v0, :cond_c

    .line 210
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    const v21, 0x10040

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 214
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v20, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v20, :cond_5

    .line 215
    const-string v20, "HtcAppAssociationsUtils(2-9)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " ===> query activities for intentList["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    const-string v20, "HtcAppAssociationsUtils(2-9)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "     ===> package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

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

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 222
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v13, 0x0

    .line 223
    .local v13, packageName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 224
    .local v12, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 226
    .local v2, bFind:Z
    const/4 v7, 0x0

    .line 227
    .local v7, j:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_b

    .line 230
    const/4 v2, 0x0

    .line 231
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 233
    const/4 v8, 0x0

    .line 234
    .local v8, k:I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    .line 237
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 239
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 240
    const/4 v2, 0x1

    .line 245
    :cond_6
    if-nez v2, :cond_8

    .line 247
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 248
    const/4 v9, 0x0

    .line 249
    .local v9, l:I
    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 252
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 253
    const/4 v2, 0x1

    .line 259
    .end local v9           #l:I
    :cond_7
    if-nez v2, :cond_8

    .line 260
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 235
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 250
    .restart local v9       #l:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 208
    .end local v8           #k:I
    .end local v9           #l:I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 267
    .end local v2           #bFind:Z
    .end local v7           #j:I
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #outputPackageName:Ljava/lang/String;
    .end local v13           #packageName:Ljava/lang/String;
    :cond_c
    new-instance v18, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 269
    .local v18, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 272
    const-string v20, "HtcAppAssociationsUtils(2-9)"

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

    .line 274
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 275
    .restart local v17       #ri:Landroid/content/pm/ResolveInfo;
    const-string v20, "HtcAppAssociationsUtils(2-9)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " @@@@@                  package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

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

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private queryActivities(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "bExcluded"
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

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    return v0
.end method

.method public getPreferredComponentName(Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .parameter "context"

    .prologue
    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, checkHost:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, checkScheme:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 291
    :cond_0
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_1

    .line 292
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Scheme."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    const/4 v10, 0x0

    .line 402
    :cond_2
    :goto_0
    return-object v10

    .line 298
    :cond_3
    const-string v17, "http"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "https"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 299
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_4

    .line 300
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: The scheme is not http or https."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 307
    :cond_5
    if-eqz v5, :cond_6

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 308
    :cond_6
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_7

    .line 309
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Host."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    .line 315
    :cond_8
    const-string v17, "maps.google.com"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 316
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_9

    .line 317
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: The host belongs to Google Maps."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 329
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 331
    .local v14, path:Ljava/lang/String;
    if-nez v14, :cond_c

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 332
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_b

    .line 333
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Path."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_b
    const/4 v10, 0x0

    goto :goto_0

    .line 340
    :cond_c
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " @@@@@   host = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_0
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " @@@@@   path = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getHostIndex(Ljava/lang/String;)I

    move-result v13

    .line 352
    .local v13, index:I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_e

    .line 353
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_d

    .line 354
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: Cannot handle this host."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 344
    .end local v13           #index:I
    :catch_0
    move-exception v7

    .line 345
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 362
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v13       #index:I
    :cond_e
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getYoutubePreferredActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 364
    .local v10, firstComponentName:Ljava/lang/String;
    if-eqz v10, :cond_f

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 365
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 368
    :cond_10
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 369
    .local v9, firstComponent:Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 370
    .local v8, findComponent:Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, firstPackageName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 373
    .local v4, bFind:Z
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v15

    .line 377
    .local v15, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_12

    .line 379
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 380
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 382
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 383
    const/4 v4, 0x1

    .line 384
    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #findComponent:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .restart local v8       #findComponent:Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto/16 :goto_0

    .line 391
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_12
    if-nez v4, :cond_2

    .line 392
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 396
    .end local v4           #bFind:Z
    .end local v8           #findComponent:Landroid/content/ComponentName;
    .end local v9           #firstComponent:Landroid/content/ComponentName;
    .end local v10           #firstComponentName:Ljava/lang/String;
    .end local v11           #firstPackageName:Ljava/lang/String;
    .end local v15           #queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v7

    .line 397
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v17, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    .line 140
    return-void
.end method

.method public setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 19
    .parameter "context"
    .parameter
    .parameter "preferredComponentName"
    .parameter "bHaveCleared"
    .parameter "previousPreferredPackageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    .line 413
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ set preferred activity.  clear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 418
    if-eqz p5, :cond_5

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    new-instance v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v10}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    .line 423
    .local v10, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v14, v2, :cond_5

    .line 425
    const/4 v11, 0x0

    .line 426
    .local v11, bSet:Z
    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    aget-object v3, v3, v14

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, databasePreferredComponentName:Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 435
    :cond_1
    const/4 v11, 0x1

    .line 446
    :goto_1
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    .line 447
    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    aget-object v3, v3, v14

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setPreferredActivity(Landroid/content/Context;ILjava/lang/String;I)V

    .line 423
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 438
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 439
    const/4 v11, 0x1

    goto :goto_1

    .line 442
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 458
    .end local v10           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
    .end local v11           #bSet:Z
    .end local v12           #databasePreferredComponentName:Ljava/lang/String;
    .end local v14           #i:I
    :cond_5
    if-eqz p3, :cond_6

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p2, :cond_7

    .line 534
    :cond_6
    :goto_2
    return-void

    .line 467
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_3
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    .line 480
    .local v18, size:I
    move/from16 v0, v18

    new-array v5, v0, [Landroid/content/ComponentName;

    .line 482
    .local v5, components:[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 483
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 484
    .local v9, ai:Landroid/content/pm/ActivityInfo;
    new-instance v17, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .local v17, queryComponentName:Landroid/content/ComponentName;
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v2, :cond_8

    .line 487
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ setPreferredActivity():      package["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_8
    aput-object v17, v5, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 472
    .end local v5           #components:[Landroid/content/ComponentName;
    .end local v9           #ai:Landroid/content/pm/ActivityInfo;
    .end local v14           #i:I
    .end local v17           #queryComponentName:Landroid/content/ComponentName;
    .end local v18           #size:I
    :catch_0
    move-exception v13

    .line 473
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 493
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v5       #components:[Landroid/content/ComponentName;
    .restart local v14       #i:I
    .restart local v18       #size:I
    :cond_9
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v15, intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-static {v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentFilterList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .line 500
    .local v16, intentFilterSize:I
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 504
    .local v6, tempComponent:Landroid/content/ComponentName;
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/high16 v4, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 504
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 529
    .end local v5           #components:[Landroid/content/ComponentName;
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    .end local v14           #i:I
    .end local v15           #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #intentFilterSize:I
    .end local v18           #size:I
    :catch_1
    move-exception v13

    .line 530
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public setUriString(Ljava/lang/String;)V
    .locals 0
    .parameter "uriString"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method
