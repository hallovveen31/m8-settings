.class Lcom/android/settings/framework/core/storage/HtcStorageVolume;
.super Landroid/os/storage/StorageVolume;
.source "HtcStorageVolume.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;
.implements Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.implements Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;
.implements Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field protected static final EMPTY_BOOLEAN_RESULT:Z = false

.field protected static final EMPTY_INTEGER_RESULT:I = 0x0

.field protected static final EMPTY_STRING_RESULT:Ljava/lang/String; = ""

.field private static final LOCAL_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final QUEUE_LOCKER:Ljava/lang/Object;

.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

.field private mBufferedMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDependencyPaths:[Ljava/lang/String;

.field private volatile mEncryptor:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

.field private mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

.field private final mMediaScannerEventReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

.field private final mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

.field private mNonUiHandler:Landroid/os/Handler;

.field private final mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

.field private final mStatfs:Lcom/android/settings/framework/core/storage/HtcStatFs;

.field private final mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V
    .locals 11

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->QUEUE_LOCKER:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v0, Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/response/HtcResponser;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mEncryptor:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'metadata\' should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStatFs;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcStatFs;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStatfs:Lcom/android/settings/framework/core/storage/HtcStatFs;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->setOnStorageEventListener(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;)V

    new-instance v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaScannerEventReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaScannerEventReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->setOnMediaScannerEventListener(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/storage/HtcStorageVolume;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->QUEUE_LOCKER:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getMessageWhatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageWhatName(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_UNKNOWN(what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "MESSAGE_ON_STORAGE_STATE_CHANGED"

    goto :goto_0

    :sswitch_1
    const-string v0, "MESSAGE_ON_MEDIA_SCANNER_STATE_CHANGED"

    goto :goto_0

    :sswitch_2
    const-string v0, "MESSAGE_GET_TOTAL_AVAILABLE_SPACE"

    goto :goto_0

    :sswitch_3
    const-string v0, "MESSAGE_GET_APPS_SPACE"

    goto :goto_0

    :sswitch_4
    const-string v0, "MESSAGE_GET_APPS_PARTIAL_SPACE"

    goto :goto_0

    :sswitch_5
    const-string v0, "MESSAGE_GET_MEDIA_FILES_SPACE"

    goto :goto_0

    :sswitch_6
    const-string v0, "MESSAGE_MOUNT"

    goto :goto_0

    :sswitch_7
    const-string v0, "MESSAGE_UNMOUNT"

    goto :goto_0

    :sswitch_8
    const-string v0, "MESSAGE_FORMAT"

    goto :goto_0

    :sswitch_9
    const-string v0, "MESSAGE_ENCRYPT"

    goto :goto_0

    :sswitch_a
    const-string v0, "MESSAGE_DECRYPT"

    goto :goto_0

    :sswitch_b
    const-string v0, "MESSAGE_REFRESH"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_a
        0x63 -> :sswitch_b
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requireDependencyPaths()V
    .locals 6

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mDependencyPaths:[Ljava/lang/String;

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getRawStorageVolumes()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mDependencyPaths:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mDependencyPaths:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendBufferedMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume$2;-><init>(Lcom/android/settings/framework/core/storage/HtcStorageVolume;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->QUEUE_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mBufferedMessageQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf Enqueue message: \n - what: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getMessageWhatName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n - message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;)V

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final acquireNonUiHandlerFailed(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

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

    const-string v2, ". You may forget to register the volume\'s callback."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    move-result v0

    return v0
.end method

.method public broadcast(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    return-void
.end method

.method public final canEncrypt()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canEncrypt()Z

    move-result v0

    return v0
.end method

.method public clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 2
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
        averageTime = "0.005 (ms)"
        device = "Dlx-Sense45-JB"
        round = 0x7a120L
        totalTime = "2518 (ms)"
    .end annotation

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public final decrypt(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->decrypt(Ljava/lang/String;Z)V

    return-void
.end method

.method public final decrypt(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->decrypt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final encrypt(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->encrypt(Ljava/lang/String;Z)V

    return-void
.end method

.method public final encrypt(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->encrypt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final format()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->format(Z)Z

    move-result v0

    return v0
.end method

.method public format(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeFormatter;->format(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppsSpace()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependencyPaths()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->requireDependencyPaths()V

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mDependencyPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mEncryptor:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->getEncryptor(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mEncryptor:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mEncryptor:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getIndex()I

    move-result v0

    return v0
.end method

.method public getMediaFilesSpace()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected getMetadata()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    return-object v0
.end method

.method public final getNonUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 4

    const-wide/16 v2, -0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getTotalAvailableSpace(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>(JJ)V

    goto :goto_0
.end method

.method public getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStatfs:Lcom/android/settings/framework/core/storage/HtcStatFs;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        value = {
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.31 (ms)"
                description = "path: /data (phone storage)...test1"
                device = "EvitareUL-JB-Sense45"
                round = 0x186a0L
                totalTime = "31138 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.31 (ms)"
                description = "path: /data"
                device = "Jewel-JB-Sense45"
                round = 0x186a0L
                totalTime = "17 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.28 (ms)"
                description = "path: /mnt/sdcard"
                device = "Jewel-JB-Sense45"
                round = 0x186a0L
                totalTime = "27510 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.29 (ms)"
                description = "path: /mnt/sdcard/ext_sd"
                device = "Jewel-JB-Sense45"
                round = 0x186a0L
                totalTime = "28933 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.28 (ms)"
                description = "path: /mnt/usb"
                device = "Jewel-JB-Sense45"
                round = 0x186a0L
                totalTime = "28332 (ms)"
            .end subannotation
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->isMountable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to getState()"

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "removed"

    goto :goto_0
.end method

.method public final getTotalAvailableSpace()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    return-object v0
.end method

.method public getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    return-object v0
.end method

.method public final getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStatfs:Lcom/android/settings/framework/core/storage/HtcStatFs;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>(JJ)V

    goto :goto_0
.end method

.method public getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    return-object v0
.end method

.method public hasDependencyPaths()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->requireDependencyPaths()V

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mDependencyPaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEncrypted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isMountable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->isMountable()Z

    move-result v0

    return v0
.end method

.method public final isPrimary()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecondary()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTertiary()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMetadata:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final mount()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mount(Z)Z

    move-result v0

    return v0
.end method

.method public mount(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeMounter;->mount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->removeAllOnResponseListeners()V

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->stopGettingAppsSpace()V

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->stopGettingMediaFilesSpace()V

    return-void
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendBufferedMessages()V

    return-void
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getMessageWhatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v1, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/os/response/HtcResponser;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->start()V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;-><init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/os/response/HtcResponser;)V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->start()V

    goto :goto_1

    :sswitch_5
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeMounter;->mount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeMounter;->unmount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeFormatter;->format(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->encrypt(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_9
    iget-object v1, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->decrypt(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_a
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x10 -> :sswitch_7
        0x11 -> :sswitch_8
        0x12 -> :sswitch_9
        0x63 -> :sswitch_a
    .end sparse-switch
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 2

    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->PUBLIC_MESSAGE_ID:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v5

    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaContainerService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStatfs:Lcom/android/settings/framework/core/storage/HtcStatFs;

    iget-object v3, v2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs;->setMediaContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v3, v1}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "onMediaScannerStateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;-><init>(Lcom/android/settings/framework/core/storage/HtcStorageVolume;Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onRestartInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->registerListener()V

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaScannerEventReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->unregisterListener()V

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaScannerEventReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    return-void
.end method

.method public onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->path:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "onStorageStateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->acquireNonUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1

    const/16 v0, 0x63

    invoke-direct {p0, v0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public removeAllOnResponseListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/response/HtcResponser;->removeAllOnResponseListeners()V

    return-void
.end method

.method public removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    move-result v0

    return v0
.end method

.method public stopGettingAppsSpace()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mAppsStatistician:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->stop()V

    :cond_0
    return-void
.end method

.method public stopGettingMediaFilesSpace()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mMediaFileClassifier:Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->stop()V

    :cond_0
    return-void
.end method

.method public toDetailedString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v1

    const-string v2, "\n - raw space:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v1

    const-string v2, "\n - display space:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - volumeIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    - isPrimary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->isPrimary()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    - isSecondary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->isSecondary()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    - isTertiary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->isTertiary()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - isEmulated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - isRemovable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n - hasSubStorageVolumes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getDependencyPaths()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->hasDependencyPaths()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getDependencyPaths()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    - subVolumes["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\n]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final unmount()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->unmount(Z)Z

    move-result v0

    return v0
.end method

.method public unmount(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeMounter;->unmount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
