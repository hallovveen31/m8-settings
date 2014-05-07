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

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 54
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLcom/htc/preference/HtcPreference$OnPreferenceClickListener;)Lcom/htc/preference/HtcPreference;
    .locals 2
    .parameter "icon"
    .parameter "label"
    .parameter "isHighBattery"
    .parameter "listener"

    .prologue
    .line 81
    new-instance v0, Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz p3, :cond_0

    .line 85
    const v1, 0x7f0c0efa

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 90
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 91
    return-object v0

    .line 87
    :cond_0
    const v1, 0x7f0c0efb

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/htc/preference/HtcPreference;
    .locals 14
    .parameter "now"
    .parameter "ops"

    .prologue
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v4, 0x0

    .line 141
    .local v4, highBattery:Z
    const/4 v6, 0x0

    .line 143
    .local v6, normalBattery:Z
    const-wide/32 v11, 0xdbba0

    sub-long v9, p1, v11

    .line 144
    .local v9, recentLocationCutoffTime:J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 145
    .local v3, entry:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-ltz v11, :cond_0

    .line 146
    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    const/4 v6, 0x1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v4, 0x1

    .line 152
    goto :goto_0

    .line 159
    .end local v3           #entry:Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    .line 160
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_3

    .line 161
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

    .line 163
    :cond_3
    const/4 v8, 0x0

    .line 210
    :cond_4
    :goto_1
    return-object v8

    .line 169
    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v11}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/high16 v12, 0x80

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 170
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-boolean v11, v0, Landroid/content/pm/ApplicationInfo;->displayed:Z

    if-nez v11, :cond_8

    .line 171
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_6

    .line 172
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

    .line 174
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 176
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_7

    .line 178
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

    .line 180
    :cond_7
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 186
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    const/4 v8, 0x0

    .line 188
    .local v8, pref:Lcom/htc/preference/HtcPreference;
    :try_start_1
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 196
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    if-ne v11, v12, :cond_9

    .line 197
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

    .line 202
    :cond_9
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_4

    .line 203
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

    .line 206
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .line 207
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 146
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

    .prologue
    const/4 v11, 0x0

    .line 100
    iget-object v10, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const-string v12, "appops"

    invoke-virtual {v10, v12}, Lcom/htc/preference/HtcPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 102
    .local v0, aoManager:Landroid/app/AppOpsManager;
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v0, v10}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, appOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v8, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v10, v11

    :goto_0
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v8, prefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    if-eqz v1, :cond_3

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 112
    .local v4, now:J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 114
    .local v6, ops:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    .line 115
    .local v9, uid:I
    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_2

    const-string v10, "android"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    .line 117
    .local v3, isAndroidOs:Z
    :goto_2
    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v10, v12, :cond_0

    .line 118
    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 119
    .local v7, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isAndroidOs:Z
    .end local v4           #now:J
    .end local v6           #ops:Landroid/app/AppOpsManager$PackageOps;
    .end local v7           #pref:Lcom/htc/preference/HtcPreference;
    .end local v8           #prefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .end local v9           #uid:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #now:J
    .restart local v6       #ops:Landroid/app/AppOpsManager$PackageOps;
    .restart local v8       #prefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .restart local v9       #uid:I
    :cond_2
    move v3, v11

    .line 115
    goto :goto_2

    .line 126
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #now:J
    .end local v6           #ops:Landroid/app/AppOpsManager$PackageOps;
    .end local v9           #uid:I
    :cond_3
    return-object v8

    .line 102
    :array_0
    .array-data 0x4
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method
