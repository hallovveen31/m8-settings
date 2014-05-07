.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForCallButton.java"


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-2)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    return-object v0
.end method

.method private getIntentList(Ljava/util/List;)Z
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
    .line 254
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 258
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkPackageNameInQueryActivities(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 124
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 134
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getPreferredComponentName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 149
    :cond_0
    const/4 v8, 0x0

    .line 194
    :cond_1
    :goto_0
    return-object v8

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 153
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v7, pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v8, ""

    .line 157
    .local v8, preferredComponentName:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 159
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 160
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 162
    sget-boolean v11, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->LOG_DEBUG:Z

    if-eqz v11, :cond_4

    .line 163
    const-string v11, "HtcAppAssociationsUtils(2-2)"

    const-string v12, " @@@@@ getPreferredComponentName(): "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v11, "HtcAppAssociationsUtils(2-2)"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " @@@@@                  queryPackage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v11}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 170
    const/4 v2, 0x0

    .local v2, index:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .local v10, size:I
    :goto_1
    if-ge v2, v10, :cond_3

    .line 172
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 173
    .local v3, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 175
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v0, :cond_6

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 180
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 182
    sget-boolean v11, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->LOG_DEBUG:Z

    if-eqz v11, :cond_1

    .line 183
    const-string v11, "HtcAppAssociationsUtils(2-2)"

    const-string v12, " @@@@@ getPreferredComponentName(): "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v11, "HtcAppAssociationsUtils(2-2)"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " @@@@@                  preferred: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v0           #count:I
    .end local v2           #index:I
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v4           #j:I
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    .end local v10           #size:I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public queryActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 16
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
    const/4 v11, 0x0

    .line 45
    .local v11, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 48
    .local v10, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->getIntentList(Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 49
    const/4 v7, 0x0

    .line 116
    :goto_0
    return-object v7

    .line 52
    :cond_0
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v7, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 58
    .local v13, size:I
    :goto_1
    if-ge v2, v13, :cond_5

    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 74
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 75
    .local v9, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 76
    .local v8, outputPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, bFind:Z
    const/4 v4, 0x0

    .line 79
    .local v4, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_4

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, k:I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 89
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 92
    const/4 v1, 0x1

    .line 97
    :cond_1
    if-nez v1, :cond_2

    .line 98
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 59
    .end local v5           #k:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v1           #bFind:Z
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #outputPackageName:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_5
    new-instance v12, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 106
    .local v12, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "preferredComponentName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    .line 208
    .local v10, size:I
    new-array v3, v10, [Landroid/content/ComponentName;

    .line 210
    .local v3, components:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 211
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 212
    .local v7, ai:Landroid/content/pm/ActivityInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v9, queryComponentName:Landroid/content/ComponentName;
    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->LOG_DEBUG:Z

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "HtcAppAssociationsUtils(2-2)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@ setPreferredActivity():      package["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    aput-object v9, v3, v8

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 222
    .end local v7           #ai:Landroid/content/pm/ActivityInfo;
    .end local v9           #queryComponentName:Landroid/content/ComponentName;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 223
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 226
    .local v4, component:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
