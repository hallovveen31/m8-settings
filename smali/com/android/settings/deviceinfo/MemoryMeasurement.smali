.class public Lcom/android/settings/deviceinfo/MemoryMeasurement;
.super Ljava/lang/Object;
.source "MemoryMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MemoryMeasurement$1;,
        Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field public static final APPS_USED:Ljava/lang/String; = "apps_used"

.field public static final AVAIL_SIZE:Ljava/lang/String; = "avail_size"

.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final LOCAL_LOGV:Z = true

#the value of this static final field might be set in the static constructor
.field static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field public static final TOTAL_SIZE:Ljava/lang/String; = "total_size"

.field private static volatile sInstance:Lcom/android/settings/deviceinfo/MemoryMeasurement;


# instance fields
.field private mExternalAvailSize:J

.field private mExternalTotalSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

.field private mInternalAppsSize:J

.field private mInternalAvailSize:J

.field private mInternalTotalSize:J

.field private mMediaSizes:[J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MemorySettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalTotalSize:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalAvailSize:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendExternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalExactUpdate()V

    return-void
.end method

.method static synthetic access$400()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAppsSize:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalTotalSize:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAvailSize:J

    return-wide p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/MemoryMeasurement;
    .locals 3

    sget-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sInstance:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/settings/deviceinfo/MemoryMeasurement;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sInstance:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/deviceinfo/MemoryMeasurement;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sInstance:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->sInstance:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendExternalApproximateUpdate()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;->updateApproximateExternal(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;->updateApproximateInternal(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalExactUpdate()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    sget-boolean v3, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "MemorySettings"

    const-string v4, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "total_size"

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalTotalSize:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "avail_size"

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAvailSize:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "apps_used"

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAppsSize:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    sget-object v3, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v3, v3, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J

    aget-wide v4, v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;->updateExactInternal(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->cleanUp()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method isSizeOfMiscCategoryNonZero()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureExternal()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public measureInternal()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mHandler:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
