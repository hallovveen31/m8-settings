.class Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker$1;
.super Lcom/htc/reminderview/service/HtcReminderClient;
.source "HtcTagLockScreenAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker$1;->this$1:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    invoke-direct {p0}, Lcom/htc/reminderview/service/HtcReminderClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewModeChange(I)V
    .locals 3
    .parameter "viewMode"

    .prologue
    .line 81
    const-string v0, "HtcTagLockScreenAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewModeChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/16 v0, 0x1b58

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker$1;->this$1:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    iget-object v0, v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    #calls: Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startTagLsNotification()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->access$100(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V

    .line 86
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "HtcTagLockScreenAgent"

    const-string v1, ">>>>>>>unlock<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
