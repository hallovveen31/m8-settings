.class public abstract Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcAbstractStorageGroup.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mCallMediaSuperAlarm:Z

.field private mCallRefreshSuperAlarm:Z

.field private mCallStorageSuperAlarm:Z

.field protected mFromOnStopState:Z

.field private mIsStatFsReady:Z

.field private volatile mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mIsStatFsReady:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mIsStatFsReady:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mIsStatFsReady:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private throwSuperNotCalledException(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/settings/framework/app/HtcSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    return-void
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected final getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v2}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallMediaSuperAlarm:Z

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMediaScannerStateChanged(): re-trigger to get size - "

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshMediaFilesInformation()V

    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallRefreshSuperAlarm:Z

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mIsStatFsReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    :cond_0
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "onRefresh(): re-trigger to get size - "

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshMediaFilesInformation()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshAppsInformation()V

    :cond_2
    return-void
.end method

.method public onResponse(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mIsStatFsReady:Z

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_ON_STORAGE_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallStorageSuperAlarm:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallStorageSuperAlarm:Z

    if-eqz v0, :cond_0

    const-string v0, "onStorageStateChanged(EventParams)"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_ON_MEDIA_SCANNER_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallMediaSuperAlarm:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallMediaSuperAlarm:Z

    if-eqz v0, :cond_0

    const-string v0, "onMediaScannerStateChanged(EventParams)"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_REFRESH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallRefreshSuperAlarm:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallRefreshSuperAlarm:Z

    if-eqz v0, :cond_0

    const-string v0, "onRefresh()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStartInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "onStartInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    const-string v0, "onStartInBackground() - 2"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshMediaFilesInformation()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshAppsInformation()V

    goto :goto_0
.end method

.method public onStopInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "onStopInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mFromOnStopState:Z

    return-void
.end method

.method protected onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mCallStorageSuperAlarm:Z

    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v1, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    iget-object v0, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED_READ_ONLY:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "onStorageStateChanged(): re-trigger to get size - "

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshMediaFilesInformation()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->refreshAppsInformation()V

    :cond_2
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0

    return-void
.end method

.method public abstract pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
.end method

.method protected pluginMediaFilesInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportShowMediaInformation(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->support(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    move p3, v2

    :cond_0
    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMusicPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMusicPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-interface {p2, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    add-int/lit8 p3, v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-interface {p2, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-interface {p2, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    add-int/lit8 p3, v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getMediaFilesSpace()V

    :cond_1
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p3}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setOrder(I)V

    invoke-interface {v1, p0}, Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;->setParent(Lcom/htc/preference/HtcPreferenceCategory;)V

    move-object v3, v1

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    return v2
.end method

.method protected refreshAppsInformation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportShowMediaInformation(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "re-trigger to getAppsSpace()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingAppsSpace()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getAppsSpace()V

    :cond_1
    return-void
.end method

.method protected refreshMediaFilesInformation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportShowMediaInformation(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "re-trigger to getMediaFilesSpace()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingMediaFilesSpace()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getMediaFilesSpace()V

    :cond_1
    return-void
.end method
