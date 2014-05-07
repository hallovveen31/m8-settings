.class public Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;
.super Ljava/lang/Object;
.source "HtcRegulatoryAssetList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$1;,
        Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    }
.end annotation


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FUNCTION_NAME:Ljava/lang/String; = "regulatory_icon_list"

.field private static final MODULE_NAME:Ljava/lang/String; = "list"

.field private static final TAG:Ljava/lang/String;

.field private static final mAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->DEBUG:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->mAssetList:Ljava/util/List;

    .line 93
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->prepareData()V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getAssetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->mAssetList:Ljava/util/List;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 157
    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private static prepareData()V
    .locals 12

    .prologue
    .line 98
    sget-boolean v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 99
    const-string v9, ">> prepareData()"

    invoke-static {v9}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 103
    .local v1, context:Landroid/content/Context;
    const-string v9, "Settings"

    const-string v10, "list"

    invoke-static {v1, v9, v10}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v2

    .line 105
    .local v2, data:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    const-string v9, "regulatory_icon_list"

    invoke-virtual {v2, v9}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 111
    .local v8, subData:Landroid/os/Bundle;
    if-eqz v8, :cond_3

    .line 115
    sget-boolean v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 116
    const-string v9, "the asset list: "

    invoke-static {v9}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->log(Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 120
    .local v6, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 122
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, path:Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v9, "key:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->log(Ljava/lang/String;)V

    .line 134
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 140
    .local v4, index:I
    sget-object v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->mAssetList:Ljava/util/List;

    new-instance v10, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v7, v11}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;-><init>(ILjava/lang/String;Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$1;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v4           #index:I
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the key has a invalid type. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #path:Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->mAssetList:Ljava/util/List;

    new-instance v10, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo$IndexComparator;

    invoke-direct {v10}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo$IndexComparator;-><init>()V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    sget-boolean v9, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 148
    const-string v9, ">> prepareData()"

    invoke-static {v9}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->log(Ljava/lang/String;)V

    .line 150
    :cond_4
    return-void
.end method
