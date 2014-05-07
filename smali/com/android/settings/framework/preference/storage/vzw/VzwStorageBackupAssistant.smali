.class public Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "VzwStorageBackupAssistant.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;


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

    .prologue
    .line 55
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

    .line 58
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    .line 155
    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    .line 155
    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    .line 155
    new-instance v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Lcom/android/settings/framework/os/HtcMessageDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 247
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

    .line 248
    return-void
.end method


# virtual methods
.method doBindServiceInBackground()V
    .locals 5

    .prologue
    .line 133
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 134
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

    .line 137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.service.VMMSettingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    .line 144
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 145
    const-string v1, "The service was bound."

    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    monitor-exit v2

    .line 153
    return-void

    .line 148
    :cond_2
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "The activity was destroyed!"

    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doUnbindServiceInForeground()V
    .locals 3

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 191
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

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    .line 199
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "No need to unbind the service."

    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    monitor-exit v1

    .line 210
    return-void

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mIsBound:Ljava/lang/Boolean;

    .line 205
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "The service was unbound."

    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0c02d5

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->doUnbindServiceInForeground()V

    .line 187
    return-void
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$1;-><init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method
