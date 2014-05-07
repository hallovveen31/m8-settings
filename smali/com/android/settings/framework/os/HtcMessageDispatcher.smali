.class public Lcom/android/settings/framework/os/HtcMessageDispatcher;
.super Ljava/lang/Object;
.source "HtcMessageDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mNonUiCallSuperAlarm:Z

.field protected mNonUiHandler:Landroid/os/Handler;

.field protected final mOwner:Ljava/lang/Object;

.field private final mSubTag:Ljava/lang/String;

.field protected mUiCallSuperAlarm:Z

.field protected mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mSubTag:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "owner"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    .line 76
    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    .line 77
    iput-object p3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method


# virtual methods
.method public final acquireNonUiHandlerFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "handleWhat"

    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/os/HtcMessageDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getSubTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the non-UI handler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " to handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 709
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final acquireUiHandlerFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "handleWhat"

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/os/HtcMessageDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getSubTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the UI handler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " to handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 699
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final addPreferenceInBackgroundTo(Ljava/lang/Object;)V
    .locals 4
    .parameter "group"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x17
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPreferenceInBackgroundTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bindServiceInForeground()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x30
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v0, "bindServiceInForeground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final broadcastOnServiceConnectedEventInForeground(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "messageOwner"
    .parameter "service"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x32
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final broadcastOnServiceDisconnectedEventInForeground(Ljava/lang/Object;)V
    .locals 4
    .parameter "messageOwner"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x33
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkCallSuperAlarmState(Ljava/lang/String;)V
    .locals 4
    .parameter "methodName"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, alarm:Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiCallSuperAlarm:Z

    .line 150
    :goto_0
    if-eqz v0, :cond_1

    .line 151
    new-instance v1, Lcom/android/settings/framework/app/HtcSuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "did not call through to super."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/app/HtcSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiCallSuperAlarm:Z

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public final getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getSubTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mSubTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final initializeInBackground()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    const-string v0, "initializeInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyAllInBackground(Ljava/lang/Object;)V
    .locals 4
    .parameter "monitor"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllInBackground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n - monitor hashcode: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onClickInBackground()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x16
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v0, "onClickInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final performClickInForeground(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x22
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performClickInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final removePreferenceInBackgroundFrom(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 4
    .parameter "group"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x18
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePreferenceInBackgroundFrom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallSuperAlarm(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiCallSuperAlarm:Z

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiCallSuperAlarm:Z

    goto :goto_0
.end method

.method public final setCheckedInForeground(Z)V
    .locals 5
    .parameter "checked"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x19
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCheckedInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setDialogTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "dialogTitle"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogTitleInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setEnabledInForeground(Z)V
    .locals 5
    .parameter "enabled"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabledInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    .line 90
    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIconInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSelectableInForeground(Z)V
    .locals 5
    .parameter "selectable"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x21
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectableInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "summary"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSummaryInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSummaryOffInForeground(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "summaryOff"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x17
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSummaryOffInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSummaryOnInForeground(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "summaryOn"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x16
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSummaryOnInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setTitleInForeground(I)V
    .locals 5
    .parameter "titleRes"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTitleInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTitleInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setValueIndexInForeground(I)V
    .locals 5
    .parameter "index"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x18
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValueIndexInForeground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final syncValueFromDataSourceInBackground()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    const-string v0, "syncValueFromDataSourceInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final syncValueToDataSourceInBackground(Ljava/lang/Object;)V
    .locals 4
    .parameter "newValue"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncValueToDataSourceInBackground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final unbindServiceInForeground()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x31
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
