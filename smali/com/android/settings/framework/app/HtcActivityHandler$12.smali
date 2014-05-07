.class Lcom/android/settings/framework/app/HtcActivityHandler$12;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1241
    const/4 v0, 0x0

    .line 1244
    .local v0, gainedTicket:Z
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mIsUiHandlerAlive:Z
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$700(Lcom/android/settings/framework/app/HtcActivityHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$900(Lcom/android/settings/framework/app/HtcActivityHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1247
    monitor-enter p0

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$1000(Lcom/android/settings/framework/app/HtcActivityHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z
    invoke-static {v1, v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$1002(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z

    .line 1250
    const/4 v0, 0x1

    .line 1252
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$1000(Lcom/android/settings/framework/app/HtcActivityHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1262
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #setter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z
    invoke-static {v1, v3}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$1102(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z

    .line 1263
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onFinalize()V

    .line 1264
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$1100(Lcom/android/settings/framework/app/HtcActivityHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1265
    new-instance v1, Lcom/android/settings/framework/app/HtcSuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler$12;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;
    invoke-static {v3}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onFinalize()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/app/HtcSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1277
    :cond_2
    return v3
.end method
