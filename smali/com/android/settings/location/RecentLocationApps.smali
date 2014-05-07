.class public Lcom/android/settings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final RECENT_TIME_INTERVAL_MILLIS:I = 0xdbba0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLcom/htc/preference/HtcPreference$OnPreferenceClickListener;)Lcom/htc/preference/HtcPreference;
    .locals 2

    new-instance v0, Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const v1, 0x7f0c0efa

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    return-object v0

    :cond_0
    const v1, 0x7f0c0efb

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/htc/preference/HtcPreference;
    .locals 14

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/32 v11, 0xdbba0

    sub-long v9, p1, v11

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-ltz v11, :cond_0

    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hadn\'t used location within the time interval."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_1
    return-object v8

    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/high16 v12, 0x80

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v11, v0, Landroid/content/pm/ApplicationInfo;->displayed:Z

    if-nez v11, :cond_8

    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_6

    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This entry should not be displayed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " package name not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    const/4 v8, 0x0

    :try_start_1
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    if-ne v11, v12, :cond_9

    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v13, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;

    invoke-direct {v13, p0, v7}, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V

    invoke-direct {p0, v11, v12, v4, v13}, Lcom/android/settings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLcom/htc/preference/HtcPreference$OnPreferenceClickListener;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    goto :goto_1

    :cond_9
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with Uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " belongs to another inactive account, ignored."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const-string v12, "appops"

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v0, v10}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v10, v11

    :goto_0
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_2

    const-string v10, "android"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v10, v12, :cond_0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_2
    move v3, v11

    goto :goto_2

    :cond_3
    return-object v8

    :array_0
    .array-data 0x4
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method
