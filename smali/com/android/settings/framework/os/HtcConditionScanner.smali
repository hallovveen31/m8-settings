.class public abstract Lcom/android/settings/framework/os/HtcConditionScanner;
.super Ljava/lang/Object;
.source "HtcConditionScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mScanningTimes:I

.field private mSuccessful:Z

.field private mTimeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/os/HtcConditionScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcConditionScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    iput p2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    return-void
.end method


# virtual methods
.method protected dumpStates(I)V
    .locals 0

    return-void
.end method

.method protected finish(Z)V
    .locals 0

    return-void
.end method

.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    return v0
.end method

.method public getScanningTimes()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    return v0
.end method

.method public getTimeInterval()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    return v0
.end method

.method public setScanningTimes(I)V
    .locals 2

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const-string v0, "\'scanningTimes\' must be a natural number"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    return-void
.end method

.method public setTimeInterval(I)V
    .locals 2

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const-string v0, "\'timeInterval\' must be a natural number"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    if-ge v1, v2, :cond_1

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->dumpStates(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;->until()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    :cond_1
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->finish(Z)V

    return-void

    :cond_3
    :try_start_0
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/framework/os/HtcConditionScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected abstract until()Z
.end method
