.class public Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
.super Ljava/lang/Object;
.source "HtcTagLockScreenAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;,
        Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HANDLER_START_TRACKING:I = 0xc8

.field private static final HANDLER_STOP_TRACKING:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "HtcTagLockScreenAgent"

.field private static sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;


# instance fields
.field private mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventId:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

.field private mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

.field private mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Lcom/htc/reminderview/service/HtcReminderClient;)Lcom/htc/reminderview/service/HtcReminderClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startTagLsNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopHandlerThread()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startHandlerThread()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "HtcTagLockScreenAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHandlerThread :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HtcReminderView Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    .line 144
    :cond_1
    return-void
.end method

.method private startTagLsNotification()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/bluetooth/HtcTagLockScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, tagIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v1, "event_id"

    iget v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mEventId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private stopHandlerThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 150
    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 152
    :cond_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    .line 153
    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    .line 46
    return-void
.end method

.method public startReminderViewTracking(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "eventId"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startHandlerThread()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->sendEmptyMessage(I)Z

    .line 123
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 124
    iput p2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mEventId:I

    .line 125
    return-void
.end method

.method public stopReminderViewTracking()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;->sendEmptyMessage(I)Z

    .line 132
    :cond_0
    return-void
.end method

.method public updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .parameter "device"
    .parameter "newEvent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;->updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V

    .line 50
    :cond_0
    return-void
.end method
