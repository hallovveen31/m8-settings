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

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "youtube.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ".*youtube\\.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.youtube:"

    aput-object v1, v0, v2

    const-string v1, "vnd.youtube.launch:"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME_PACKAGENAME_PREFIX:[Ljava/lang/String;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setUriString(Ljava/lang/String;)V

    return-void
.end method

.method public static getExcludedIntentList(Ljava/util/List;)Z
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

    if-nez p0, :cond_0

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

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

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

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_DATA_PATTERN:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
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

    const-string v3, "HtcAppAssociationsUtils(2-9)"

    const-string v4, " @@@@@  ERROR: get host index failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public static getIntentFilterList(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v9, 0x1

    if-nez p0, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http://www.youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https://www.youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "http://youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https://youtube.com"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "*.youtube.com"

    invoke-virtual {v1, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "youtube.com"

    invoke-virtual {v2, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const-string v10, "www.youtube.com"

    invoke-virtual {v3, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const-string v10, "youtube.com"

    invoke-virtual {v4, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "youtube.com"

    invoke-virtual {v5, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/watch"

    invoke-virtual {v5, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "www.youtube.com"

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/watch"

    invoke-virtual {v6, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "*.youtube.com"

    invoke-virtual {v7, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/watch"

    invoke-virtual {v7, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "http"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "https"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "www.youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "*.youtube.com"

    invoke-virtual {v8, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "/v/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const-string v10, "/e/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const-string v10, "/embed/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const-string v10, "/user/"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const-string v10, "/view_play_list"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const-string v10, "/playlist"

    invoke-virtual {v8, v10, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

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

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntentList(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_0

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

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

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

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

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

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

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

    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_2

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    move/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;I)Z

    move-result v20

    if-nez v20, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-static {v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getExcludedIntentList(Ljava/util/List;)Z

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

    if-ge v4, v0, :cond_c

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    const v21, 0x10040

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    sget-boolean v20, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v20, :cond_5

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

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

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

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_b

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

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

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

    if-eqz v20, :cond_9

    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_8

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

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

    if-eqz v20, :cond_a

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v18, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

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

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

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

    goto :goto_6
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    return v0
.end method

.method public getPreferredComponentName(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_0
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_1

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Scheme."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v10, 0x0

    :cond_2
    :goto_0
    return-object v10

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

    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_4

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: The scheme is not http or https."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

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

    :cond_6
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_7

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Host."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    const-string v17, "maps.google.com"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_9

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: The host belongs to Google Maps."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getPath()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_c

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_b

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: No Path."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v10, 0x0

    goto :goto_0

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

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getHostIndex(Ljava/lang/String;)I

    move-result v13

    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_e

    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v17, :cond_d

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  Warning: Cannot handle this host."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_e
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getYoutubePreferredActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->queryActivities(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_12

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/4 v4, 0x1

    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto/16 :goto_0

    :cond_12
    if-nez v4, :cond_2

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    const-string v18, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    return-void
.end method

.method public setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 19
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

    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

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

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    if-eqz p5, :cond_5

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v10, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v10}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    const/4 v14, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v14, v2, :cond_5

    const/4 v11, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    aget-object v3, v3, v14

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_1
    const/4 v11, 0x1

    :goto_1
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->SPECIFIC_SCHEME:[Ljava/lang/String;

    aget-object v3, v3, v14

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setPreferredActivity(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p2, :cond_7

    :cond_6
    :goto_2
    return-void

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mCategory:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v5, v0, [Landroid/content/ComponentName;

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v17, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->LOG_DEBUG:Z

    if-eqz v2, :cond_8

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

    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    aput-object v17, v5, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :catch_0
    move-exception v13

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_9
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentFilterList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

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

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :catch_1
    move-exception v13

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    const-string v3, " @@@@@  ERROR: set preferred activity failed!!!...2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-9)"

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public setUriString(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->mUri:Ljava/lang/String;

    :cond_0
    return-void
.end method
