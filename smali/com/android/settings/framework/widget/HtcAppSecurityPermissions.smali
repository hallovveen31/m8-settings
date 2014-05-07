.class public Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;
.super Ljava/lang/Object;
.source "HtcAppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$2;,
        Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;,
        Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionInfoComparator;,
        Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAppSecurityPermissions"


# instance fields
.field private localLOGV:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

.field private mDangerousIcon:Landroid/graphics/drawable/Drawable;

.field private mDangerousList:Landroid/widget/LinearLayout;

.field private mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultGrpLabel:Ljava/lang/String;

.field private mDefaultGrpName:Ljava/lang/String;

.field private mExpanded:Z

.field private mGroupLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMoreItem:Lcom/htc/widget/HtcListItem;

.field private mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

.field private mNoPermissionText:Lcom/htc/widget/HtcListItem2LineText;

.field private mNoPermsView:Landroid/view/View;

.field private mNonDangerousList:Landroid/widget/LinearLayout;

.field private mNormalIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermFormat:Ljava/lang/String;

.field private mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsView:Landroid/widget/LinearLayout;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;)V
    .locals 10
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    .line 91
    const-string v7, "DefaultGrp"

    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 136
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 137
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-nez p2, :cond_1

    .line 164
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 144
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 145
    .local v5, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 146
    .local v4, size:I
    if-lez v4, :cond_2

    .line 147
    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 151
    .end local v4           #size:I
    .end local v5           #strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 154
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v3

    .line 155
    .local v3, sharedUid:I
    invoke-direct {p0, v3, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v3           #sharedUid:I
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 162
    .local v6, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "HtcAppSecurityPermissions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could\'nt retrieve shared user id for:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    .line 91
    const-string v5, "DefaultGrp"

    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 115
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 117
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 126
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 127
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 129
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 130
    .local v4, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "HtcAppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    .line 91
    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 110
    iput-object p2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->showPermissions()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreItem:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method private aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    .local p2, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 477
    :cond_0
    return-void

    .line 451
    :cond_1
    if-eqz p2, :cond_0

    .line 454
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 455
    .local v2, grpNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 456
    .local v3, grpNamesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, grpDesc:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    .local v1, grpNameKey:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 460
    .local v4, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v4, :cond_2

    .line 463
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionInfo;

    .line 465
    .local v7, permInfo:Landroid/content/pm/PermissionInfo;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 466
    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 469
    .local v6, permDesc:Ljava/lang/CharSequence;
    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    goto :goto_1

    .line 468
    .end local v6           #permDesc:Ljava/lang/CharSequence;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6       #permDesc:Ljava/lang/CharSequence;
    goto :goto_2

    .line 472
    .end local v6           #permDesc:Ljava/lang/CharSequence;
    .end local v7           #permInfo:Landroid/content/pm/PermissionInfo;
    :cond_4
    if-eqz v0, :cond_2

    .line 473
    iget-boolean v8, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v8, :cond_5

    const-string v8, "HtcAppSecurityPermissions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Group:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " description:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "groupDesc"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 304
    :goto_0
    return-object v1

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, len:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 302
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 304
    goto :goto_0
.end method

.method private displayNoPermissions()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    return-void
.end method

.method private displayPermissions(Z)V
    .locals 9
    .parameter "dangerous"

    .prologue
    .line 354
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 355
    .local v3, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 356
    .local v5, permListView:Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 359
    .local v4, permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, loopPermGrpInfoStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    .local v0, grpLabel:Ljava/lang/CharSequence;
    iget-boolean v6, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v7, "HtcAppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding view group:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", desc:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 354
    .end local v0           #grpLabel:Ljava/lang/CharSequence;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #loopPermGrpInfoStr:Ljava/lang/String;
    .end local v3           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #permListView:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    goto :goto_0

    .line 355
    .restart local v3       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 368
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #permInfoStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #permListView:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private extractPerms([Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .parameter "strList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 222
    :cond_0
    return-void

    .line 207
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 210
    .local v4, permName:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->filterNonDisplayedPermissions(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 207
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_3
    iget-object v6, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 215
    .local v5, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 216
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    .end local v5           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown permission:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private filterNonDisplayedPermissions(Ljava/lang/String;)Z
    .locals 2
    .parameter "permName"

    .prologue
    .line 226
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v0, "com.kddi.android.permission.MANAGE_CPA"

    .line 229
    .local v0, perm:Ljava/lang/String;
    const-string v1, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 237
    .end local v0           #perm:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "groupDesc"
    .parameter "permDesc"

    .prologue
    .line 314
    if-nez p1, :cond_1

    .line 315
    if-nez p2, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    if-nez p2, :cond_2

    move-object v0, p1

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .parameter "sharedUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, sharedPkgList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 187
    :cond_0
    return-void

    .line 184
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 185
    .local v3, sharedPkg:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "grpName"

    .prologue
    .line 329
    if-nez p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 334
    .local v0, cachedLabel:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 339
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 344
    .local v3, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 346
    goto :goto_0

    .line 340
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcAppSecurityPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid group name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "inflater"
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"
    .parameter "icon"

    .prologue
    .line 382
    const v3, 0x7f040056

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, permView:Landroid/view/View;
    const v3, 0x7f0900a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 386
    .local v2, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 388
    const v3, 0x7f0900a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 390
    .local v0, imgView:Lcom/htc/widget/HtcIconButton;
    invoke-virtual {v0, p5}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v2, p3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    return-object v1

    .line 396
    :cond_0
    invoke-virtual {v2, p3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "grpName"
    .parameter "description"
    .parameter "dangerous"

    .prologue
    .line 171
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 173
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_0

    const v0, 0x7f02012f

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 173
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x7f020126

    goto :goto_0
.end method

.method private getPermissionItemView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 201
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HtcAppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "pInfo"

    .prologue
    const/4 v0, 0x1

    .line 434
    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    .line 495
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    .line 502
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v0, dangerousMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v5, normalMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    new-instance v7, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionInfoComparator;

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v9}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionInfoComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 512
    .local v7, permComparator:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionInfoComparator;
    if-eqz p1, :cond_9

    .line 514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 515
    .local v6, pInfo:Landroid/content/pm/PermissionInfo;
    iget-boolean v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_1

    const-string v9, "HtcAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Processing permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 517
    iget-boolean v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "HtcAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not displayable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_2
    iget v9, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v8, v0

    .line 523
    .local v8, permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :goto_1
    iget-object v9, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    .line 524
    .local v1, grpName:Ljava/lang/String;
    :goto_2
    iget-boolean v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_3

    const-string v9, "HtcAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " belongs to group:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 526
    .local v2, grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v2, :cond_6

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_4
    move-object v8, v5

    .line 520
    goto :goto_1

    .line 523
    .restart local v8       #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_5
    iget-object v1, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_2

    .line 531
    .restart local v1       #grpName:Ljava/lang/String;
    .restart local v2       #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_6
    invoke-static {v2, v6, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 532
    .local v4, idx:I
    iget-boolean v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_7

    const-string v9, "HtcAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "idx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_7
    if-gez v4, :cond_0

    .line 534
    neg-int v9, v4

    add-int/lit8 v4, v9, -0x1

    .line 535
    invoke-interface {v2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 541
    .end local v1           #grpName:Ljava/lang/String;
    .end local v2           #grpPermsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v4           #idx:I
    .end local v6           #pInfo:Landroid/content/pm/PermissionInfo;
    .end local v8           #permInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_8
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-direct {p0, v0, v9}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 542
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-direct {p0, v5, v9}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    .line 545
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    sget-object v9, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NO_PERMS:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 546
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 547
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_c

    sget-object v9, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->BOTH:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    :goto_3
    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 551
    :cond_a
    :goto_4
    iget-boolean v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v9, :cond_b

    const-string v9, "HtcAppSecurityPermissions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurrentState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->showPermissions()V

    .line 553
    return-void

    .line 547
    :cond_c
    sget-object v9, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    goto :goto_3

    .line 548
    :cond_d
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 549
    sget-object v9, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    goto :goto_4
.end method

.method private showPermissions()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    sget-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$2;->$SwitchMap$com$android$settings$framework$widget$HtcAppSecurityPermissions$State:[I

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mCurrentState:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    invoke-virtual {v1}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 405
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->displayNoPermissions()V

    goto :goto_0

    .line 409
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->displayPermissions(Z)V

    goto :goto_0

    .line 417
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->displayPermissions(Z)V

    .line 418
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->displayPermissions(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v1, 0x7f0c0a49

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public doConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->requestLayout()V

    .line 288
    :cond_0
    return-void
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f090021

    .line 246
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 247
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040058

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousList:Landroid/widget/LinearLayout;

    .line 249
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNonDangerousList:Landroid/widget/LinearLayout;

    .line 250
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermissionText:Lcom/htc/widget/HtcListItem2LineText;

    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermissionText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f0c0a46

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNoPermissionText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040057

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreItem:Lcom/htc/widget/HtcListItem;

    .line 258
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 259
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setGravityCenterHorizontal(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mListView:Lcom/htc/widget/HtcListView;

    .line 262
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;-><init>(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;-><init>(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0a45

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0a47

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mPermsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAppSecurityPermissions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z

    .line 558
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->showPermissions()V

    .line 559
    return-void

    .line 557
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
