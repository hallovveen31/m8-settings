.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone$IfActionType;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_SECURITY:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils(2-5)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private getIntentFilter(I)Landroid/content/IntentFilter;
    .locals 2
    .parameter "actionType"

    .prologue
    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v0, filter:Landroid/content/IntentFilter;
    packed-switch p1, :pswitch_data_0

    .line 386
    const/4 v0, 0x0

    .line 389
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-object v0

    .line 349
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :pswitch_0
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_1
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 356
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 357
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :pswitch_2
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 363
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_3
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_4
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 374
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 375
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_5
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 382
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIntentList(ILjava/util/List;)Z
    .locals 2
    .parameter "actionType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 306
    if-nez p2, :cond_0

    .line 341
    :goto_0
    return v0

    .line 312
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 315
    :pswitch_0
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

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
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

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIntentMatch(I)I
    .locals 2
    .parameter "actionType"

    .prologue
    const/high16 v0, 0x20

    const/high16 v1, 0x10

    .line 393
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 407
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 404
    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 20
    .parameter "context"
    .parameter "actionType"
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
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v6, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 57
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 72
    .local v3, bGetList:Z
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentList(ILjava/util/List;)Z

    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    const/4 v10, 0x0

    .line 143
    :cond_0
    return-object v10

    .line 81
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v10, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    .line 85
    .local v16, size:I
    :goto_0
    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 88
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    const v18, 0x10040

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 101
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .line 102
    .local v12, packageName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 103
    .local v11, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, bFind:Z
    const/4 v7, 0x0

    .line 106
    .local v7, j:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 112
    const/4 v8, 0x0

    .line 113
    .local v8, k:I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 116
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 119
    const/4 v2, 0x1

    .line 124
    :cond_2
    if-nez v2, :cond_3

    .line 125
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 114
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 86
    .end local v8           #k:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v2           #bFind:Z
    .end local v7           #j:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #outputPackageName:Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_6
    new-instance v15, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 133
    .local v15, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v10, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    sget-boolean v17, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->LOG_DEBUG:Z

    if-eqz v17, :cond_0

    .line 136
    const-string v17, "HtcAppAssociationsUtils(2-5)"

    const-string v18, " @@@@@ after query activities: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const-string v17, "HtcAppAssociationsUtils(2-5)"

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

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "preferredComponentName"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    .line 186
    .local v10, size:I
    new-array v3, v10, [Landroid/content/ComponentName;

    .line 188
    .local v3, components:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 189
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    .local v7, ai:Landroid/content/pm/ActivityInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v9, queryComponentName:Landroid/content/ComponentName;
    sget-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->LOG_DEBUG:Z

    if-eqz v0, :cond_2

    .line 193
    const-string v0, "HtcAppAssociationsUtils(2-5)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " @@@@@ setPreferredActivity():      package["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    aput-object v9, v3, v8

    .line 188
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 199
    .end local v7           #ai:Landroid/content/pm/ActivityInfo;
    .end local v9           #queryComponentName:Landroid/content/ComponentName;
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v1

    .line 200
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, p4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentMatch(I)I

    move-result v2

    .line 217
    .local v2, match:I
    if-eqz v1, :cond_0

    .line 222
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 225
    .local v4, component:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;->replacePreferredActivityEx(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public setPreferredActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "preferredComponentName"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 155
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 158
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 162
    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 165
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 169
    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 171
    :cond_2
    return-void
.end method
