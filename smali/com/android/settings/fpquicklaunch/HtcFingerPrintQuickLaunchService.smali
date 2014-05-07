.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;
.super Landroid/app/Service;
.source "HtcFingerPrintQuickLaunchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final QUICK_LAUNCH_APP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->DEBUG:Z

    const-string v0, "quick_launch_app"

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->QUICK_LAUNCH_APP:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)V

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->getQuickLaunchApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private convertComponentNameFlattenStringToIntentUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getQuickLaunchApp(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v2

    const/4 v9, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getFingerAndSelectionMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    aget-object v9, v1, v8

    :goto_1
    if-eqz v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p1, v10}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    sub-int v10, v8, v2

    aget-object v9, v0, v10

    invoke-direct {p0, v9}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->convertComponentNameFlattenStringToIntentUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    return-object v6
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method
