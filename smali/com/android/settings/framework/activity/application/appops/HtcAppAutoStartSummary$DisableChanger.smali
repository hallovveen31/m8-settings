.class Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;
.super Landroid/os/AsyncTask;
.source "HtcAppAutoStartSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;Ljava/util/List;)V
    .locals 0
    .parameter "uiInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mUiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 318
    iput-object p2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mList:Ljava/util/List;

    .line 319
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 326
    .local v1, info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, infoPackageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mUiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->mUiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    iget-boolean v3, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->setEnable(Z)V

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1           #info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    .end local v2           #infoPackageName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
