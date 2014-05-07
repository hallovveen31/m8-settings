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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mSubTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final acquireNonUiHandlerFailed(Ljava/lang/String;)V
    .locals 4

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

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final acquireUiHandlerFailed(Ljava/lang/String;)V
    .locals 4

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

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final addPreferenceInBackgroundTo(Ljava/lang/Object;)V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x17
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "bindServiceInForeground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final broadcastOnServiceConnectedEventInForeground(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x32
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x33
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiCallSuperAlarm:Z

    :goto_0
    if-eqz v0, :cond_1

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

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiCallSuperAlarm:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getNonUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getSubTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mSubTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final initializeInBackground()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "initializeInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyAllInBackground(Ljava/lang/Object;)V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onClickInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final performClickInForeground(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x22
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x18
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiCallSuperAlarm:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiCallSuperAlarm:Z

    goto :goto_0
.end method

.method public final setCheckedInForeground(Z)V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x19
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x20
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

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

    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x11
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x21
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x15
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x17
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x16
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x12
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x18
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "syncValueFromDataSourceInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final syncValueToDataSourceInBackground(Ljava/lang/Object;)V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x14
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcMessageDispatcher;->mOwner:Ljava/lang/Object;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
