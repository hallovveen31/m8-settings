.class Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;
.super Ljava/lang/Object;
.source "HtcMediaFileClassifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

.field final synthetic val$starterThraed:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->this$0:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->val$starterThraed:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->this$0:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    #calls: Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->classify()V
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->access$000(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->val$starterThraed:Ljava/lang/Thread;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->val$starterThraed:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;->this$0:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->access$102(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
