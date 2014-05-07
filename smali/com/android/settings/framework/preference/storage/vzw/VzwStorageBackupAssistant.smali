.class public Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "VzwStorageBackupAssistant.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_GET_SUBSCRIPTION_INFO:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private volatile mIsBound:Ljava/lang/Boolean;

.field private final mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Lcom/android/settings/framework/os/HtcMessageDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->TAG:Ljava/lang/String;

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

    return-void
.end method


# virtual methods
.method doBindServiceInBackground()V
    .locals 5

    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBindServiceInBackground(): mIsBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.service.VMMSettingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "The service was bound."

    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "The activity was destroyed!"

    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doUnbindServiceInForeground()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUnbindServiceInForeground: mIsBound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "No need to unbind the service."

    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "The service was unbound."

    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c02d5

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->doUnbindServiceInForeground()V

    return-void
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->onInitializeInBackground(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
