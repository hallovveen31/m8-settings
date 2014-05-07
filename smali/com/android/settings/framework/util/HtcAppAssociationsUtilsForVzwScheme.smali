.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForVzwScheme.java"


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final SPECIFIC_PACKAGENAME:Ljava/lang/String; = "com.gravitymobile.app.hornbill"

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-8)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->LOG_DEBUG:Z

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
    .line 144
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vzw://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, bFind:Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 125
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

    .line 127
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.gravitymobile.app.hornbill"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 138
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 133
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v0, :cond_2

    .line 134
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object v3, v4

    goto :goto_0

    .line 138
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
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
    .line 44
    const/4 v13, 0x0

    .line 45
    .local v13, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v5, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 48
    .local v12, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->getIntentList(Ljava/util/List;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 49
    const/4 v9, 0x0

    .line 113
    :cond_0
    return-object v9

    .line 52
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

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v9, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    .line 58
    .local v16, size:I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_6

    .line 61
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    const v18, 0x10040

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 71
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 72
    .local v11, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 73
    .local v10, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 75
    .local v2, bFind:Z
    const/4 v6, 0x0

    .line 76
    .local v6, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 82
    const/4 v7, 0x0

    .line 83
    .local v7, k:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 86
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 89
    const/4 v2, 0x1

    .line 94
    :cond_2
    if-nez v2, :cond_3

    .line 95
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 59
    .end local v7           #k:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v2           #bFind:Z
    .end local v6           #j:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #outputPackageName:Ljava/lang/String;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_6
    new-instance v15, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 103
    .local v15, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v9, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->LOG_DEBUG:Z

    if-eqz v17, :cond_0

    .line 106
    const-string v17, "HtcAppAssociationsUtils(2-8)"

    const-string v18, " @@@@@ after query activities: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
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

    .line 109
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const-string v17, "HtcAppAssociationsUtils(2-8)"

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
