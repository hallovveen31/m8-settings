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

    .prologue
    .line 31
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

    .line 34
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 49
    iput v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    .line 105
    iput-object p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    return p1
.end method

.method private checkGlobalEffect()V
    .locals 2

    .prologue
    .line 660
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    sparse-switch v0, :sswitch_data_0

    .line 675
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 676
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

    .line 677
    const-string v0, "[onHandleStateChanged: STATE_OFF]Others"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 679
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 680
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 683
    :goto_0
    return-void

    .line 662
    :sswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 663
    const-string v0, "[onHandleStateChanged: STATE_ON]GLOBAL_SOUNDEFFECT_SRS"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 665
    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    .line 668
    :sswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 669
    const-string v0, "[onHandleStateChanged: STATE_OFF]GLOBAL_SOUNDEFFECT_NONE"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 671
    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStateSummary()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0c013d

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 686
    const-string v0, ""

    .line 695
    .local v0, summary:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    if-eqz v1, :cond_0

    .line 696
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

    .line 768
    :goto_0
    return-object v0

    .line 700
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v1, :cond_2

    .line 701
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

    .line 708
    :cond_2
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    if-eqz v1, :cond_3

    .line 709
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 717
    :pswitch_0
    const-string v0, "HTC In-Ear"

    .line 718
    goto :goto_0

    .line 724
    :cond_3
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    if-eqz v1, :cond_4

    .line 743
    iget v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    packed-switch v1, :pswitch_data_1

    .line 750
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

    .line 753
    goto :goto_0

    .line 745
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    goto :goto_0

    .line 755
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v1, :cond_5

    .line 756
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

    .line 759
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    if-eqz v1, :cond_6

    .line 760
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 764
    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_0
    .end packed-switch

    .line 743
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private isMiracastConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 773
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 775
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/display/HtcWrapDisplayManager;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;

    move-result-object v0

    .line 776
    .local v0, currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    if-nez v0, :cond_1

    .line 777
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 778
    sget-object v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v6, "isMiracastConnected(): currentStatus==null"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v0           #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .end local v1           #displayManager:Landroid/hardware/display/DisplayManager;
    :cond_0
    :goto_0
    return v4

    .line 783
    .restart local v0       #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .restart local v1       #displayManager:Landroid/hardware/display/DisplayManager;
    :cond_1
    invoke-virtual {v0}, Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    .line 784
    .local v3, miracastStatus:I
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 785
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

    .line 788
    :cond_2
    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    .line 789
    const/4 v4, 0x1

    goto :goto_0

    .line 791
    .end local v0           #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .end local v1           #displayManager:Landroid/hardware/display/DisplayManager;
    .end local v3           #miracastStatus:I
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/lang/NoSuchMethodError;
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 793
    sget-object v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMiracastConnected(): NoSuchMethodError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_3
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 796
    .end local v2           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v2

    .line 797
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private lazyInitialize()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcIfAudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 361
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 363
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;-><init>(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 373
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 803
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private updateBoomSoundState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->lazyInitialize()V

    .line 113
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 114
    const-string v5, "htc.audio.srs.skipprocess"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    .line 115
    const-string v5, "1"

    iget-object v6, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mLicenseProperty:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 116
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    .line 121
    :goto_0
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 122
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

    .line 123
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

    .line 128
    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getGlobalEffect()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mGlobalEffect:I

    .line 131
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getBeatsHeadset()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetType:I

    .line 134
    iput v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    .line 135
    iput v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    .line 138
    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->hasBeatsSpeaker()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    .line 141
    iget-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 145
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, deviceName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 152
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

    .line 154
    :cond_2
    if-eqz v1, :cond_1

    .line 158
    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 159
    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    .line 172
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_4

    .line 173
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    .line 178
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    .line 179
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->isMiracastConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    .line 184
    :cond_5
    iget-object v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    .line 186
    .local v4, output:I
    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_6

    .line 187
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 188
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 190
    :cond_6
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_7

    .line 191
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 192
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 194
    :cond_7
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_8

    .line 195
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 196
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 198
    :cond_8
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_9

    .line 199
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 200
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 202
    :cond_9
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_a

    .line 203
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 204
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 206
    :cond_a
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_b

    .line 207
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 208
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 210
    :cond_b
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_c

    .line 211
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 212
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 214
    :cond_c
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_d

    .line 215
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 216
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 218
    :cond_d
    const/high16 v5, 0x4000

    and-int/2addr v5, v4

    if-lez v5, :cond_e

    .line 219
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 220
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 222
    :cond_e
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_f

    .line 223
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 224
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 226
    :cond_f
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_10

    .line 228
    :cond_10
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_11

    .line 229
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 230
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 235
    iget v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    if-ne v5, v8, :cond_11

    .line 236
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 237
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 240
    :cond_11
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_12

    .line 241
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 242
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 244
    :cond_12
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_13

    .line 245
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 246
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 248
    :cond_13
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_14

    .line 249
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 250
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 252
    :cond_14
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_15

    .line 253
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    .line 254
    iput-boolean v7, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    .line 257
    :cond_15
    sget-boolean v5, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_16

    .line 258
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_NONE: 800"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 260
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_BEATS: 900"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 262
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_ERROR: -100"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 264
    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET: 1000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 266
    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET2_0: 1004"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 268
    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET: 1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 270
    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET2_0: 1005"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 272
    const-string v5, "HtcIfAudioManager.STUDIO_BEATS_HEADSET: 1002"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 274
    const-string v5, "HtcIfAudioManager.PRO_BEATS_HEADSET: 1003"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 276
    const-string v5, "HtcIfAudioManager.OTHER_HEADSET: 1010"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 278
    const-string v5, "HtcIfAudioManager.HEADSET_ERROR: -1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 280
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATBOX_PORTABLE: 131074"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 282
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_GENERIC: 131072"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 284
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_PILL: 131075"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 286
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_WIRELESS: 131073"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 288
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_GENERIC: 65536"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 290
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDDOCK: 65537"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 292
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDLINK: 65538"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 294
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

    .line 295
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

    .line 296
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

    .line 297
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

    .line 298
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

    .line 299
    const-string v5, "AudioManager.DEVICE_OUT_ANLG_DOCK_HEADSET: 2048"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 301
    const-string v5, "AudioManager.DEVICE_OUT_AUX_DIGITAL: 1024"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 303
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP: 128"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 305
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES: 256"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 307
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER: 512"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 309
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO: 16"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 311
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_CARKIT: 64"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 313
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_HEADSET: 32"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 315
    const-string v5, "AudioManager.DEVICE_OUT_DEFAULT: 1073741824"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 317
    const-string v5, "AudioManager.DEVICE_OUT_DGTL_DOCK_HEADSET: 4096"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 319
    const-string v5, "AudioManager.DEVICE_OUT_EARPIECE: 1"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 321
    const-string v5, "AudioManager.DEVICE_OUT_SPEAKER: 2"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 323
    const-string v5, "AudioManager.DEVICE_OUT_USB_ACCESSORY: 8192"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 325
    const-string v5, "AudioManager.DEVICE_OUT_USB_DEVICE: 16384"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 327
    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADPHONE: 8"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 329
    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADSET: 4"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 332
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

    .line 334
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

    .line 336
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

    .line 337
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

    .line 339
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

    .line 340
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

    .line 342
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

    .line 344
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

    .line 345
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

    .line 347
    :cond_16
    return-void

    .line 119
    .end local v4           #output:I
    :cond_17
    iput-boolean v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    goto/16 :goto_0

    .line 163
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v2       #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_18
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    iput v8, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 808
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onDestroyInBackground(Landroid/app/Activity;)V

    .line 810
    sget-boolean v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 811
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    .line 816
    :try_start_0
    sget-boolean v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 817
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, close A2DP profile proxy"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    iput-object v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 826
    :cond_2
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 823
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_INIT:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    return-object v0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 543
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

    .line 545
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$boomsound$HtcBoomSoundState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 547
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "STATE_INIT"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 551
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 552
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    .line 556
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 557
    const-string v0, "STATE_SYNC"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->updateBoomSoundState()V

    .line 569
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsLicenseValid:Z

    if-nez v0, :cond_3

    .line 570
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 571
    const-string v0, "[setWidgetEnabled: false] License invalid case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 572
    const-string v0, "[onHandleStateChanged: STATE_OFF] License invalid case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 573
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

    .line 574
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

    .line 576
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 577
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_0

    .line 579
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsMiracast:Z

    if-eqz v0, :cond_5

    .line 580
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 581
    const-string v0, "[setWidgetEnabled: false] Miracast case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 582
    const-string v0, "[onHandleStateChanged: STATE_OFF] Miracast case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 584
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 585
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 587
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v0, :cond_7

    .line 588
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 589
    const-string v0, "[setWidgetEnabled: false]wireless HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 590
    const-string v0, "[onHandleStateChanged: STATE_OFF]wireless HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 592
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 593
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 595
    :cond_7
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    if-ne v0, v3, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetStream:Z

    if-eqz v0, :cond_9

    .line 597
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 598
    const-string v0, "[setWidgetEnabled: true]headset plugged"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 600
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 601
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->checkGlobalEffect()V

    goto/16 :goto_0

    .line 602
    :cond_9
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtState:I

    if-ne v0, v3, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBluetoothStream:Z

    if-eqz v0, :cond_b

    .line 603
    iget v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mBtDevice:I

    if-ne v3, v0, :cond_a

    .line 604
    const-string v0, "[setWidgetEnabled: false] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 605
    const-string v0, "[onHandleStateChanged: STATE_OFF] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 607
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 610
    :cond_a
    const-string v0, "[setWidgetEnabled: true] BT A2DP case"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 616
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 618
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v0, :cond_d

    .line 619
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 620
    const-string v0, "[setWidgetEnabled: false]wired HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 621
    const-string v0, "[onHandleStateChanged: STATE_OFF]wired HDMI mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 623
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 624
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 625
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsDualSpeaker:Z

    if-eqz v0, :cond_f

    .line 627
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 628
    const-string v0, "[setWidgetEnabled: true]support boomsound in dual speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 630
    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 631
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 634
    :cond_f
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 635
    const-string v0, "[setWidgetEnabled: false]speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 636
    const-string v0, "[onHandleStateChanged: STATE_OFF]speaker mode"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 638
    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetEnabled(Z)V

    .line 639
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto/16 :goto_0

    .line 643
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 644
    const-string v0, "STATE_ON"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 647
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 650
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 651
    const-string v0, "STATE_OFF"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 654
    :cond_12
    invoke-direct {p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 545
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
    .parameter "activity"

    .prologue
    .line 385
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 1

    .prologue
    .line 488
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "onRebindViewInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 491
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 492
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "onReceiveInBackground()"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 417
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

    .line 420
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mHeadsetState:I

    .line 427
    :cond_1
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    .line 431
    :cond_2
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    iput-boolean v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    .line 436
    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 437
    iput-boolean v4, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    .line 439
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .local v1, hdmiState:I
    sget-boolean v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 441
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

    .line 444
    :cond_4
    if-ne v1, v5, :cond_5

    .line 445
    iput-boolean v5, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mWiredHdmiMode:Z

    .line 478
    .end local v1           #hdmiState:I
    :cond_5
    sget-object v2, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 479
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "onResumeInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V

    .line 380
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 381
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2
    .parameter "newState"

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 497
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

    .line 500
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, itemName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    if-eqz p1, :cond_2

    .line 508
    const-string v0, "Response Time (Turn on BoomSound)"

    .line 512
    :goto_0
    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherStart(Ljava/lang/String;)V

    .line 515
    :cond_0
    if-eqz p1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x386

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 523
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    .line 532
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    .line 535
    :cond_1
    return-void

    .line 510
    :cond_2
    const-string v0, "Response Time (Turn off BoomSound)"

    goto :goto_0

    .line 526
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x320

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 529
    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 389
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v0, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v0, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    return-void
.end method
