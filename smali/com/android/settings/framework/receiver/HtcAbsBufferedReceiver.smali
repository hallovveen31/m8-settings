.class public abstract Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcAbsBufferedReceiver.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mAllowQueue:Z

.field private volatile mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

.field private mLastIntent:Landroid/content/Intent;

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQueueLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueueLocker:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueueLocker:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    iput-boolean p2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    return-void
.end method

.method private chargeIntent(Landroid/content/Intent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueueLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": has been saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private declared-synchronized dischargeIntents()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindIntentStreamListener(...)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - mIntentStreamListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - mAllowQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - mQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    if-eqz v2, :cond_1

    const-string v2, "not null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - mLastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    if-eqz v2, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueueLocker:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-virtual {p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;->onIntentReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_3
    const-string v2, "null"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    :cond_2
    sget-object v2, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected exception happened. The intent should not be null."

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-virtual {p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;->onIntentReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": has been delivered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit p0

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final bindIntentStreamListener(Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-direct {p0}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->dischargeIntents()V

    goto :goto_0
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mLastIntent:Landroid/content/Intent;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v1, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> onReceive(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - mIntentStreamListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - mAllowQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - mQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_3

    const-string v1, "not null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;->onIntentReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "<< onReceive(...)"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "null"

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->chargeIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->dischargeIntents()V

    goto :goto_1
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    return-void
.end method

.method public setAllowQueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mAllowQueue:Z

    return-void
.end method

.method public final unbindIntentStreamListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;->mIntentStreamListener:Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;

    return-void
.end method
