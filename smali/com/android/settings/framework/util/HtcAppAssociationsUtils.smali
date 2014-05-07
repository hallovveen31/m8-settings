.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtils;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfEnableMethod;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfCategory;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.providers.settings.HtcPreferredAppProvider"

.field private static final CATEGORY_PROJECTION:[Ljava/lang/String; = null

.field private static final CUSTOMER_ATT_LOCATION_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_ATT_MAP_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_AUDIO_DEFAULT_APP:Ljava/lang/String; = "com.htc.video"

.field private static final CUSTOMER_LOCATION_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_MAIL_DEFAULT_APP:Ljava/lang/String; = "com.htc.android.mail"

.field private static final CUSTOMER_MAP_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_PACKAGENAME_BROWSER:Ljava/lang/String; = "com.htc.sense.browser"

.field private static final CUSTOMER_PACKAGENAME_GOOGLE_MAPS:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_PACKAGENAME_GOOGLE_YOUTUBE:Ljava/lang/String; = "com.google.android.youtube"

.field private static final CUSTOMER_PACKAGENAME_HTC_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field private static final CUSTOMER_PACKAGENAME_HTC_PEOPLE:Ljava/lang/String; = "com.htc.contacts"

.field private static final CUSTOMER_PACKAGENAME_HTC_STREAM_PLAYER:Ljava/lang/String; = "com.htc.streamplayer"

.field private static final CUSTOMER_PACKAGENAME_HTC_VIDEO_PLAYER:Ljava/lang/String; = "com.htc.video"

.field private static final CUSTOMER_PHONE_DEFAULT_APP:Ljava/lang/String; = "com.htc.contacts"

.field private static final CUSTOMER_STREAM_DEFAULT_APP:Ljava/lang/String; = "com.htc.video"

.field private static final CUSTOMER_VIDEO_DEFAULT_APP:Ljava/lang/String; = "com.htc.video"

.field private static final CUSTOMER_WEB_DEFAULT_APP:Ljava/lang/String; = "com.htc.sense.browser"

.field private static final CUSTOMER_YOUTUBE_DEFAULT_APP:Ljava/lang/String; = "com.google.android.youtube"

.field public static final FLAGS_CATEGORY_DEFAULT_ONLY:I = 0x10040

.field public static final FLAGS_NORMAL:I = 0x40

.field public static final INTENT_CATEGORY_PRIME:Ljava/lang/String; = "com.htc.category.prime"

.field public static final INVALID_ACTIVITY_NAMES:[Ljava/lang/String; = null

.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final NEW_REPLACE_PREFERRED_ACTIVITY_METHOD_NAME:Ljava/lang/String; = "replacePreferredActivityEx"

.field public static final QUERY_FLAGS:I = 0x10040

.field private static final SIE_CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_PrimePreferredApp"

.field private static final SIE_FUNCTION_NAME:Ljava/lang/String; = "ActivitySelection"

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-0)"

.field private static final VERSION:Ljava/lang/String; = "50.0"

.field private static sAllPreferredAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sLock2:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.internal.app.ChooserActivity"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v2

    const-string v1, "category"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "component_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppAssociationsUtils(2-0)"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 8

    const/4 v7, 0x1

    sget-boolean v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ check exist by 1."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7

    sget-boolean v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ check exist by 2."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkInvalidComponentName(Landroid/content/ComponentName;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->checkInvalidComponentName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkInvalidComponentName(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v5, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v8, " @@@@@ clearPackagePreferredActivities(): Enter. "

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@                                  :        package= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    const/4 v0, 0x0

    const/4 v8, 0x3

    if-ne p3, v8, :cond_3

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;-><init>()V

    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, p0, v6, p5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->checkPackageNameInQueryActivities(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz p4, :cond_1

    const-string v8, ""

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, p0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->getPreferredComponentName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const/4 v8, 0x3

    if-ne p3, v8, :cond_4

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1, p0, v6, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    const/4 v8, 0x1

    if-ne p2, v8, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    const/4 v7, 0x0

    const/16 v7, 0x9

    :goto_0
    const/4 v8, 0x1

    if-lt v7, v8, :cond_5

    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method public static compareIntentFilter(ILandroid/content/IntentFilter;)Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ compareIntentFilter(): no-op."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V
    .locals 12

    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@ getAllPreferredXXXXXByDB(): Enter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_1
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@ getAllPreferredXXXXXByDB(): Leave."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_6
    const-string v1, "category"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/high16 v1, 0x1

    if-ge v7, v1, :cond_7

    const-string v1, "component_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_2
    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@  ERROR: getAllPreferredXXXXXByDB(): failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_8
    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a
    throw v1
.end method

.method public static getAudioPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCategoryByDatabase(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ No implement!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getCategoryString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN CATEGORY"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Web category"

    goto :goto_0

    :pswitch_1
    const-string v0, "Mail category"

    goto :goto_0

    :pswitch_2
    const-string v0, "Phone category"

    goto :goto_0

    :pswitch_3
    const-string v0, "Map category"

    goto :goto_0

    :pswitch_4
    const-string v0, "Location category"

    goto :goto_0

    :pswitch_5
    const-string v0, "Stream category"

    goto :goto_0

    :pswitch_6
    const-string v0, "Audio category"

    goto :goto_0

    :pswitch_7
    const-string v0, "Video category"

    goto :goto_0

    :pswitch_8
    const-string v0, "YouTube category"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getIntentFilter(I)Landroid/content/IntentFilter;
    .locals 4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "geo"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v2, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "http://maps.google.com/maps?"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "https://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "https://maps.google.com/maps?"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v2, "rtsp"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_0
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_7
    :try_start_1
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getIntentFilterList(Ljava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;I)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v7

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "https"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "mailto"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "mailto"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "tel"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "geo"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "geo"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "http://maps.google.com/maps?"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?q="

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?q="

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "https://maps.google.com/maps?"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "rtsp"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "rtsp"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_0
    const-string v7, "audio/*"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_1
    const-string v7, "audio/*"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v7, "http"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :pswitch_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_2
    const-string v7, "video/*"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_3
    const-string v7, "video/*"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string v7, "http"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :pswitch_8
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentFilterList(Ljava/util/List;)Z

    move-result v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getIntentList(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geo:0,0?q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://maps.google.com/maps?q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://maps.google.com/maps?"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rtsp:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
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

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
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

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getLocationPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_2

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getPhonePreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 31

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getCategoryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      add="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v30, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v30

    const/16 v25, 0x0

    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v24 .. v24}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 1:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    monitor-exit v30

    :goto_0
    return-object v26

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    const/16 v17, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_14

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "maps.google.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      it contain maps.google.com in data scheme."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 2:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    :try_start_2
    monitor-exit v30

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v16

    :try_start_3
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    :try_start_4
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "youtube.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      it contain youtube.com in data."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 3:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v26

    :try_start_5
    monitor-exit v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_6
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v6, "youtube.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 4:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v26

    :try_start_7
    monitor-exit v30

    goto/16 :goto_0

    :catch_1
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    :try_start_8
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    const/16 v29, 0x0

    if-eqz v28, :cond_c

    invoke-virtual/range {v28 .. v28}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v29

    :cond_c
    if-eqz v29, :cond_5

    const-string v3, "audio"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 5:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v26

    :try_start_9
    monitor-exit v30

    goto/16 :goto_0

    :catch_2
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_e
    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_11

    :try_start_a
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    const/16 v29, 0x0

    if-eqz v28, :cond_f

    invoke-virtual/range {v28 .. v28}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v29

    :cond_f
    if-eqz v29, :cond_5

    const-string v3, "video"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_10

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 6:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v26

    :try_start_b
    monitor-exit v30

    goto/16 :goto_0

    :catch_3
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :cond_11
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    const/4 v15, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v15, 0x1

    :goto_3
    const/4 v3, 0x1

    if-ne v15, v3, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_12

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 8:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v26

    :try_start_d
    monitor-exit v30

    goto/16 :goto_0

    :cond_13
    const/4 v15, 0x0

    goto :goto_3

    :catch_4
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameBySIE(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_15

    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_16

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v26

    :cond_16
    if-eqz v26, :cond_17

    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static/range {v26 .. v26}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 9:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_17
    if-eqz v4, :cond_18

    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v3, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-object v7, v4

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity() 10:      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    move-result-object v26

    :try_start_f
    monitor-exit v30

    goto/16 :goto_0

    :catch_5
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      NO package."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, ""

    monitor-exit v30
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0
.end method

.method private static getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, ""

    :goto_0
    return-object v5

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    const-string v5, ""

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.htc.sense.browser"

    aput-object v5, v4, v7

    :cond_5
    :goto_2
    if-ne v0, v6, :cond_7

    if-eqz v4, :cond_7

    :try_start_0
    array-length v5, v4

    if-lez v5, :cond_7

    const/4 v2, 0x0

    :goto_3
    array-length v5, v4

    if-ge v2, v5, :cond_7

    aget-object v5, v4, v2

    invoke-static {p2, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :pswitch_1
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.htc.android.mail"

    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_2
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.htc.contacts"

    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_3
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_4
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_5
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_6
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_7
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_8
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    aput-object v5, v4, v7

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ ERROR: get preferred app failed by Customer!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    const-string v5, ""

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;
    .locals 16

    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ getPreferredXXXXXByDB(): Enter."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ getPreferredXXXXXByDB():      category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const-string v4, "category=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    const-string v6, "id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_1
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ getPreferredXXXXXByDB():      component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ getPreferredXXXXXByDB(): Leave."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v9

    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "component_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_2
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getPreferredXXXXXByDB(): failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_6
    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v2
.end method

.method private static getPreferredComponentNameBySIE(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieClassName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string v8, ""

    :goto_0
    return-object v8

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    const/4 v8, 0x1

    if-nez v8, :cond_8

    if-eqz v5, :cond_4

    :try_start_0
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v9, " @@@@@ ERROR: get preferred app failed by SIE!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    const-string v8, ""

    goto :goto_0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v9, " @@@@@ getPreferredXXXXXBySpecialCase(): Enter."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const-string v4, ""

    :goto_0
    return-object v4

    :cond_2
    :try_start_0
    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@                                    scheme="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@                                    mimetype="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v9, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v9

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const-string v8, "//market.android.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v8, v11, :cond_4

    const-string v8, "//play.google.com/store"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v8, v11, :cond_4

    const-string v8, "//play.google.com/redeem"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v8, v11, :cond_4

    const-string v8, "//play.google.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v8, v11, :cond_6

    :cond_4
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const v2, 0x90001

    :cond_5
    :goto_2
    if-eqz v6, :cond_12

    const-string v4, ""

    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ getPreferredXXXXXBySpecialCase() - 1: Leave.   category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", componentName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :catch_0
    move-exception v5

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    :try_start_3
    const-string v8, "vzw:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_7

    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const v2, 0x90003

    goto :goto_2

    :cond_7
    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_8

    const-string v8, "https:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_9

    :cond_8
    if-eqz p2, :cond_9

    const-string v8, "application/sdp"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_9

    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const v2, 0x90004

    goto/16 :goto_2

    :cond_9
    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_a

    const-string v8, "https:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_b

    :cond_a
    if-eqz p2, :cond_b

    const-string v8, "application/vnd.apple.mpegurl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_b

    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const v2, 0x90005

    goto/16 :goto_2

    :cond_b
    if-eqz p2, :cond_c

    const-string v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_d

    :cond_c
    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "tel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "mailto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "geo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "rtsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getSpecificActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getCategory()I

    move-result v2

    :cond_d
    if-eqz p2, :cond_e

    const-string v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_5

    :cond_e
    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_f

    const-string v8, "https:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_5

    :cond_f
    const-string v8, "maps.google.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setUriString(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getPreferredComponentName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_10

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ getPreferredXXXXXBySpecialCase() - 0: Leave.   componentName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_10
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_11
    :try_start_5
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;

    invoke-direct {v0, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getCategory()I

    move-result v2

    goto/16 :goto_2

    :cond_12
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v10, " @@@@@ getPreferredXXXXXBySpecialCase(): Leave."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    monitor-exit v9

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v10, " @@@@@  ERROR: getPreferredXXXXXBySpecialCase(): failed!!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, ""

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static getStreamingLinkPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYoutubePreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "ro.da1.enable"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "ro.da1.method"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ check enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    :goto_1
    return v4

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@  ERROR: Failed to check enable!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 17
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

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " @@@@@ queryActivities(): category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    const/4 v11, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_2
    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "HtcAppAssociationsUtils(2-0)"

    const-string v15, " @@@@@ after query activities:  size=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v13, :cond_b

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_a

    const/4 v1, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_8

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v14, v13, -0x1

    if-ge v2, v14, :cond_6

    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_c
    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_d

    const-string v14, "HtcAppAssociationsUtils(2-0)"

    const-string v15, " @@@@@ after query activities:  size=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    new-instance v12, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "HtcAppAssociationsUtils(2-0)"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " @@@@@ after query activities:  size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static queryActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v5, " @@@@@ queryActivities()...2: "

    invoke-static {v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x10040

    invoke-virtual {v1, v5, v6, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    new-instance v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ after query activities....2: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ ERROR: query activities....2 Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v4

    goto :goto_0
.end method

.method public static queryAudioActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryLocationActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMailActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMapActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryPhoneActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryStreamingLinkActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryVideoActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryWebActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryYoutubeActivities(Landroid/content/Context;)Ljava/util/List;
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

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static readSieClassName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, " @@@@@ readSieClassName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CATEGORY_WEB_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "CATEGORY_MAIL_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "CATEGORY_PHONE_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "CATEGORY_MAP_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "CATEGORY_STREAM_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const-string v0, "CATEGORY_YOUTUBE_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ readSieData() Enter. - key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v2, "content://customization_settings/SettingTable/application_PrimePreferredApp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    goto :goto_0

    :cond_2
    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    goto :goto_0

    :cond_3
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    const/4 v2, 0x0

    array-length v3, v6

    invoke-virtual {v12, v6, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    const-string v2, "ActivitySelection"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: readSieData(): read data failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    move-object v2, v13

    goto :goto_0
.end method

.method public static readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, " @@@@@ readSiePackageName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CATEGORY_WEB_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "CATEGORY_MAIL_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "CATEGORY_PHONE_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "CATEGORY_MAP_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "CATEGORY_STREAM_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const-string v0, "CATEGORY_YOUTUBE_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static refreshCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p2, p3, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    :goto_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    if-nez v0, :cond_2

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v1, v2, p3, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    invoke-static {p0, v1, p2, p3, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static resetPackagePreferredActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    const-string v4, ""

    invoke-static {p0, v6, v4, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    :goto_1
    if-lt v1, v6, :cond_1

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, ""

    invoke-static {p0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "IZ)V"
        }
    .end annotation

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@@@@ setPreferredActivity():      category="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getCategoryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@@@@ setPreferredActivity():      clear="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v26, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v21, 0x0

    :try_start_1
    const-string v7, ""

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@@@@ setPreferredActivity():      old pref package="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    if-eqz v22, :cond_a

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    const/4 v6, 0x1

    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    const/4 v12, 0x0

    if-nez p1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    :goto_1
    if-eqz p6, :cond_4

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    move-object/from16 v12, p2

    :cond_5
    :goto_2
    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-ne v6, v3, :cond_7

    :cond_6
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    :cond_7
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    new-instance v20, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;-><init>()V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_4
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v5, " @@@@@  setPreferredActivity(): Leave."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    return-void

    :cond_a
    const/4 v6, 0x0

    goto :goto_0

    :cond_b
    move-object/from16 v4, p1

    goto :goto_1

    :cond_c
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_5

    move-object/from16 v12, p2

    goto :goto_2

    :cond_d
    move-object/from16 v12, p2

    goto :goto_2

    :cond_e
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v16

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v5, " @@@@@  setPreferredActivity(): FAIL!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_f
    const/16 v3, 0x9

    move/from16 v0, p3

    if-ne v0, v3, :cond_10

    :try_start_4
    new-instance v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;

    invoke-direct {v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;-><init>()V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_4

    :cond_10
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_11
    if-nez v21, :cond_13

    const/4 v3, 0x1

    new-array v11, v3, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v12, v11, v3

    :cond_12
    :goto_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_16

    monitor-exit v26

    goto :goto_6

    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x2

    new-array v11, v3, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v21, v11, v3

    const/4 v3, 0x1

    aput-object v12, v11, v3

    goto :goto_7

    :cond_14
    const/4 v3, 0x1

    new-array v11, v3, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v12, v11, v3

    goto :goto_7

    :cond_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v11, v0, [Landroid/content/ComponentName;

    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v23, Landroid/content/ComponentName;

    iget-object v3, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v11, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    const/16 v17, 0x0

    :goto_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentFilter;

    const/high16 v10, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_9
.end method

.method public static setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;-><init>()V

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setPreferredActivityWhenBootCompleted(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v4, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    :goto_0
    if-lt v0, v4, :cond_2

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 20

    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ setPreferredXXXXXByDB(): Enter."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ setPreferredXXXXXByDB():      category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@ setPreferredXXXXXByDB():      component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_5

    const-string v14, ""

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const-string v4, "category=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v16, "%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const-string v6, "id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "category"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "component_name"

    invoke-virtual {v12, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v7, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_2
    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ setPreferredXXXXXByDB(): Leave."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v7

    :cond_5
    move-object/from16 v14, p2

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "component_name"

    invoke-virtual {v12, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v12, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: setPreferredXXXXXByDB(): failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_9
    throw v2
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public static updatePreferredActivity(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ updatePreferredActivity(): no-op."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updatePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 14

    const/4 v13, 0x1

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ ERROR: updatePreferredActivity(): the parameters is null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " @@@@@ updatePreferredActivity(): preferred PackageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    :goto_0
    if-lt v1, v13, :cond_1

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    :try_start_0
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-ne v10, v13, :cond_6

    const/4 v0, 0x1

    :cond_5
    if-ne v0, v13, :cond_3

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " @@@@@ updatePreferredActivity(): category="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    :try_start_1
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): update...1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    invoke-static {p0, v7, p1, v1, v10}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@  updatePreferredActivity(): FAIL!!! 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@  updatePreferredActivity(): FAIL!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    :try_start_2
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): don\'t update."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_8
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): update...2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, p1, v1, v13}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V

    goto/16 :goto_1
.end method
