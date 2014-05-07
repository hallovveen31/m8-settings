.class Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;
.super Ljava/lang/Object;
.source "HtcStorageVolume.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendBufferedMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->QUEUE_LOCKER:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$100(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$200(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$200(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$300(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u25cf Dequeue message: \n - what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    #calls: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getMessageWhatName(I)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$500(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
