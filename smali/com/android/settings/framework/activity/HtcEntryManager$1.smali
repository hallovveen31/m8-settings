.class final Lcom/android/settings/framework/activity/HtcEntryManager$1;
.super Ljava/lang/Object;
.source "HtcEntryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/HtcEntryManager;->startManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncLoadingAllWrapHeaders: local-thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$100(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> asyncLoadingAllWrapHeaders$.run()\n - #(sWrapHeaders): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getPartialWrapHeaders()Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$100(Ljava/lang/String;)V

    .line 87
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/content/res/HtcAssetManager;->createAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$300()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$202(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 92
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$300()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/HtcEntryManager;->onRefresh(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$400(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "<< asyncLoadingAllWrapHeaders$.run()"

    #calls: Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->access$100(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method
