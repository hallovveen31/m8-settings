.class public Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcBoomSoundWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;,
        Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BT_DEVICE_HTC_BOOM_BASS:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothStream:Z

.field private mBtDevice:I

.field private mBtState:I

.field private mContext:Landroid/content/Context;

.field private mGlobalEffect:I

.field private mHeadsetState:I

.field private mHeadsetStream:Z

.field private mHeadsetType:I

.field private mIfAudioManager:Landroid/media/HtcIfAudioManager;

.field private mIsA2dpConnected:Z

.field private mIsDualSpeaker:Z

.field private mIsLicenseValid:Z

.field private mIsMiracast:Z

.field private mLicenseProperty:Ljava/lang/String;

.field private mWiredHdmiMode:Z

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWirelessHdmiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    iput-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    iput-object p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    return p1
.end method

.method private checkGlobalEffect()V
    .locals 2

    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    sparse-switch v0, :sswitch_data_0

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setWidgetEnabled: false]Others, mGlobalEffect=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF]Others"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    :goto_0
    return-void

    :sswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "[onHandleStateChanged: STATE_ON]GLOBAL_SOUNDEFFECT_SRS"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "[onHandleStateChanged: STATE_OFF]GLOBAL_SOUNDEFFECT_NONE"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStateSummary()Ljava/lang/String;
    .locals 8

    const v7, 0x7f0c013d

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, ""

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0140

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c011b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v6

    const-string v1, ""

    aput-object v1, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c013a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "HTC In-Ear"

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x204026c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0139

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private isMiracastConnected()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/htc/wrap/android/hardware/display/HtcWrapDisplayManager;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v6, "isMiracastConnected(): currentStatus==null"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMiracastConnected(): miracastStatus=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMiracastConnected(): NoSuchMethodError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private lazyInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcIfAudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;-><init>(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBoomSoundState()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->lazyInitialize()V

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "htc.audio.srs.skipprocess"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    const-string v5, "1"

    iget-object v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    :goto_0
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLicenseProperty: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsLicenseValid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getGlobalEffect()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getBeatsHeadset()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetType:I

    iput v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    iput v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->hasBeatsSpeaker()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    iget-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_1

    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->isMiracastConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    :cond_5
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_6

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_6
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_7

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_7
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_8

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_8
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_9

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_9
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_a

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_a
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_b

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_b
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_c

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_c
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_d

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_d
    const/high16 v5, 0x4000

    and-int/2addr v5, v4

    if-lez v5, :cond_e

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_e
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_f

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_f
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_10

    :cond_10
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_11

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    iget v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    if-ne v5, v8, :cond_11

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_11
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_12

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_12
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_13

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_13
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_14

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_14
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_15

    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    :cond_15
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_16

    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_NONE: 800"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_BEATS: 900"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_ERROR: -100"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET: 1000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET2_0: 1004"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET: 1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET2_0: 1005"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.STUDIO_BEATS_HEADSET: 1002"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.PRO_BEATS_HEADSET: 1003"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.OTHER_HEADSET: 1010"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcIfAudioManager.HEADSET_ERROR: -1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATBOX_PORTABLE: 131074"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_GENERIC: 131072"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_PILL: 131075"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_WIRELESS: 131073"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_GENERIC: 65536"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDDOCK: 65537"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDLINK: 65538"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBluetoothStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDualSpeaker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsMiracast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_ANLG_DOCK_HEADSET: 2048"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_AUX_DIGITAL: 1024"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP: 128"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES: 256"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER: 512"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO: 16"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_CARKIT: 64"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_HEADSET: 32"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_DEFAULT: 1073741824"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_DGTL_DOCK_HEADSET: 4096"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_EARPIECE: 1"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_SPEAKER: 2"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_USB_ACCESSORY: 8192"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_USB_DEVICE: 16384"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADPHONE: 8"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADSET: 4"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mA2dp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGlobalEffect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWiredHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessDisplayManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_16
    return-void

    :cond_17
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    goto/16 :goto_0

    :cond_18
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onDestroyInBackground(Landroid/app/Activity;)V

    sget-boolean v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, close A2DP profile proxy"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_INIT:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    return-object v0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0

    check-cast p1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleStateChangedInBackground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$boomsound$HtcBoomSoundState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "STATE_INIT"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "STATE_SYNC"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->updateBoomSoundState()V

    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "[setWidgetEnabled: false] License invalid case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF] License invalid case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLicenseProperty: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsLicenseValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "[setWidgetEnabled: false] Miracast case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF] Miracast case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "[setWidgetEnabled: false]wireless HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF]wireless HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    if-ne v0, v3, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "[setWidgetEnabled: true]headset plugged"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->checkGlobalEffect()V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    if-ne v0, v3, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    if-ne v3, v0, :cond_a

    const-string v0, "[setWidgetEnabled: false] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "[setWidgetEnabled: true] BT A2DP case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "[setWidgetEnabled: false]wired HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF]wired HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "[setWidgetEnabled: true]support boomsound in dual speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :cond_f
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "[setWidgetEnabled: false]speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF]speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "STATE_ON"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "STATE_OFF"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onRebindViewInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "onReceiveInBackground()"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    :cond_1
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    :cond_2
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdmiState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_4
    if-ne v1, v5, :cond_5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    :cond_5
    sget-object v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResumeInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToggleChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const-string v0, "Response Time (Turn on BoomSound)"

    :goto_0
    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherStart(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x386

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    :goto_1
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Response Time (Turn off BoomSound)"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x320

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
