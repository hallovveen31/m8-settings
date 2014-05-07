.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForMarket.java"


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final SPECIFIC_PACKAGENAME:Ljava/lang/String; = "com.android.vending"

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-4)"


# instance fields
.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uriString"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getExcludedIntentList(Ljava/util/List;)Z
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
    .line 233
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 237
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

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x1

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
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->queryActivities(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private queryActivities(Landroid/content/Context;Z)Ljava/util/List;
    .locals 24
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
    .line 57
    const/16 v17, 0x0

    .line 58
    .local v17, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v16, 0x0

    .line 59
    .local v16, rExcludedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v7, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, excludedIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 62
    .local v15, pm:Landroid/content/pm/PackageManager;
    move/from16 v3, p2

    .line 64
    .local v3, bTempExcluded:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->getIntentList(Ljava/util/List;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 65
    const/4 v12, 0x0

    .line 157
    :cond_0
    return-object v12

    .line 68
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_2

    .line 69
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->getExcludedIntentList(Ljava/util/List;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 70
    const/4 v3, 0x0

    .line 75
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    const v22, 0x10040

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 77
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_3

    .line 78
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    const v22, 0x10040

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 81
    if-nez v16, :cond_3

    .line 82
    const/4 v3, 0x0

    .line 86
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v12, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    .line 90
    .local v20, size:I
    :goto_0
    move/from16 v0, v20

    if-ge v5, v0, :cond_a

    .line 93
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    const v22, 0x10040

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 103
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v14, 0x0

    .line 104
    .local v14, packageName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 105
    .local v13, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, bFind:Z
    const/4 v8, 0x0

    .line 108
    .local v8, j:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 114
    const/4 v9, 0x0

    .line 115
    .local v9, k:I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 118
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 120
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 121
    const/4 v2, 0x1

    .line 126
    :cond_4
    if-nez v2, :cond_6

    .line 127
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_5

    .line 128
    const/4 v10, 0x0

    .line 129
    .local v10, l:I
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 132
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 133
    const/4 v2, 0x1

    .line 139
    .end local v10           #l:I
    :cond_5
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 116
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 130
    .restart local v10       #l:I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 91
    .end local v9           #k:I
    .end local v10           #l:I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 145
    .end local v2           #bFind:Z
    .end local v8           #j:I
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #outputPackageName:Ljava/lang/String;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_a
    new-instance v19, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 147
    .local v19, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    sget-boolean v21, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->LOG_DEBUG:Z

    if-eqz v21, :cond_0

    .line 150
    const-string v21, "HtcAppAssociationsUtils(2-4)"

    const-string v22, " @@@@@ after query activities: "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 153
    .local v18, ri:Landroid/content/pm/ResolveInfo;
    const-string v21, "HtcAppAssociationsUtils(2-4)"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " @@@@@                  package: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public getIntentList(Ljava/util/List;)Z
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
    const/4 v1, 0x1

    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils(2-4)"

    const-string v3, " @@@@@  ERROR: get intent list failed!!!...1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v2, "HtcAppAssociationsUtils(2-4)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "http://market.android.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "https://market.android.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.vending"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 176
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 178
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcAppAssociationsUtils(2-4)"

    const-string v5, " @@@@@  ERROR: get specific activity failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v4, "HtcAppAssociationsUtils(2-4)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
