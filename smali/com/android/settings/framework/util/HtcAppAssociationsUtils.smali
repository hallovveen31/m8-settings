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

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    .line 166
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.internal.app.ChooserActivity"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    .line 251
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

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2305
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2306
    const-string v0, "HtcAppAssociationsUtils(2-0)"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_0
    return-void
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "context"
    .parameter "category"
    .parameter "component"

    .prologue
    const/4 v7, 0x1

    .line 3289
    sget-boolean v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v5, :cond_0

    .line 3290
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ check exist by 1."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_0
    const/4 v1, 0x0

    .line 3295
    .local v1, bResult:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 3297
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3298
    :cond_1
    const/4 v1, 0x0

    .line 3315
    :cond_2
    :goto_0
    return v1

    .line 3301
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 3303
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3304
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3306
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    .line 3308
    const/4 v1, 0x1

    .line 3310
    goto :goto_0

    .line 3303
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "preferredPackageName"

    .prologue
    .line 3322
    sget-boolean v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v5, :cond_0

    .line 3323
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ check exist by 2."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_0
    const/4 v1, 0x0

    .line 3328
    .local v1, bResult:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 3330
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3331
    :cond_1
    const/4 v1, 0x0

    .line 3347
    :cond_2
    :goto_0
    return v1

    .line 3334
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 3336
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3337
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3339
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 3340
    const/4 v1, 0x1

    .line 3342
    goto :goto_0

    .line 3336
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter "preferredPackageName"
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

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3353
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 3374
    :cond_0
    :goto_0
    return v1

    .line 3357
    :cond_1
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3361
    const/4 v1, 0x0

    .line 3362
    .local v1, bResult:Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 3364
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 3365
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3367
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 3368
    const/4 v1, 0x1

    .line 3370
    goto :goto_0

    .line 3364
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkInvalidComponentName(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "component"

    .prologue
    .line 3872
    if-nez p0, :cond_0

    .line 3873
    const/4 v0, 0x1

    .line 3876
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
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3880
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    :cond_0
    move v3, v4

    .line 3894
    :cond_1
    :goto_0
    return v3

    .line 3884
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3886
    .local v2, tempComponmentNameLowerCase:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 3887
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->INVALID_ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3889
    .local v1, invalidNameLowerCase:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v5, v3, :cond_1

    .line 3886
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #invalidNameLowerCase:Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 3894
    goto :goto_0
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1829
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1831
    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "flag"

    .prologue
    .line 1837
    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 1840
    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "flag"
    .parameter "category"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 1849
    const-string v8, " @@@@@ clearPackagePreferredActivities(): Enter. "

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 1850
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

    .line 1867
    const/4 v1, 0x0

    .line 1868
    .local v1, callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    const/4 v6, 0x0

    .line 1869
    .local v6, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, ""

    .line 1870
    .local v3, callButtonPreferredComponentName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1872
    .local v0, bResetCallButton:Z
    const/4 v8, 0x3

    if-ne p3, v8, :cond_3

    .line 1874
    if-nez v1, :cond_0

    .line 1876
    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;

    .end local v1           #callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;-><init>()V

    .line 1879
    .restart local v1       #callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 1880
    invoke-virtual {v1, p0, v6, p5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->checkPackageNameInQueryActivities(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 1882
    if-eqz p4, :cond_1

    const-string v8, ""

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1883
    :cond_1
    const/4 v0, 0x1

    .line 1886
    :cond_2
    invoke-virtual {v1, p0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->getPreferredComponentName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1892
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1909
    const/4 v8, 0x3

    if-ne p3, v8, :cond_4

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    .line 1911
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1914
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1917
    .local v2, callButtonPreferredComponent:Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1919
    invoke-virtual {v1, p0, v6, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1928
    .end local v2           #callButtonPreferredComponent:Landroid/content/ComponentName;
    :cond_4
    const/4 v8, 0x1

    if-ne p2, v8, :cond_6

    .line 1977
    :cond_5
    return-void

    .line 1933
    :cond_6
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 1935
    const/4 v7, 0x0

    .line 1937
    .local v7, tempCategory:I
    const/16 v7, 0x9

    .line 1938
    :goto_0
    const/4 v8, 0x1

    if-lt v7, v8, :cond_5

    .line 1942
    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1944
    .local v5, componmentName:Ljava/lang/String;
    if-eqz v5, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1946
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1949
    .local v4, component:Landroid/content/ComponentName;
    if-eqz p1, :cond_7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1952
    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1939
    .end local v4           #component:Landroid/content/ComponentName;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method public static compareIntentFilter(ILandroid/content/IntentFilter;)Z
    .locals 2
    .parameter "category"
    .parameter "intentFilter"

    .prologue
    .line 2569
    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2570
    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ compareIntentFilter(): no-op."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 3414
    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v1, :cond_0

    .line 3415
    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@ getAllPreferredXXXXXByDB(): Enter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_0
    const/4 v6, 0x0

    .line 3422
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 3425
    .local v0, cpc:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 3427
    .local v10, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 3428
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3434
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 3435
    :cond_1
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    :goto_0
    if-eqz v6, :cond_2

    .line 3472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3473
    const/4 v6, 0x0

    .line 3476
    :cond_2
    if-eqz v0, :cond_3

    .line 3477
    .end local v10           #cr:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3481
    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v1, :cond_4

    .line 3482
    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@ getAllPreferredXXXXXByDB(): Leave."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_4
    return-void

    .line 3439
    .restart local v10       #cr:Landroid/content/ContentResolver;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3445
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3449
    :cond_6
    const-string v1, "category"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3450
    .local v8, columnIdIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3452
    .local v7, category:I
    const/high16 v1, 0x1

    if-ge v7, v1, :cond_7

    .line 3454
    const-string v1, "component_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3455
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3457
    .local v9, componentName:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    .end local v9           #componentName:Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 3463
    .end local v7           #category:I
    .end local v8           #columnIdIndex:I
    .end local v10           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 3464
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcAppAssociationsUtils(2-0)"

    const-string v2, " @@@@@  ERROR: getAllPreferredXXXXXByDB(): failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    const-string v1, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 3468
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3471
    .restart local v9       #componentName:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 3472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3473
    const/4 v6, 0x0

    .line 3476
    :cond_8
    if-eqz v0, :cond_3

    goto :goto_1

    .line 3471
    .end local v9           #componentName:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_9

    .line 3472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3473
    const/4 v6, 0x0

    .line 3476
    :cond_9
    if-eqz v0, :cond_a

    .line 3477
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3471
    :cond_a
    throw v1
.end method

.method public static getAudioPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1232
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCategoryByDatabase(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 3554
    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 3555
    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ No implement!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getCategoryString(I)Ljava/lang/String;
    .locals 1
    .parameter "category"

    .prologue
    .line 3205
    packed-switch p0, :pswitch_data_0

    .line 3234
    const-string v0, "UNKNOWN CATEGORY"

    :goto_0
    return-object v0

    .line 3207
    :pswitch_0
    const-string v0, "Web category"

    goto :goto_0

    .line 3210
    :pswitch_1
    const-string v0, "Mail category"

    goto :goto_0

    .line 3213
    :pswitch_2
    const-string v0, "Phone category"

    goto :goto_0

    .line 3216
    :pswitch_3
    const-string v0, "Map category"

    goto :goto_0

    .line 3219
    :pswitch_4
    const-string v0, "Location category"

    goto :goto_0

    .line 3222
    :pswitch_5
    const-string v0, "Stream category"

    goto :goto_0

    .line 3225
    :pswitch_6
    const-string v0, "Audio category"

    goto :goto_0

    .line 3228
    :pswitch_7
    const-string v0, "Video category"

    goto :goto_0

    .line 3231
    :pswitch_8
    const-string v0, "YouTube category"

    goto :goto_0

    .line 3205
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
    .parameter "category"

    .prologue
    .line 2475
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2478
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2479
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2481
    packed-switch p0, :pswitch_data_0

    .line 2560
    const/4 v1, 0x0

    .line 2564
    :goto_0
    return-object v1

    .line 2483
    :pswitch_0
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2484
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2485
    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2494
    :pswitch_1
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2496
    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2505
    :pswitch_2
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2508
    const-string v2, "tel"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2512
    :pswitch_3
    const-string v2, "geo"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2516
    :pswitch_4
    const-string v2, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2517
    const-string v2, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2518
    const-string v2, "http://maps.google.com/maps?"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2519
    const-string v2, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2520
    const-string v2, "https://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2521
    const-string v2, "https://maps.google.com/maps?"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2530
    :pswitch_5
    const-string v2, "rtsp"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2536
    :pswitch_6
    :try_start_0
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2537
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2538
    :catch_0
    move-exception v0

    .line 2539
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2549
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_7
    :try_start_1
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2550
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2551
    :catch_1
    move-exception v0

    .line 2552
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2481
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
    .parameter
    .parameter "category"
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
    const/4 v7, 0x0

    .line 2877
    if-nez p0, :cond_0

    .line 3200
    :goto_0
    return v7

    .line 2887
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2890
    :pswitch_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2892
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2893
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2894
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2895
    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2896
    const-string v7, "https"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2898
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 2904
    .end local v1           #filter1:Landroid/content/IntentFilter;
    :pswitch_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2906
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2907
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2908
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2909
    const-string v7, "mailto"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2911
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2913
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2915
    .local v2, filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2916
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2917
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2918
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2919
    const-string v7, "mailto"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2921
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2927
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2929
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2930
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2931
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2932
    const-string v7, "tel"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2934
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2936
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2938
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2939
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2940
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2941
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2942
    const-string v7, "tel"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2944
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2946
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2948
    .local v3, filter3:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2949
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2950
    const-string v7, "tel"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2952
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2954
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2956
    .local v4, filter4:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2957
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2958
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2959
    const-string v7, "tel"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2961
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2963
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2965
    .local v5, filter5:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2966
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2967
    const-string v7, "tel"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2969
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2971
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2973
    .local v6, filter6:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2974
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2975
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2976
    const-string v7, "tel"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2978
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2984
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    .end local v3           #filter3:Landroid/content/IntentFilter;
    .end local v4           #filter4:Landroid/content/IntentFilter;
    .end local v5           #filter5:Landroid/content/IntentFilter;
    .end local v6           #filter6:Landroid/content/IntentFilter;
    :pswitch_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2986
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2987
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2988
    const-string v7, "geo"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2990
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2992
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2994
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2995
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2996
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2997
    const-string v7, "geo"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2999
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3005
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3007
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3008
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3009
    const-string v7, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3010
    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3011
    const-string v7, "http://maps.google.com/maps?"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3013
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3015
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3017
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3018
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3019
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3020
    const-string v7, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3021
    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3022
    const-string v7, "http://maps.google.com/maps?"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3024
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3026
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3028
    .restart local v3       #filter3:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3029
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3030
    const-string v7, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3031
    const-string v7, "https://maps.google.com/maps?q="

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3032
    const-string v7, "https://maps.google.com/maps?"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3034
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3036
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 3038
    .restart local v4       #filter4:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3039
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3040
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3041
    const-string v7, "https://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3042
    const-string v7, "https://maps.google.com/maps?q="

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3043
    const-string v7, "https://maps.google.com/maps?"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3045
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3056
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    .end local v3           #filter3:Landroid/content/IntentFilter;
    .end local v4           #filter4:Landroid/content/IntentFilter;
    :pswitch_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3058
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3059
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3060
    const-string v7, "rtsp"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3062
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3064
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3066
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3067
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3068
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3069
    const-string v7, "rtsp"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3071
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3077
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3079
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3080
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3083
    :try_start_0
    const-string v7, "audio/*"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 3084
    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3091
    :goto_2
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3093
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3095
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3096
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3097
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3100
    :try_start_1
    const-string v7, "audio/*"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 3101
    const-string v7, "http"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3108
    :goto_3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3085
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 3086
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3102
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    :catch_1
    move-exception v0

    .line 3103
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3114
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3116
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3117
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3120
    :try_start_2
    const-string v7, "video/*"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 3121
    const-string v7, "http"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3128
    :goto_4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3130
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3132
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3133
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3134
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3137
    :try_start_3
    const-string v7, "video/*"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 3138
    const-string v7, "http"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3145
    :goto_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3122
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_2
    move-exception v0

    .line 3123
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 3139
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    :catch_3
    move-exception v0

    .line 3140
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    const-string v8, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    const-string v7, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 3192
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_8
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentFilterList(Ljava/util/List;)Z

    move-result v7

    goto/16 :goto_0

    .line 2887
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
    .parameter
    .parameter "category"
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
    const/4 v0, 0x0

    .line 2317
    if-nez p0, :cond_0

    .line 2469
    :goto_0
    return v0

    .line 2321
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2323
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

    .line 2329
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

    .line 2469
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2337
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

    .line 2342
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

    .line 2349
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

    .line 2368
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

    .line 2375
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

    .line 2382
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

    .line 2386
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

    .line 2390
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

    .line 2395
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

    .line 2399
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

    .line 2403
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

    .line 2424
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

    .line 2431
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

    .line 2438
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

    .line 2461
    :pswitch_8
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getIntentList(Ljava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    .line 2321
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
    .parameter "context"

    .prologue
    .line 1222
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1207
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1217
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter
    .parameter "packageName"
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

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 3380
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 3408
    :cond_0
    :goto_0
    return-object v1

    .line 3384
    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3389
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 3390
    .local v4, size:I
    const/4 v1, 0x0

    .line 3392
    .local v1, component:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 3393
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3395
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 3398
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #component:Landroid/content/ComponentName;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 3400
    .end local v1           #component:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 3401
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 3404
    .restart local v1       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 3392
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getPhonePreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1212
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "category"
    .parameter "reAdd"

    .prologue
    .line 534
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .parameter "context"
    .parameter "category"
    .parameter "reAdd"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 546
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

    .line 547
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

    .line 550
    sget-object v30, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v30

    .line 552
    const/16 v25, 0x0

    .line 553
    .local v25, preferredPackageName:Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 561
    .local v4, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 564
    .local v24, preferredComponentName:Ljava/lang/String;
    if-eqz v24, :cond_2

    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 571
    invoke-static/range {v24 .. v24}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    .line 574
    .local v23, preferredComponent:Landroid/content/ComponentName;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 576
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 579
    .local v5, tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_2

    .line 580
    const/4 v3, 0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 583
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 589
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

    .line 593
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    monitor-exit v30

    .line 1035
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v23           #preferredComponent:Landroid/content/ComponentName;
    :goto_0
    return-object v26

    .line 610
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 612
    .local v20, pm:Landroid/content/pm/PackageManager;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v21, pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v22, pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 619
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v19, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    .line 622
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 624
    .local v18, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    .local v17, index:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    .local v27, size:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_14

    .line 665
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 675
    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_5

    .line 677
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

    .line 679
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_3

    .line 680
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      it contain maps.google.com in data scheme."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 685
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 688
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 690
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

    .line 691
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 697
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

    .line 701
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    :try_start_2
    monitor-exit v30

    goto/16 :goto_0

    .line 1036
    .end local v4           #queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v17           #index:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v20           #pm:Landroid/content/pm/PackageManager;
    .end local v21           #pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v22           #pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v24           #preferredComponentName:Ljava/lang/String;
    .end local v27           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 706
    .restart local v4       #queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17       #index:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v20       #pm:Landroid/content/pm/PackageManager;
    .restart local v21       #pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v22       #pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v24       #preferredComponentName:Ljava/lang/String;
    .restart local v27       #size:I
    :catch_0
    move-exception v16

    .line 707
    .local v16, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    .end local v16           #e:Ljava/lang/Exception;
    :cond_5
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 711
    :cond_6
    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 713
    :try_start_4
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_5

    .line 715
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

    .line 717
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_7

    .line 718
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      it contain youtube.com in data."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_7
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 723
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 726
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 728
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

    .line 729
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 735
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

    .line 739
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

    .line 743
    .end local v5           #tempComponent:Landroid/content/ComponentName;
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

    .line 745
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v13

    .line 748
    .local v13, ae:Landroid/content/IntentFilter$AuthorityEntry;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v6, "youtube.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 749
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 751
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 755
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 757
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

    .line 758
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 764
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

    .line 768
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v26

    :try_start_7
    monitor-exit v30

    goto/16 :goto_0

    .line 774
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v13           #ae:Landroid/content/IntentFilter$AuthorityEntry;
    :catch_1
    move-exception v16

    .line 775
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 779
    .end local v16           #e:Ljava/lang/Exception;
    :cond_b
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 784
    :try_start_8
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    .line 785
    .local v28, tempFilter:Landroid/content/IntentFilter;
    const/16 v29, 0x0

    .line 787
    .local v29, tempType:Ljava/lang/String;
    if-eqz v28, :cond_c

    .line 788
    invoke-virtual/range {v28 .. v28}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_c

    .line 789
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v29

    .line 794
    :cond_c
    if-eqz v29, :cond_5

    const-string v3, "audio"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 797
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 799
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 802
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 804
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

    .line 805
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 811
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

    .line 815
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v26

    :try_start_9
    monitor-exit v30

    goto/16 :goto_0

    .line 819
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v28           #tempFilter:Landroid/content/IntentFilter;
    .end local v29           #tempType:Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 820
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 824
    .end local v16           #e:Ljava/lang/Exception;
    :cond_e
    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 829
    :try_start_a
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    .line 830
    .restart local v28       #tempFilter:Landroid/content/IntentFilter;
    const/16 v29, 0x0

    .line 832
    .restart local v29       #tempType:Ljava/lang/String;
    if-eqz v28, :cond_f

    .line 833
    invoke-virtual/range {v28 .. v28}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_f

    .line 834
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v29

    .line 839
    :cond_f
    if-eqz v29, :cond_5

    const-string v3, "video"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 842
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 844
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 847
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 849
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

    .line 850
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 856
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

    .line 860
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v26

    :try_start_b
    monitor-exit v30

    goto/16 :goto_0

    .line 864
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v28           #tempFilter:Landroid/content/IntentFilter;
    .end local v29           #tempType:Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 865
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 888
    .end local v16           #e:Ljava/lang/Exception;
    :cond_11
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v18, v0

    .line 910
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/IntentFilter;

    .line 911
    .restart local v28       #tempFilter:Landroid/content/IntentFilter;
    const/4 v15, 0x1

    .line 913
    .local v15, bMatch:Z
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

    .line 919
    const/4 v15, 0x1

    .line 926
    :goto_3
    const/4 v3, 0x1

    if-ne v15, v3, :cond_5

    .line 928
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 930
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 933
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 935
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

    .line 936
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 942
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

    .line 946
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v26

    :try_start_d
    monitor-exit v30

    goto/16 :goto_0

    .line 923
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    :cond_13
    const/4 v15, 0x0

    goto :goto_3

    .line 950
    .end local v15           #bMatch:Z
    .end local v28           #tempFilter:Landroid/content/IntentFilter;
    :catch_4
    move-exception v16

    .line 951
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 972
    .end local v16           #e:Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameBySIE(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v26

    .line 974
    .local v26, sieComponentName:Ljava/lang/String;
    if-eqz v26, :cond_15

    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_16

    .line 975
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v26

    .line 978
    :cond_16
    if-eqz v26, :cond_17

    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 979
    invoke-static/range {v26 .. v26}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 981
    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 985
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

    .line 989
    monitor-exit v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 1004
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    :cond_17
    if-eqz v4, :cond_18

    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 1006
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1007
    .local v14, ai:Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, component:Landroid/content/ComponentName;
    move-object/from16 v6, p0

    move-object v7, v4

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1013
    invoke-static/range {v6 .. v12}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 1017
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

    .line 1022
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    move-result-object v26

    .end local v26           #sieComponentName:Ljava/lang/String;
    :try_start_f
    monitor-exit v30

    goto/16 :goto_0

    .line 1024
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v14           #ai:Landroid/content/pm/ActivityInfo;
    .restart local v26       #sieComponentName:Ljava/lang/String;
    :catch_5
    move-exception v16

    .line 1025
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1031
    .end local v16           #e:Ljava/lang/Exception;
    :cond_18
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ getPreferredActivity():      NO package."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v26, ""

    .end local v26           #sieComponentName:Ljava/lang/String;
    monitor-exit v30
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0
.end method

.method private static getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "category"
    .parameter
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

    .prologue
    .local p2, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1102
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1103
    :cond_0
    const-string v5, ""

    .line 1196
    :goto_0
    return-object v5

    .line 1106
    :cond_1
    const/4 v0, 0x0

    .line 1107
    .local v0, bHandle:Z
    const/4 v4, 0x0

    .line 1110
    .local v4, tempPackageNames:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1111
    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    .line 1112
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    .line 1113
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 1127
    :goto_1
    if-nez v0, :cond_5

    .line 1128
    const/4 v0, 0x1

    .line 1130
    packed-switch p1, :pswitch_data_0

    .line 1171
    const/4 v0, 0x0

    .line 1173
    const-string v5, ""

    goto :goto_0

    .line 1115
    :cond_2
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    .line 1116
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    .line 1117
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    const/4 v0, 0x1

    goto :goto_1

    .line 1120
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1124
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1132
    :pswitch_0
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.sense.browser"

    aput-object v5, v4, v7

    .line 1177
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    :cond_5
    :goto_2
    if-ne v0, v6, :cond_7

    .line 1179
    if-eqz v4, :cond_7

    :try_start_0
    array-length v5, v4

    if-lez v5, :cond_7

    .line 1180
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 1181
    aget-object v5, v4, v2

    invoke-static {p2, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1184
    .local v3, tempComponent:Landroid/content/ComponentName;
    if-eqz v3, :cond_6

    .line 1185
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1136
    .end local v2           #i:I
    .end local v3           #tempComponent:Landroid/content/ComponentName;
    :pswitch_1
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.android.mail"

    aput-object v5, v4, v7

    .line 1137
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1140
    :pswitch_2
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.contacts"

    aput-object v5, v4, v7

    .line 1141
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1144
    :pswitch_3
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    .line 1145
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1148
    :pswitch_4
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v4, v7

    .line 1149
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1152
    :pswitch_5
    new-array v4, v8, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    .line 1154
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1157
    :pswitch_6
    new-array v4, v8, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    .line 1159
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1162
    :pswitch_7
    new-array v4, v8, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.htc.streamplayer"

    aput-object v5, v4, v7

    const-string v5, "com.htc.video"

    aput-object v5, v4, v6

    .line 1164
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1167
    :pswitch_8
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #tempPackageNames:[Ljava/lang/String;
    const-string v5, "com.google.android.youtube"

    aput-object v5, v4, v7

    .line 1168
    .restart local v4       #tempPackageNames:[Ljava/lang/String;
    goto :goto_2

    .line 1180
    .restart local v2       #i:I
    .restart local v3       #tempComponent:Landroid/content/ComponentName;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1189
    .end local v2           #i:I
    .end local v3           #tempComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1190
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ ERROR: get preferred app failed by Customer!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1196
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    const-string v5, ""

    goto/16 :goto_0

    .line 1130
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
    .parameter "context"
    .parameter "category"

    .prologue
    .line 3490
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    .line 3491
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ getPreferredXXXXXByDB(): Enter."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
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

    .line 3496
    :cond_0
    const/4 v7, 0x0

    .line 3497
    .local v7, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 3500
    .local v1, cpc:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 3502
    .local v10, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 3503
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

    .line 3509
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_5

    .line 3510
    :cond_1
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3532
    .local v9, componentName:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_2

    .line 3533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3534
    const/4 v7, 0x0

    .line 3537
    :cond_2
    if-eqz v1, :cond_3

    .line 3538
    .end local v10           #cr:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 3542
    :cond_3
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_4

    .line 3543
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

    .line 3544
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ getPreferredXXXXXByDB(): Leave."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_4
    return-object v9

    .line 3514
    .end local v9           #componentName:Ljava/lang/String;
    .restart local v10       #cr:Landroid/content/ContentResolver;
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3520
    const-string v2, "component_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3521
    .local v8, columnIdIndex:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .restart local v9       #componentName:Ljava/lang/String;
    goto :goto_0

    .line 3524
    .end local v8           #columnIdIndex:I
    .end local v9           #componentName:Ljava/lang/String;
    .end local v10           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 3525
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: getPreferredXXXXXByDB(): failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 3529
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3532
    .restart local v9       #componentName:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 3533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3534
    const/4 v7, 0x0

    .line 3537
    :cond_6
    if-eqz v1, :cond_3

    goto :goto_1

    .line 3532
    .end local v9           #componentName:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_7

    .line 3533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3534
    const/4 v7, 0x0

    .line 3537
    :cond_7
    if-eqz v1, :cond_8

    .line 3538
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 3532
    :cond_8
    throw v2
.end method

.method private static getPreferredComponentNameBySIE(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "category"
    .parameter
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

    .prologue
    .line 1045
    .local p2, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 1047
    .local v1, bHandle:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 1048
    .local v7, tempPackageName:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieClassName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, tempClassName:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1051
    :cond_0
    const-string v8, ""

    .line 1095
    :goto_0
    return-object v8

    .line 1054
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1055
    :cond_2
    const/4 v1, 0x0

    .line 1058
    :cond_3
    const/4 v8, 0x1

    if-nez v8, :cond_8

    .line 1060
    if-eqz v5, :cond_4

    :try_start_0
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1061
    :cond_4
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1064
    .local v6, tempComponent:Landroid/content/ComponentName;
    if-eqz v6, :cond_8

    .line 1065
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1069
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 1071
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 1072
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1074
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1075
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1071
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1081
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1084
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    if-eqz v6, :cond_8

    .line 1085
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1088
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 1089
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v9, " @@@@@ ERROR: get preferred app failed by SIE!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1095
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    const-string v8, ""

    goto :goto_0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "urlData"

    .prologue
    .line 3688
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "urlData"
    .parameter "dataType"

    .prologue
    const/4 v11, 0x1

    .line 3692
    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_0

    .line 3693
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v9, " @@@@@ getPreferredXXXXXBySpecialCase(): Enter."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    :cond_0
    if-eqz p1, :cond_1

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3697
    :cond_1
    const-string v4, ""

    .line 3865
    :goto_0
    return-object v4

    .line 3701
    :cond_2
    :try_start_0
    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_3

    .line 3703
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

    .line 3704
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

    .line 3711
    :cond_3
    :goto_1
    sget-object v9, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v9

    .line 3714
    const/4 v6, 0x0

    .line 3715
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 3716
    .local v7, urlDataLowerCase:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3719
    .local v2, category:I
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

    .line 3723
    :cond_4
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;-><init>(Ljava/lang/String;)V

    .line 3725
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3726
    const v2, 0x90001

    .line 3836
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;
    :cond_5
    :goto_2
    if-eqz v6, :cond_12

    .line 3837
    const-string v4, ""

    .line 3838
    .local v4, componentName:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 3844
    invoke-static {p0, v2, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 3847
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

    .line 3850
    :try_start_2
    monitor-exit v9

    goto/16 :goto_0

    .line 3868
    .end local v2           #category:I
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v4           #componentName:Ljava/lang/String;
    .end local v7           #urlDataLowerCase:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 3706
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    .line 3707
    .local v5, e:Ljava/lang/Exception;
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 3728
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #category:I
    .restart local v6       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v7       #urlDataLowerCase:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v8, "vzw:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_7

    .line 3729
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;-><init>()V

    .line 3731
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3732
    const v2, 0x90003

    .line 3733
    goto :goto_2

    .line 3734
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
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

    .line 3737
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;-><init>()V

    .line 3739
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3740
    const v2, 0x90004

    .line 3741
    goto/16 :goto_2

    .line 3742
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;
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

    .line 3745
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;-><init>()V

    .line 3748
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3749
    const v2, 0x90005

    .line 3750
    goto/16 :goto_2

    .line 3755
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;
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

    .line 3767
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    .line 3770
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
    invoke-virtual {v0, p0, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getSpecificActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3771
    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->getCategory()I

    move-result v2

    .line 3780
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
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

    .line 3791
    :cond_f
    const-string v8, "maps.google.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3798
    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;-><init>()V

    .line 3800
    .local v1, appAssoc1:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;
    invoke-virtual {v1, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setUriString(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->getPreferredComponentName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3804
    .restart local v4       #componentName:Ljava/lang/String;
    if-eqz v4, :cond_11

    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 3805
    sget-boolean v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v8, :cond_10

    .line 3806
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

    .line 3809
    :cond_10
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3821
    :cond_11
    :try_start_5
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;

    invoke-direct {v0, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;-><init>(Ljava/lang/String;)V

    .line 3824
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 3825
    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->getCategory()I

    move-result v2

    goto/16 :goto_2

    .line 3855
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;
    .end local v1           #appAssoc1:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;
    .end local v4           #componentName:Ljava/lang/String;
    :cond_12
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v10, " @@@@@ getPreferredXXXXXBySpecialCase(): Leave."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    const-string v4, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    monitor-exit v9

    goto/16 :goto_0

    .line 3860
    .end local v2           #category:I
    .end local v7           #urlDataLowerCase:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 3861
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    const-string v10, " @@@@@  ERROR: getPreferredXXXXXBySpecialCase(): failed!!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    const-string v8, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3865
    const-string v4, ""

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static getStreamingLinkPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1227
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1237
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1202
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYoutubePreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1242
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 3241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 3247
    const/4 v1, 0x0

    .line 3248
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 3249
    .local v0, bEnableAppAssoc:Z
    const/4 v3, 0x0

    .line 3252
    .local v3, nEnableMethod:I
    :try_start_0
    const-string v5, "ro.da1.enable"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3253
    const-string v5, "ro.da1.method"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3256
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 3257
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 3258
    const/4 v1, 0x0

    .line 3269
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

    .line 3279
    :goto_1
    return v4

    .line 3261
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 3265
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3274
    :catch_0
    move-exception v2

    .line 3275
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@  ERROR: Failed to check enable!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 17
    .parameter "context"
    .parameter "category"
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
    .line 304
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

    .line 306
    const/4 v11, 0x0

    .line 307
    .local v11, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v3, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 310
    .local v10, pm:Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 311
    const/4 v7, 0x0

    .line 477
    :cond_0
    :goto_0
    return-object v7

    .line 314
    :cond_1
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 316
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 317
    :cond_2
    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_3

    .line 318
    const-string v14, "HtcAppAssociationsUtils(2-0)"

    const-string v15, " @@@@@ after query activities:  size=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 332
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v7, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 335
    .local v13, size:I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 336
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_5
    const/4 v2, 0x1

    .line 340
    .local v2, i:I
    :goto_1
    if-ge v2, v13, :cond_b

    .line 343
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 345
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 341
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_7
    const/4 v9, 0x0

    .line 358
    .local v9, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 359
    .local v8, outputPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 361
    .local v1, bFind:Z
    const/4 v4, 0x0

    .line 362
    .local v4, j:I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_a

    .line 365
    const/4 v1, 0x0

    .line 366
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 368
    const/4 v5, 0x0

    .line 369
    .local v5, k:I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 372
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 374
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 392
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 370
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 399
    .end local v5           #k:I
    :cond_a
    add-int/lit8 v14, v13, -0x1

    if-ge v2, v14, :cond_6

    .line 401
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 402
    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 453
    .end local v1           #bFind:Z
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #outputPackageName:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 454
    :cond_c
    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_d

    .line 455
    const-string v14, "HtcAppAssociationsUtils(2-0)"

    const-string v15, " @@@@@ after query activities:  size=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 466
    :cond_e
    new-instance v12, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 467
    .local v12, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 469
    sget-boolean v14, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v14, :cond_0

    .line 470
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
    .parameter "context"
    .parameter "intent"
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

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string v5, " @@@@@ queryActivities()...2: "

    invoke-static {v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 274
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x10040

    invoke-virtual {v1, v5, v6, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v2, v4

    .line 298
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v2

    .line 280
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    new-instance v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 281
    .local v3, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
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

    .line 293
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    const-string v6, " @@@@@ ERROR: query activities....2 Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v5, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 298
    goto :goto_0
.end method

.method public static queryAudioActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 513
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryLocationActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 503
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMailActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 488
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMapActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 498
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryPhoneActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 493
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryStreamingLinkActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 508
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryVideoActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 518
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryWebActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 483
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryYoutubeActivities(Landroid/content/Context;)Ljava/util/List;
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
    .line 523
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static readSieClassName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 2154
    packed-switch p1, :pswitch_data_0

    .line 2183
    const-string v0, " @@@@@ readSieClassName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 2187
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2156
    :pswitch_0
    const-string v0, "CATEGORY_WEB_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2159
    :pswitch_1
    const-string v0, "CATEGORY_MAIL_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2162
    :pswitch_2
    const-string v0, "CATEGORY_PHONE_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2165
    :pswitch_3
    const-string v0, "CATEGORY_MAP_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2168
    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2171
    :pswitch_5
    const-string v0, "CATEGORY_STREAM_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2174
    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2177
    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2180
    :pswitch_8
    const-string v0, "CATEGORY_YOUTUBE_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2154
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
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v13, 0x0

    .line 2192
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

    .line 2194
    const/4 v10, 0x0

    .line 2195
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2198
    .local v0, cpc:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2199
    .local v9, cr:Landroid/content/ContentResolver;
    const-string v2, "content://customization_settings/SettingTable/application_PrimePreferredApp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2201
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 2202
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2204
    if-nez v10, :cond_0

    .line 2205
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    .line 2265
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #cr:Landroid/content/ContentResolver;
    :goto_0
    return-object v2

    .line 2209
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #cr:Landroid/content/ContentResolver;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2210
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2211
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    .line 2212
    goto :goto_0

    .line 2216
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2218
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2219
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2220
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    .line 2221
    goto :goto_0

    .line 2224
    :cond_2
    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2226
    .local v8, columnIndex:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    .line 2227
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2228
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v2, v13

    .line 2229
    goto :goto_0

    .line 2233
    :cond_3
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2235
    .local v6, blob:[B
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2236
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 2242
    .local v12, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v6

    invoke-virtual {v12, v6, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2245
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2247
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2248
    .local v7, bundle:Landroid/os/Bundle;
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 2250
    const-string v2, "ActivitySelection"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2251
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #blob:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v8           #columnIndex:I
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v12           #parcel:Landroid/os/Parcel;
    :catch_0
    move-exception v11

    .line 2252
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: readSieData(): read data failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2256
    if-eqz v10, :cond_4

    .line 2257
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2258
    const/4 v10, 0x0

    .line 2261
    :cond_4
    if-eqz v0, :cond_5

    .line 2262
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    move-object v2, v13

    .line 2265
    goto :goto_0
.end method

.method public static readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 2116
    packed-switch p1, :pswitch_data_0

    .line 2145
    const-string v0, " @@@@@ readSiePackageName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 2149
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2118
    :pswitch_0
    const-string v0, "CATEGORY_WEB_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2121
    :pswitch_1
    const-string v0, "CATEGORY_MAIL_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2124
    :pswitch_2
    const-string v0, "CATEGORY_PHONE_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2127
    :pswitch_3
    const-string v0, "CATEGORY_MAP_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2130
    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2133
    :pswitch_5
    const-string v0, "CATEGORY_STREAM_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2136
    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2139
    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2142
    :pswitch_8
    const-string v0, "CATEGORY_YOUTUBE_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2116
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
    .parameter "context"

    .prologue
    .line 1980
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1981
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1984
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1985
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "reAdd"

    .prologue
    .line 1988
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1989
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "reAdd"
    .parameter "action"

    .prologue
    .line 2002
    const/4 v1, 0x0

    .line 2003
    .local v1, category:I
    const/4 v0, 0x0

    .line 2005
    .local v0, bHavePackageName:Z
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2006
    :cond_0
    const/4 v0, 0x0

    .line 2012
    :goto_0
    invoke-static {p0, p2, p3, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2014
    const/16 v1, 0x9

    .line 2015
    :goto_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 2018
    if-nez v0, :cond_2

    .line 2020
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2021
    :try_start_0
    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 2022
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v1, v2, p3, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2016
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2009
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2022
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2030
    :cond_2
    invoke-static {p0, v1, p2, p3, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2036
    :cond_3
    return-void
.end method

.method public static resetPackagePreferredActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    .line 2039
    const/4 v0, 0x0

    .line 2041
    .local v0, bHavePackageName:Z
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2042
    :cond_0
    const/4 v0, 0x0

    .line 2048
    :goto_0
    if-nez v0, :cond_3

    .line 2050
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2087
    :cond_1
    return-void

    .line 2045
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2054
    :cond_3
    const/4 v1, 0x0

    .line 2056
    .local v1, category:I
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 2057
    const-string v4, ""

    invoke-static {p0, v6, v4, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2059
    const/16 v1, 0x9

    .line 2060
    :goto_1
    if-lt v1, v6, :cond_1

    .line 2063
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2065
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2067
    .local v3, componmentName:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2069
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2072
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2073
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2074
    :try_start_0
    const-string v4, ""

    invoke-static {p0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 2075
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    .line 2061
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componmentName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2075
    .restart local v2       #component:Landroid/content/ComponentName;
    .restart local v3       #componmentName:Ljava/lang/String;
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
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1783
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1784
    return-void
.end method

.method public static setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1790
    const/4 v0, 0x7

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1792
    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1757
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1758
    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1764
    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1766
    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1718
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1719
    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1725
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1727
    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1744
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1745
    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1751
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1753
    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1731
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1732
    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1738
    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1740
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "category"

    .prologue
    .line 1430
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1431
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "category"
    .parameter "flag"

    .prologue
    .line 1439
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V

    .line 1440
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "component"
    .parameter "category"
    .parameter "flag"
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

    .prologue
    .line 1447
    .local p1, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "context"
    .parameter
    .parameter "component"
    .parameter "category"
    .parameter "flag"
    .parameter "action"
    .parameter "actionPackageName"
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

    .prologue
    .line 1458
    .local p1, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_0

    .line 1460
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

    .line 1461
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

    .line 1465
    :cond_0
    :try_start_0
    sget-object v26, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    const/16 v21, 0x0

    .line 1468
    .local v21, preferredComponent:Landroid/content/ComponentName;
    :try_start_1
    const-string v7, ""

    .line 1469
    .local v7, packageName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1471
    .local v6, bClear:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    .line 1474
    .local v22, preferredComponentName:Ljava/lang/String;
    if-eqz v22, :cond_1

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1476
    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    .line 1479
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1484
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_2

    .line 1485
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

    .line 1489
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 1491
    if-eqz v22, :cond_a

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1492
    const-string v3, ""

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1493
    const/4 v6, 0x1

    .line 1517
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    .line 1518
    .local v25, tempComponentName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1521
    .local v12, tempComponent:Landroid/content/ComponentName;
    if-nez p1, :cond_b

    .line 1522
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 1528
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    if-eqz p6, :cond_4

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1529
    :cond_4
    move-object/from16 v12, p2

    .line 1546
    :cond_5
    :goto_2
    if-eqz v21, :cond_e

    .line 1547
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-ne v6, v3, :cond_7

    .line 1549
    :cond_6
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1556
    :cond_7
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 1589
    new-instance v20, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;-><init>()V

    .line 1592
    .local v20, phoneUtils:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1689
    .end local v20           #phoneUtils:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
    :cond_8
    :goto_4
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1697
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #bClear:Z
    .end local v7           #packageName:Ljava/lang/String;
    .end local v12           #tempComponent:Landroid/content/ComponentName;
    .end local v21           #preferredComponent:Landroid/content/ComponentName;
    .end local v22           #preferredComponentName:Ljava/lang/String;
    .end local v25           #tempComponentName:Ljava/lang/String;
    :goto_5
    sget-boolean v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v3, :cond_9

    .line 1698
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v5, " @@@@@  setPreferredActivity(): Leave."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_9
    :goto_6
    return-void

    .line 1496
    .restart local v6       #bClear:Z
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v21       #preferredComponent:Landroid/content/ComponentName;
    .restart local v22       #preferredComponentName:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto :goto_0

    .line 1525
    .restart local v12       #tempComponent:Landroid/content/ComponentName;
    .restart local v25       #tempComponentName:Ljava/lang/String;
    :cond_b
    move-object/from16 v4, p1

    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1

    .line 1532
    :cond_c
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    .line 1534
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1536
    if-nez v12, :cond_5

    .line 1537
    move-object/from16 v12, p2

    goto :goto_2

    .line 1542
    :cond_d
    move-object/from16 v12, p2

    goto :goto_2

    .line 1553
    :cond_e
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    goto :goto_3

    .line 1689
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #bClear:Z
    .end local v7           #packageName:Ljava/lang/String;
    .end local v12           #tempComponent:Landroid/content/ComponentName;
    .end local v22           #preferredComponentName:Ljava/lang/String;
    .end local v25           #tempComponentName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1691
    .end local v21           #preferredComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v16

    .line 1692
    .local v16, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    const-string v5, " @@@@@  setPreferredActivity(): FAIL!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const-string v3, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1597
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6       #bClear:Z
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v12       #tempComponent:Landroid/content/ComponentName;
    .restart local v21       #preferredComponent:Landroid/content/ComponentName;
    .restart local v22       #preferredComponentName:Ljava/lang/String;
    .restart local v25       #tempComponentName:Ljava/lang/String;
    :cond_f
    const/16 v3, 0x9

    move/from16 v0, p3

    if-ne v0, v3, :cond_10

    .line 1598
    :try_start_4
    new-instance v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;

    invoke-direct {v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;-><init>()V

    .line 1599
    .local v2, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_4

    .line 1605
    .end local v2           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForYouTubeLink;
    :cond_10
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1607
    :cond_11
    if-nez v21, :cond_13

    .line 1608
    const/4 v3, 0x1

    new-array v11, v3, [Landroid/content/ComponentName;

    .line 1609
    .local v11, components:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    aput-object v12, v11, v3

    .line 1653
    :cond_12
    :goto_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v18, intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1655
    monitor-exit v26

    goto :goto_6

    .line 1613
    .end local v11           #components:[Landroid/content/ComponentName;
    .end local v18           #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1614
    const/4 v3, 0x2

    new-array v11, v3, [Landroid/content/ComponentName;

    .line 1615
    .restart local v11       #components:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    aput-object v21, v11, v3

    .line 1616
    const/4 v3, 0x1

    aput-object v12, v11, v3

    goto :goto_7

    .line 1619
    .end local v11           #components:[Landroid/content/ComponentName;
    :cond_14
    const/4 v3, 0x1

    new-array v11, v3, [Landroid/content/ComponentName;

    .line 1620
    .restart local v11       #components:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    aput-object v12, v11, v3

    goto :goto_7

    .line 1625
    .end local v11           #components:[Landroid/content/ComponentName;
    :cond_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v24

    .line 1627
    .local v24, size:I
    move/from16 v0, v24

    new-array v11, v0, [Landroid/content/ComponentName;

    .line 1629
    .restart local v11       #components:[Landroid/content/ComponentName;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 1630
    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1632
    .local v15, ai:Landroid/content/pm/ActivityInfo;
    new-instance v23, Landroid/content/ComponentName;

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .local v23, queryComponentName:Landroid/content/ComponentName;
    aput-object v23, v11, v17

    .line 1629
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1658
    .end local v15           #ai:Landroid/content/pm/ActivityInfo;
    .end local v17           #i:I
    .end local v23           #queryComponentName:Landroid/content/ComponentName;
    .end local v24           #size:I
    .restart local v18       #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .line 1660
    .local v19, intentFilterSize:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1661
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

    .line 1660
    add-int/lit8 v17, v17, 0x1

    goto :goto_9
.end method

.method public static setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "flag"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 3675
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3676
    :try_start_0
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;-><init>()V

    .line 3678
    .local v0, appAssoc1:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;->setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3680
    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;-><init>()V

    .line 3682
    .local v1, appAssoc2:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;->setPreferredActivity(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3683
    monitor-exit v3

    .line 3685
    return-void

    .line 3683
    .end local v0           #appAssoc1:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForSpecificScheme;
    .end local v1           #appAssoc2:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForHost;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setPreferredActivityWhenBootCompleted(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 2092
    const/4 v0, 0x0

    .line 2094
    .local v0, category:I
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 2095
    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v4, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivityBySpecialCase(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2098
    const/16 v0, 0x9

    .line 2099
    :goto_0
    if-lt v0, v4, :cond_2

    .line 2102
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

    .line 2106
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    .line 2100
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2112
    :cond_2
    return-void
.end method

.method public static setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 20
    .parameter "context"
    .parameter "category"
    .parameter "componentName"

    .prologue
    .line 3565
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    .line 3566
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ setPreferredXXXXXByDB(): Enter."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
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

    .line 3568
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

    .line 3573
    :cond_0
    if-nez p2, :cond_5

    .line 3574
    const-string v14, ""

    .line 3580
    .local v14, tempComponentName:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 3581
    .local v7, bResult:Z
    const/4 v8, 0x0

    .line 3582
    .local v8, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 3585
    .local v1, cpc:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 3587
    .local v11, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 3588
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

    .line 3594
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    .line 3600
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3602
    .local v12, cv:Landroid/content/ContentValues;
    const-string v2, "category"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3603
    const-string v2, "component_name"

    invoke-virtual {v12, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    :goto_1
    const/4 v7, 0x1

    .line 3653
    if-eqz v8, :cond_2

    .line 3654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3655
    const/4 v8, 0x0

    .line 3658
    :cond_2
    if-eqz v1, :cond_3

    .line 3659
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v12           #cv:Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 3663
    :cond_3
    sget-boolean v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v2, :cond_4

    .line 3664
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@ setPreferredXXXXXByDB(): Leave."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :cond_4
    return v7

    .line 3577
    .end local v1           #cpc:Landroid/content/ContentProviderClient;
    .end local v7           #bResult:Z
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #tempComponentName:Ljava/lang/String;
    :cond_5
    move-object/from16 v14, p2

    .restart local v14       #tempComponentName:Ljava/lang/String;
    goto :goto_0

    .line 3618
    .restart local v1       #cpc:Landroid/content/ContentProviderClient;
    .restart local v7       #bResult:Z
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    :cond_6
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3624
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3627
    .restart local v12       #cv:Landroid/content/ContentValues;
    const-string v2, "component_name"

    invoke-virtual {v12, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    const-string v2, "id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3630
    .local v10, columnIdIndex:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3631
    .local v9, columnId:I
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

    .line 3634
    .local v15, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v12, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3644
    .end local v9           #columnId:I
    .end local v10           #columnIdIndex:I
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v15           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 3645
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    const-string v3, " @@@@@  ERROR: setPreferredXXXXXByDB(): failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    const-string v2, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3649
    const/4 v7, 0x0

    .line 3653
    if-eqz v8, :cond_7

    .line 3654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3655
    const/4 v8, 0x0

    .line 3658
    :cond_7
    if-eqz v1, :cond_3

    goto :goto_2

    .line 3653
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 3654
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3655
    const/4 v8, 0x0

    .line 3658
    :cond_8
    if-eqz v1, :cond_9

    .line 3659
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 3653
    :cond_9
    throw v2
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1770
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1771
    return-void
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1777
    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1779
    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1796
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1797
    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1803
    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1805
    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1705
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1706
    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1712
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1714
    return-void
.end method

.method public static setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1809
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1810
    return-void
.end method

.method public static setYoutubePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1816
    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1818
    return-void
.end method

.method public static updatePreferredActivity(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2
    .parameter "context"
    .parameter "category"
    .parameter "component"

    .prologue
    .line 1364
    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1365
    const-string v0, "HtcAppAssociationsUtils(2-0)"

    const-string v1, " @@@@@ updatePreferredActivity(): no-op."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    return-void
.end method

.method public static updatePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 14
    .parameter "context"
    .parameter "component"

    .prologue
    const/4 v13, 0x1

    .line 1250
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1255
    :cond_0
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ ERROR: updatePreferredActivity(): the parameters is null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_1
    return-void

    .line 1264
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, preferredPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1267
    .local v1, category:I
    const/4 v0, 0x0

    .line 1270
    .local v0, bFind:Z
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

    .line 1273
    const/16 v1, 0x9

    .line 1274
    :goto_0
    if-lt v1, v13, :cond_1

    .line 1277
    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    .line 1279
    .local v7, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 1275
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1284
    :cond_4
    const/4 v0, 0x0

    .line 1286
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 1288
    :try_start_0
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1291
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-ne v10, v13, :cond_6

    .line 1297
    const/4 v0, 0x1

    .line 1309
    .end local v4           #packageName:Ljava/lang/String;
    :cond_5
    if-ne v0, v13, :cond_3

    .line 1312
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

    .line 1316
    const/4 v9, 0x0

    .line 1317
    .local v9, tempPreferredComponent:Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 1318
    .local v8, tempPackageName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1321
    .local v5, preferredComponentName:Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1324
    :try_start_1
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 1327
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1329
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1331
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): update...1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v10, 0x1

    invoke-static {p0, v7, p1, v1, v10}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1341
    :catch_0
    move-exception v2

    .line 1342
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@  updatePreferredActivity(): FAIL!!! 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1302
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #preferredComponentName:Ljava/lang/String;
    .end local v8           #tempPackageName:Ljava/lang/String;
    .end local v9           #tempPreferredComponent:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .line 1303
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@  updatePreferredActivity(): FAIL!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1286
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1338
    .restart local v5       #preferredComponentName:Ljava/lang/String;
    .restart local v8       #tempPackageName:Ljava/lang/String;
    .restart local v9       #tempPreferredComponent:Landroid/content/ComponentName;
    :cond_7
    :try_start_2
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): don\'t update."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1350
    :cond_8
    const-string v10, "HtcAppAssociationsUtils(2-0)"

    const-string v11, " @@@@@ updatePreferredActivity(): update...2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-static {p0, v7, p1, v1, v13}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V

    goto/16 :goto_1
.end method
