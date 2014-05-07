.class public Lcom/android/settings/framework/os/HtcConcurrentCounter;
.super Ljava/lang/Object;
.source "HtcConcurrentCounter.java"


# instance fields
.field private volatile mCount:I

.field private mEnabled:Z

.field private final mTARGET:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    iput p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    iput p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iput p2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    return-void
.end method


# virtual methods
.method public awaitUntilMatchedAndNotified()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-eq v1, v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public countDown()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countDownAndDisabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit p0

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countUp()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countUpAndDisabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit p0

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    return-void
.end method
