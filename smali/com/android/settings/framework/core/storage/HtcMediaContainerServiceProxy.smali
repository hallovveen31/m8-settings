.class public Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;
.super Ljava/lang/Object;
.source "HtcMediaContainerServiceProxy.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcDesignPattern;
    value = {
        .enum Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;->DECORATOR:Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;,
        .enum Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;->PROXY:Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field public static final PUBLIC_MESSAGE_ID:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final IMCS_CONNECTION:Landroid/content/ServiceConnection;

.field private volatile mBound:Z

.field private mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mImcs:Lcom/android/internal/app/IMediaContainerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->TAG:Ljava/lang/String;

    .line 53
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->PUBLIC_MESSAGE_ID:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mBound:Z

    .line 76
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy$1;-><init>(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->IMCS_CONNECTION:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;)Lcom/android/settings/framework/os/HtcMessageDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 286
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private onBindInForeground()V
    .locals 4
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
        averageTime = "13.1 (ms)"
        description = "results: 6, 4, \'95\', 3, 3, 3, 3, 5, 3, 7 (ms)"
        device = "EvitaRE"
        round = 0xaL
        totalTime = "131 (ms)"
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 163
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 164
    const-string v1, ">> onBindInForeground()"

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V

    .line 168
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, service:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->IMCS_CONNECTION:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 174
    iput-boolean v3, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mBound:Z

    .line 176
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "<< onBindInForeground()"

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void
.end method

.method private onUnbindInForeground()V
    .locals 2
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
        averageTime = "4.8 (ms)"
        description = "results: 2, 3, 5, \'24\', 3, 1, 4, 2, 2, 2 (ms)"
        device = "EvitaRE"
        round = 0xaL
        totalTime = "48 (ms)"
    .end annotation

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> onUnbindInForeground():mBound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mBound:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->IMCS_CONNECTION:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 194
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 195
    const-string v0, "<< onUnbindInForeground()"

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->log(Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0}, Lcom/android/internal/app/IMediaContainerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 2
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calculateInstalledSize(Ljava/lang/String;Z)J
    .locals 2
    .parameter "packagePath"
    .parameter "isForwardLocked"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public checkExternalFreeStorage(Landroid/net/Uri;Z)Z
    .locals 1
    .parameter "fileUri"
    .parameter "isForwardLocked"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IMediaContainerService;->checkExternalFreeStorage(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    .locals 1
    .parameter "fileUri"
    .parameter "isForwardLocked"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z

    move-result v0

    return v0
.end method

.method public clearDirectory(Ljava/lang/String;)V
    .locals 1
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IMediaContainerService;->clearDirectory(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .parameter "packageURI"
    .parameter "encryptionParams"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .parameter "packageURI"
    .parameter "containerId"
    .parameter "key"
    .parameter "resFileName"
    .parameter "publicResFileName"
    .parameter "isExternal"
    .parameter "isForwardLocked"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystemStats(Ljava/lang/String;)[J
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;
    .locals 1
    .parameter "packagePath"
    .parameter "flags"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    return-object v0
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->onUnbindInForeground()V

    .line 131
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->mDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->bindServiceInForeground()V

    .line 125
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 136
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 139
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    .line 143
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;->onBindInForeground()V

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method
