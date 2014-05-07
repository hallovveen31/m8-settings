.class Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcMasterClearPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    const-string v1, "onStorageStateChanged(): SdCardStorage: "

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t oldState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateExternalStorageContainer()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$100(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V

    return-void
.end method
