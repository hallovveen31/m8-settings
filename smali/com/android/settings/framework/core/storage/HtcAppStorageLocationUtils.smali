.class public Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;
.super Ljava/lang/Object;
.source "HtcAppStorageLocationUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAppStorageLocationForNewApps(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 58
    sget-boolean v5, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    const-string v6, "initAppStorageLocationFornewApps"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const/4 v0, 0x1

    .line 63
    .local v0, PHONE_STORAGE_TYPE:I
    const/4 v1, 0x2

    .line 64
    .local v1, SD_STORAGE_TYPE:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v2

    .line 65
    .local v2, hasPhoneStorage:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v3

    .line 67
    .local v3, hasSdCardStorage:Z
    const/4 v4, 0x1

    .line 69
    .local v4, type:I
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 70
    const/4 v4, 0x2

    .line 73
    :cond_1
    sget-boolean v5, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 74
    sget-object v5, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initial type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->updateAppStorageLocation(Landroid/content/Context;IZ)V

    .line 78
    return-void
.end method

.method public static updateAppStorageLocation(Landroid/content/Context;IZ)V
    .locals 13
    .parameter "context"
    .parameter "type"
    .parameter "isInitial"

    .prologue
    .line 94
    sget-object v10, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, HtcPrefixAppStorageLocStr:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 102
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "com.htc.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/16 v10, 0x80

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 111
    .local v8, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 112
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 114
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 115
    sget-object v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, databaseKey:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 126
    const/4 v5, 0x1

    .line 128
    .local v5, exist:Z
    :try_start_0
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 129
    .local v9, value:I
    sget-boolean v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 130
    sget-object v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "databaseKey "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v9           #value:I
    :cond_2
    :goto_1
    sget-boolean v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 137
    sget-object v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "databaseKey ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    if-nez v5, :cond_0

    .line 141
    sget-boolean v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 142
    sget-object v10, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create databaseKey:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v4

    .line 133
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v5, 0x0

    goto :goto_1

    .line 149
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v5           #exist:Z
    :cond_5
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 152
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #databaseKey:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static updateAppStorageLocationForPhoneStorageLike(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorageLike()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 45
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->TAG:Ljava/lang/String;

    const-string v2, "updateAppStorageLocationForPhoneStorageLike"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    const/4 v0, 0x1

    .line 50
    .local v0, PHONE_STORAGE_TYPE:I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->updateAppStorageLocation(Landroid/content/Context;IZ)V

    goto :goto_0
.end method
