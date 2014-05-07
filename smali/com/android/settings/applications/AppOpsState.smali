.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate; = null

.field static final TAG:Ljava/lang/String; = null

.field public static final TEMPLATE_INDEX_DEVICE:I = 0x4

.field public static final TEMPLATE_INDEX_LOCATION:I = 0x0

.field public static final TEMPLATE_INDEX_MEDIA:I = 0x3

.field public static final TEMPLATE_INDEX_MESSAGING:I = 0x2

.field public static final TEMPLATE_INDEX_PERSONAL:I = 0x1

.field public static final TEMPLATE_TOTAL:I = 0x5

.field static final mOpCategories:[Ljava/lang/CharSequence;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    .line 186
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getOpsForLocationTemplate()[I

    move-result-object v1

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getShowPermsForLocationTemplate()[Z

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[ZLjava/lang/CharSequence;)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 212
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getOpsForPersonalTemplate()[I

    move-result-object v1

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getShowPermsForPersonalTemplate()[Z

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[ZLjava/lang/CharSequence;)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 240
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getOpsForMessagingTemplate()[I

    move-result-object v1

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getShowPermsForMessagingTemplate()[Z

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    aget-object v3, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[ZLjava/lang/CharSequence;)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 302
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getOpsForMediaTemplate()[I

    move-result-object v1

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getShowPermsForMediaTemplate()[Z

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    aget-object v3, v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[ZLjava/lang/CharSequence;)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 341
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getOpsForDeviceTemplate()[I

    move-result-object v1

    invoke-static {}, Lcom/android/settings/applications/AppOpsState;->getShowPermsForDeviceTemplate()[Z

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->mOpCategories:[Ljava/lang/CharSequence;

    aget-object v3, v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[ZLjava/lang/CharSequence;)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 366
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 604
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 79
    const-string v4, "appops"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v2, opSummaries1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportHtcOp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .local v3, opSummaries2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .end local v3           #opSummaries2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 108
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .local v0, opLabels1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportHtcOp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v1, opLabels2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    .end local v1           #opLabels2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 127
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .parameter
    .parameter "pkgOps"
    .parameter "appEntry"
    .parameter "opEntry"
    .parameter "allowMerge"
    .parameter "switchOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 627
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 628
    .local v2, last:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 629
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 630
    .local v3, lastExe:Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 631
    .local v1, entryExe:Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 634
    invoke-virtual {v2, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 648
    .end local v1           #entryExe:Z
    .end local v2           #last:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3           #lastExe:Z
    :goto_2
    return-void

    .line 629
    .restart local v2       #last:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 630
    .restart local v3       #lastExe:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 639
    .end local v2           #last:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3           #lastExe:Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 640
    .local v0, entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 644
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local v0           #entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 647
    .restart local v0       #entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "packageName"
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .line 656
    .local p2, appEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 657
    .local v0, appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 658
    if-nez p4, :cond_0

    .line 660
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 668
    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .end local v0           #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 669
    .restart local v0       #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 670
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 672
    :goto_0
    return-object v2

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static getIndexByOp(I)I
    .locals 2
    .parameter "op"

    .prologue
    .line 831
    move v0, p0

    .line 833
    .local v0, index:I
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportHtcOp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-static {p0}, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->opToIndex(I)I

    move-result v0

    .line 837
    :cond_0
    return v0
.end method

.method public static getOpsForDeviceTemplate()[I
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getOpsForLocationTemplate()[I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getOpsForMediaTemplate()[I
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getOpsForMessagingTemplate()[I
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 247
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportHtcOp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x11

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x12

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x13

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput v2, v0, v1

    sget v1, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_SEND_MMS:I

    aput v1, v0, v3

    const/16 v1, 0xa

    sget v2, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_READ_MMS:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_WRITE_MMS:I

    aput v2, v0, v1

    .line 262
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getOpsForPersonalTemplate()[I
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getShowPermsForDeviceTemplate()[Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static getShowPermsForLocationTemplate()[Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getShowPermsForMediaTemplate()[Z
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0xd

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getShowPermsForMessagingTemplate()[Z
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportHtcOp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/16 v0, 0xc

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    goto :goto_0

    .line 276
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 290
    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static getShowPermsForPersonalTemplate()[Z
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .parameter "tpl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 29
    .parameter "tpl"
    .parameter "uid"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 683
    .local v17, context:Landroid/content/Context;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 684
    .local v14, appEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v25, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v24, permOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0x2e

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 689
    .local v22, opToOrder:[I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 690
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v2, v2, v19

    if-eqz v2, :cond_2

    .line 691
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v23

    .line 692
    .local v23, perm:Ljava/lang/String;
    if-eqz v23, :cond_1

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 693
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    invoke-static {v2}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v2

    aput v19, v22, v2

    .line 689
    .end local v23           #perm:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 706
    .restart local v23       #perm:Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 707
    sget-object v2, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " This OP doesn\'t have permission! - OP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v8, v8, v19

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", summary: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v9, v9, v19

    invoke-static {v9}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v9, v9, v19

    invoke-static {v9}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 714
    .end local v23           #perm:Ljava/lang/String;
    :cond_2
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 715
    sget-object v2, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " This OP is not showed! - OP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v8, v8, v19

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", summary: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v9, v9, v19

    invoke-static {v9}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v9, v9, v19

    invoke-static {v9}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 723
    :cond_3
    if-eqz p3, :cond_5

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v7}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v28

    .line 729
    .local v28, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-eqz v28, :cond_9

    .line 730
    const/16 v19, 0x0

    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 731
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 732
    .local v4, pkgOps:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v2, v7}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v5

    .line 733
    .local v5, appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v5, :cond_6

    .line 730
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 726
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v28           #pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v2, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v28

    .restart local v28       #pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .line 736
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .restart local v5       #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    :cond_6
    const/16 v20, 0x0

    .local v20, j:I
    :goto_4
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 737
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 744
    .local v6, opEntry:Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_7

    const/4 v7, 0x1

    :goto_5
    if-nez p3, :cond_8

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 736
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 744
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v2

    aget v8, v22, v2

    goto :goto_6

    .line 753
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v6           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .end local v20           #j:I
    :cond_9
    if-eqz p3, :cond_b

    .line 754
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v16, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v27

    .line 757
    .local v27, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v27           #pi:Landroid/content/pm/PackageInfo;
    :goto_7
    const/16 v19, 0x0

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_14

    .line 766
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 767
    .local v15, appInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v2, v7}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v5

    .line 769
    .restart local v5       #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v5, :cond_c

    .line 765
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 761
    .end local v5           #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v15           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 762
    .local v26, permsArray:[Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .restart local v16       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_7

    .line 772
    .end local v26           #permsArray:[Ljava/lang/String;
    .restart local v5       #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    .restart local v15       #appInfo:Landroid/content/pm/PackageInfo;
    :cond_c
    const/16 v18, 0x0

    .line 773
    .local v18, dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v4, 0x0

    .line 774
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 775
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_9
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_a

    .line 776
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_e

    .line 777
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v20

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e

    .line 775
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 786
    :cond_e
    const/16 v21, 0x0

    .local v21, k:I
    :goto_a
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_d

    .line 787
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v20

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 786
    :cond_f
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 792
    :cond_10
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 795
    if-nez v18, :cond_11

    .line 796
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .restart local v18       #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v7, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 801
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    :cond_11
    new-instance v6, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 803
    .restart local v6       #opEntry:Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    if-nez p3, :cond_12

    const/4 v7, 0x1

    :goto_c
    if-nez p3, :cond_13

    const/4 v8, 0x0

    :goto_d
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v2

    aget v8, v22, v2

    goto :goto_d

    .line 820
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v6           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .end local v15           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v18           #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v20           #j:I
    .end local v21           #k:I
    :cond_14
    sget-object v2, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 827
    return-object v3

    .line 758
    :catch_0
    move-exception v2

    goto/16 :goto_7
.end method
