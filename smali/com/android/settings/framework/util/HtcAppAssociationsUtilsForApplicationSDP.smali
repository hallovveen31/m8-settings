.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForApplicationSDP.java"


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final SPECIFIC_PACKAGENAME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-1)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->LOG_DEBUG:Z

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.htc.streamplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.htc.video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->SPECIFIC_PACKAGENAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentList(Ljava/util/List;)Z
    .locals 3
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
    .line 154
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 158
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

    const-string v2, "application/sdp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, bFind:Z
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 128
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 131
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    sget-object v6, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->SPECIFIC_PACKAGENAME:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 132
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->SPECIFIC_PACKAGENAME:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 148
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v5

    .line 131
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HtcAppAssociationsUtils(2-1)"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 144
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    move-object v5, v6

    goto :goto_2

    .line 148
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public queryActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 20
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
    .line 47
    const/4 v13, 0x0

    .line 48
    .local v13, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v5, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 51
    .local v12, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->getIntentList(Ljava/util/List;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 52
    const/4 v9, 0x0

    .line 116
    :cond_0
    return-object v9

    .line 55
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    const v18, 0x10040

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v9, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    .line 61
    .local v16, size:I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_6

    .line 64
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    const v18, 0x10040

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 74
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 75
    .local v11, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 76
    .local v10, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 78
    .local v2, bFind:Z
    const/4 v6, 0x0

    .line 79
    .local v6, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, k:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 89
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 92
    const/4 v2, 0x1

    .line 97
    :cond_2
    if-nez v2, :cond_3

    .line 98
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 62
    .end local v7           #k:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v2           #bFind:Z
    .end local v6           #j:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #outputPackageName:Ljava/lang/String;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_6
    new-instance v15, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 106
    .local v15, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v9, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->LOG_DEBUG:Z

    if-eqz v17, :cond_0

    .line 109
    const-string v17, "HtcAppAssociationsUtils(2-1)"

    const-string v18, " @@@@@ after query activities: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 112
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const-string v17, "HtcAppAssociationsUtils(2-1)"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " @@@@@                  package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
