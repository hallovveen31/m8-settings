.class public abstract Lcom/android/settings/framework/os/HtcCacheDataPreloader;
.super Ljava/lang/Object;
.source "HtcCacheDataPreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCKER:Ljava/lang/Object;

.field private mCacheData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/HtcCacheDataPreloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p0, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mRunnable:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->LOCKER:Ljava/lang/Object;

    return-void
.end method

.method private static getPidTid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 172
    sget-object v0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->getPidTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method


# virtual methods
.method public final asynPreload()V
    .locals 2

    .prologue
    .line 55
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;-><init>(Lcom/android/settings/framework/os/HtcCacheDataPreloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public final getCacheData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mCacheData:Ljava/lang/Object;

    return-object v0
.end method

.method public final setCacheData(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader<TT;>;"
    .local p1, cacheData:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mCacheData:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public final syncPreload(Z)Ljava/lang/Object;
    .locals 4
    .parameter "waitForData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader<TT;>;"
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mCacheData:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mCacheData:Ljava/lang/Object;

    .line 144
    :goto_0
    return-object v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_3

    .line 100
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mThread:Ljava/lang/Thread;

    .line 102
    if-eqz p1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mCacheData:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 122
    :cond_3
    if-eqz p1, :cond_1

    .line 128
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->getPidTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
