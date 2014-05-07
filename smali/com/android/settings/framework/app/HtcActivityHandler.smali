.class final Lcom/android/settings/framework/app/HtcActivityHandler;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;,
        Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;,
        Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_THREAD_PRIORITY:I

.field private static final MESSAGE_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallbackPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCalled:Z

.field private mFinalDestroyer:Landroid/os/MessageQueue$IdleHandler;

.field private mFinalized:Z

.field private mFragment:Landroid/app/Fragment;

.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field private mIsNonUiHandlerAlive:Z

.field private mIsUiHandlerAlive:Z

.field private mNonUiHandler:Landroid/os/Handler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityHandler;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    sput v0, Lcom/android/settings/framework/app/HtcActivityHandler;->DEFAULT_THREAD_PRIORITY:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsUiHandlerAlive:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z

    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$12;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$12;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalDestroyer:Landroid/os/MessageQueue$IdleHandler;

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    instance-of v1, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->initiailze()V

    return-void

    :cond_0
    const-string v0, "The activity must implement the \'HtcActivtyHandler.Callbacks\' interface."

    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "The activity must implement the \'HtcActivtyHandler.Callbacks\' interface."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsUiHandlerAlive:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z

    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$12;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$12;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalDestroyer:Landroid/os/MessageQueue$IdleHandler;

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    instance-of v1, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->initiailze()V

    return-void

    :cond_0
    const-string v0, "The fragment must implement the \'HtcActivtyHandler.Callbacks\' interface."

    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "The fragment must implement the \'HtcActivtyHandler.Callbacks\' interface."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDisplay()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/app/HtcActivityHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalized:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/app/HtcActivityHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->destroyHandlers()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/framework/app/HtcActivityHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsUiHandlerAlive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsUiHandlerAlive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/os/MessageQueue$IdleHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalDestroyer:Landroid/os/MessageQueue$IdleHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/framework/app/HtcActivityHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z

    return p1
.end method

.method private createHandlers()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private debugMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcPerformanceTimer;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getElapsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - \u25cf the message was executed more than 100 ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getDetailedFragmentLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - elapsedTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    const-string v2, "\n - parcel:ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n - parcel:callStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->callStack:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private destroyHandlers()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private dispatchFinalDestroyer()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$10;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$10;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$11;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$11;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private getDetailedFragmentLog()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - mHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getFragmentLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "\n - mActivity:mFragment:arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v2, "null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ":key_value_format:"

    const-string v3, "args[%1$s] = %2$s"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getFragmentLog()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - mActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - mActivity:mFragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initiailze()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->createHandlers()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logWithPidTid(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDisplay()V
    .locals 8

    const/4 v7, 0x7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-interface {v5}, Lcom/android/settings/framework/app/HtcIInternalHost;->onDisplay()V

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$5;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$5;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/android/settings/framework/app/HtcIInternalHost$OnAddCallbackListener;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost$OnAddCallbackListener;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settings/framework/app/HtcIInternalHost$OnAddCallbackListener;->onAddCallback(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addStickyCallback(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The method addStickyCallback(...) should be called from the main thread!\n - PID/TID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;-><init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The method addStickyCallback(...) should be called from the main thread!\n - PID/TID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected attachActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xb

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>()V

    iput-object v0, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    iput-object p3, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$1;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$1;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>()V

    iput-object v0, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    iput-object p1, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 8

    const/16 v7, 0xa

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$8;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$8;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->dispatchFinalDestroyer()V

    return-void
.end method

.method protected onFinalize()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCalled:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    :goto_0
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$9;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$9;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    const/16 v7, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$6;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$6;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>()V

    iput-object v0, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    iput-object p1, v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onPostResume()V
    .locals 6

    const/4 v5, 0x6

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 6

    const/4 v5, 0x4

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$3;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$3;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$4;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$4;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected onStart()V
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$2;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$2;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 8

    const/16 v7, 0x9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/framework/app/HtcActivityHandler$7;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$7;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;-><init>(Ljava/lang/Object;)V

    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-static {v5, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestHandlers()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method protected runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected runInUIThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
