.class Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;
.super Landroid/os/Handler;
.source "HtcTagLockScreenAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderViewTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/16 v4, 0x1b58

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    .line 75
    .local v0, what:I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 76
    const-string v1, "HtcTagLockScreenAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive START_TRACKING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    new-instance v2, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker$1;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;)V

    #setter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$002(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Lcom/htc/reminderview/service/HtcReminderClient;)Lcom/htc/reminderview/service/HtcReminderClient;

    .line 93
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->registerCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/reminderview/service/HtcReminderManager;->registerViewMode(I)V

    .line 95
    const-string v1, "HtcTagLockScreenAgent"

    const-string v2, "registerCallback DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 99
    const-string v1, "HtcTagLockScreenAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive STOP_TRACKING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->unregisterCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #getter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/reminderview/service/HtcReminderManager;->unregisterViewMode(I)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$002(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Lcom/htc/reminderview/service/HtcReminderClient;)Lcom/htc/reminderview/service/HtcReminderClient;

    .line 104
    const-string v1, "HtcTagLockScreenAgent"

    const-string v2, "unregisterCallback DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #calls: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopHandlerThread()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$300(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V

    goto :goto_0
.end method
