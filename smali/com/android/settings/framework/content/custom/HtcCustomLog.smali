.class public Lcom/android/settings/framework/content/custom/HtcCustomLog;
.super Ljava/lang/Object;
.source "HtcCustomLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpBlockedApplicationLog(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 133
    const-string v0, "Settings"

    .line 134
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 136
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "blocked_applications"

    .line 138
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 140
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "blocked_applications"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 143
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 145
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 146
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 147
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 148
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 149
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, pkg:Ljava/lang/String;
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 152
    const-string v10, "Cust_Uninstall_APP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", Blocked_APName = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", order = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 157
    goto :goto_0

    .line 159
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static dumpDisableCustomApplicationLog(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 43
    const-string v0, "Settings"

    .line 44
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 46
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "disable_custom_applications"

    .line 48
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 50
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "disable_custom_applications"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 53
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 55
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 56
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 57
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 59
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, pkg:Ljava/lang/String;
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 62
    const-string v10, "Cust_Disable_APP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", Disabled_AP_List = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", order = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 67
    goto :goto_0

    .line 69
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static dumpHideApplicationLog(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "Settings"

    .line 74
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 76
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "hide_application_list"

    .line 78
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 80
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "hide_application_list"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 83
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 85
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 86
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 87
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 89
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, pkg:Ljava/lang/String;
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 92
    const-string v10, "Cust_Hide_APP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", Hide_AP_List = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", order = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_0

    .line 99
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static dumpHideServiceLog(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 103
    const-string v0, "Settings"

    .line 104
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 106
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "hide_service_list"

    .line 108
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 110
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "hide_service_list"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 113
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 115
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 116
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 117
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 118
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, pkg:Ljava/lang/String;
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 122
    const-string v10, "Cust_Hide_Service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", Hide_Service_List = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", order = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 127
    goto :goto_0

    .line 129
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static dumpLog(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpSettingsProperties(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpDisableCustomApplicationLog(Landroid/content/Context;)V

    .line 31
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpHideApplicationLog(Landroid/content/Context;)V

    .line 32
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpHideServiceLog(Landroid/content/Context;)V

    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpBlockedApplicationLog(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpRegulatoryLog()V

    .line 35
    return-void
.end method

.method private static dumpRegulatoryLog()V
    .locals 7

    .prologue
    .line 162
    const-string v0, "Cust_Regulatory"

    .line 163
    .local v0, TAG:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->getAssetList()Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, regulatoryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;>;"
    if-eqz v4, :cond_1

    .line 169
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;

    .line 170
    .local v1, assetInfo:Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    if-nez v1, :cond_0

    .line 171
    const-string v5, "Cust_Regulatory"

    const-string v6, "asset info is null!!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_0
    const-string v5, "key:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v5, "Cust_Regulatory"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 185
    .end local v1           #assetInfo:Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->dumpData()V

    .line 186
    return-void
.end method

.method private static dumpSettingsProperties(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->dump(Landroid/content/Context;)V

    .line 39
    return-void
.end method
