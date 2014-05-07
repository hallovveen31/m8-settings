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
    .parameter "target"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    .line 20
    iput p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    .line 24
    iput p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 25
    iput p2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    .line 26
    return-void
.end method


# virtual methods
.method public awaitUntilMatchedAndNotified()V
    .locals 3

    .prologue
    .line 29
    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-eq v1, v2, :cond_1

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 40
    :cond_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public countDown()Z
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 97
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    const/4 v0, 0x1

    monitor-exit p0

    .line 103
    :goto_0
    return v0

    .line 101
    :cond_0
    monitor-exit p0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countDownAndDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 118
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v1, v2, :cond_1

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 121
    const/4 v0, 0x1

    monitor-exit p0

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 123
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

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 54
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    const/4 v0, 0x1

    monitor-exit p0

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    monitor-exit p0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countUpAndDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-boolean v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    .line 75
    iget v1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    iget v2, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mTARGET:I

    if-ne v1, v2, :cond_1

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    const/4 v0, 0x1

    monitor-exit p0

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 80
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

    .prologue
    .line 133
    iget v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mCount:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/settings/framework/os/HtcConcurrentCounter;->mEnabled:Z

    .line 150
    return-void
.end method
