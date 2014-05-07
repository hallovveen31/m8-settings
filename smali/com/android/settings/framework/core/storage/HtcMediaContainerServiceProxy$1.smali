.class Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;
.super Ljava/lang/Object;
.source "HtcMediaContainerServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> onServiceConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$100(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    #setter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v2}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$202(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mImcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    #getter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$200(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$100(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    #getter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$400(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->PUBLIC_MESSAGE_ID:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    #getter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$200(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->broadcastOnServiceConnectedEventInForeground(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< onServiceConnected(...)\n - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$100(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$202(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;->this$0:Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    #getter for: Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->access$400(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->PUBLIC_MESSAGE_ID:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->broadcastOnServiceDisconnectedEventInForeground(Ljava/lang/Object;)V

    return-void
.end method
