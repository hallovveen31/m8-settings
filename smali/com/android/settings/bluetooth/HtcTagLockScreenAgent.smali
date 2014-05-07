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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderClient;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Lcom/htc/reminderview/service/HtcReminderClient;)Lcom/htc/reminderview/service/HtcReminderClient;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startTagLsNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)Lcom/htc/reminderview/service/HtcReminderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopHandlerThread()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
    .locals 2

    const-class v1, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->sInstance:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startHandlerThread()V
    .locals 3

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

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HtcReminderView Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    :cond_1
    return-void
.end method

.method private startTagLsNotification()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/bluetooth/HtcTagLockScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "event_id"

    iget v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mEventId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopHandlerThread()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    return-void
.end method

.method public startReminderViewTracking(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startHandlerThread()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mEventId:I

    return-void
.end method

.method public stopReminderViewTracking()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mReminderViewTracker:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$ReminderViewTracker;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->mCallback:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;->updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    return-void
.end method
