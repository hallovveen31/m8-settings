.class public Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;
.super Ljava/lang/Object;
.source "HtcStorageVolumeResponseAdapter.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallSuperAlarm_onMediaScannerStateChanged:Z

.field private mCallSuperAlarm_onRefresh:Z

.field private mCallSuperAlarm_onStatfsReady:Z

.field private mCallSuperAlarm_onStorageStateChanged:Z

.field private mHostTag:Ljava/lang/String;

.field private mIsStatfsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mHostTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mIsStatfsReady:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mHostTag:Ljava/lang/String;

    :cond_0
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
.method protected isStatfsReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mIsStatfsReady:Z

    return v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mHostTag:Ljava/lang/String;

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
.end method

.method protected onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onMediaScannerStateChanged:Z

    return-void
.end method

.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onRefresh:Z

    return-void
.end method

.method public final onResponse(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MESSAGE_STATFS_READY: "

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->log(Ljava/lang/String;)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStatfsReady:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onStatfsReady()V

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStatfsReady:Z

    if-eqz v0, :cond_0

    const-string v0, "onStatfsReady"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->DEBUG:Z

    if-eqz v0, :cond_2

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

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->log(Ljava/lang/String;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStorageStateChanged:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStorageStateChanged:Z

    if-eqz v0, :cond_0

    const-string v0, "onStorageStateChanged(EventParams)"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->DEBUG:Z

    if-eqz v0, :cond_3

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

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->log(Ljava/lang/String;)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onMediaScannerStateChanged:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onMediaScannerStateChanged:Z

    if-eqz v0, :cond_0

    const-string v0, "onMediaScannerStateChanged(EventParams)"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->DEBUG:Z

    if-eqz v0, :cond_4

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

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->log(Ljava/lang/String;)V

    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onRefresh:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onRefresh:Z

    if-eqz v0, :cond_0

    const-string v0, "onRefresh(ActivityLifecycle)"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->throwSuperNotCalledException(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStatfsReady()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStatfsReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mIsStatfsReady:Z

    return-void
.end method

.method protected onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->mCallSuperAlarm_onStorageStateChanged:Z

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v1, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onStorageStateChangedExceptTransitionStates(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

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
