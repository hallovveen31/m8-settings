.class Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$2;
.super Landroid/os/storage/StorageEventListener;
.source "HtcMediaFormatConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStorageStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t oldState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$2;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->updateStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$400(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    .line 414
    return-void
.end method
