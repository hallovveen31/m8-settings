.class public Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcBeatsAudioWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$1;,
        Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;",
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

.field private mBeatsAudioState:I

.field private mBeatsBtState:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothStream:Z

.field private mBtDevice:I

.field private mBtState:I

.field private mGlobalEffect:I

.field private mHeadsetState:I

.field private mHeadsetStream:Z

.field private mIfAudioManager:Landroid/media/HtcIfAudioManager;

.field private mIsA2dpConnected:Z

.field private mSoundEffect:I

.field private mSupportBeatsSpeaker:Z

.field private mWiredHdmiMode:Z

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWirelessHdmiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->TAG:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 92
    iput v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIsA2dpConnected:Z

    .line 148
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIsA2dpConnected:Z

    return p1
.end method

.method private checkGlobalEffect()V
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mGlobalEffect:I

    sparse-switch v0, :sswitch_data_0

    .line 716
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 717
    const-string v0, "[setWidgetEnabled: false]Others"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 718
    const-string v0, "[onHandleStateChanged: STATE_OFF]Others"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 720
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 721
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 724
    :goto_0
    return-void

    .line 703
    :sswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 704
    const-string v0, "[onHandleStateChanged: STATE_ON]GLOBAL_SOUNDEFFECT_BEATS"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 706
    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 709
    :sswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 710
    const-string v0, "[onHandleStateChanged: STATE_OFF]GLOBAL_SOUNDEFFECT_NONE"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 712
    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 701
    nop

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x384 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkSoundEffect()V
    .locals 2

    .prologue
    .line 678
    iget v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSoundEffect:I

    sparse-switch v0, :sswitch_data_0

    .line 693
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSoundEffect: unknown sound effect value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSoundEffect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 680
    :sswitch_0
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 684
    :sswitch_1
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 688
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 689
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 678
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_2
        0x320 -> :sswitch_1
        0x384 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStateSummary()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x2040399

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 727
    const-string v0, ""

    .line 735
    .local v0, summary:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v1, :cond_2

    .line 736
    iget-object v2, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c011b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v3, v6

    const-string v1, ""

    aput-object v1, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 798
    :cond_0
    :goto_1
    return-object v0

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c013a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 742
    :cond_2
    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetState:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    if-eqz v1, :cond_3

    .line 743
    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsAudioState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 745
    :pswitch_1
    const-string v0, "Beats urBeats"

    .line 746
    goto :goto_1

    .line 748
    :pswitch_2
    const-string v0, "Beats Solo"

    .line 749
    goto :goto_1

    .line 751
    :pswitch_3
    const-string v0, "HTC In-Ear"

    .line 752
    goto :goto_1

    .line 758
    :cond_3
    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtState:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    if-eqz v1, :cond_4

    .line 759
    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsBtState:I

    packed-switch v1, :pswitch_data_1

    .line 777
    :goto_2
    iget v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 779
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    goto :goto_1

    .line 761
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040393

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    goto :goto_2

    .line 765
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 767
    goto :goto_2

    .line 769
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    goto :goto_2

    .line 786
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v1, :cond_5

    .line 787
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0139

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 790
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSupportBeatsSpeaker:Z

    if-nez v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040395

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 743
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 759
    :pswitch_data_1
    .packed-switch 0x20001
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 777
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private lazyInitialize()V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcIfAudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 414
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 416
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;-><init>(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 426
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 802
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method private updateBeatsAudioState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->lazyInitialize()V

    .line 160
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getGlobalEffect()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mGlobalEffect:I

    .line 161
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getSoundEffect()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSoundEffect:I

    .line 164
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v5}, Landroid/media/HtcIfAudioManager;->getBeatsHeadset()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsAudioState:I

    .line 167
    iput v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtState:I

    .line 168
    iput v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    .line 171
    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->hasBeatsSpeaker()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSupportBeatsSpeaker:Z

    .line 174
    iget-boolean v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIsA2dpConnected:Z

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 178
    .local v2, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 179
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iput v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtState:I

    .line 180
    invoke-static {v0}, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice;->identifyDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsBtState:I

    .line 181
    iget v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsBtState:I

    if-eqz v5, :cond_14

    .line 225
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_2

    .line 226
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessHdmiMode:Z

    .line 231
    :cond_2
    iget-object v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    .line 233
    .local v4, output:I
    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_3

    .line 234
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 235
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 237
    :cond_3
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_4

    .line 238
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 239
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 241
    :cond_4
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_5

    .line 242
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 243
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 245
    :cond_5
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_6

    .line 246
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 247
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 249
    :cond_6
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_7

    .line 250
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 251
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 253
    :cond_7
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_8

    .line 254
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 255
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 257
    :cond_8
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_9

    .line 258
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 259
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 261
    :cond_9
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_a

    .line 262
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 263
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 265
    :cond_a
    const/high16 v5, 0x4000

    and-int/2addr v5, v4

    if-lez v5, :cond_b

    .line 266
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 267
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 269
    :cond_b
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_c

    .line 270
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 271
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 273
    :cond_c
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_d

    .line 275
    :cond_d
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_e

    .line 276
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 277
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 282
    iget v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    if-ne v5, v8, :cond_e

    .line 283
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 284
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 287
    :cond_e
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_f

    .line 288
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 289
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 291
    :cond_f
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_10

    .line 292
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 293
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 295
    :cond_10
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_11

    .line 296
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 297
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 299
    :cond_11
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_12

    .line 300
    iput-boolean v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    .line 301
    iput-boolean v7, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    .line 304
    :cond_12
    sget-boolean v5, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v5, :cond_13

    .line 305
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_NONE: 800"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 307
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_BEATS: 900"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 309
    const-string v5, "HtcIfAudioManager.GLOBAL_SOUNDEFFECT_ERROR: -100"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 311
    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET: 1000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 313
    const-string v5, "HtcIfAudioManager.UR_BEATS_HEADSET2_0: 1004"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 315
    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET: 1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 317
    const-string v5, "HtcIfAudioManager.SOLO_BEATS_HEADSET2_0: 1005"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 319
    const-string v5, "HtcIfAudioManager.STUDIO_BEATS_HEADSET: 1002"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 321
    const-string v5, "HtcIfAudioManager.PRO_BEATS_HEADSET: 1003"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 323
    const-string v5, "HtcIfAudioManager.OTHER_HEADSET: 1010"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 325
    const-string v5, "HtcIfAudioManager.HEADSET_ERROR: -1001"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 327
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATBOX_PORTABLE: 131074"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 329
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_GENERIC: 131072"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 331
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_PILL: 131075"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 333
    const-string v5, "HtcWrapBluetoothDevice.Beats.BEATS_WIRELESS: 131073"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 335
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_GENERIC: 65536"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 337
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDDOCK: 65537"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 339
    const-string v5, "HtcWrapBluetoothDevice.Bose.BOSE_SOUNDLINK: 65538"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBluetoothStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 344
    const-string v5, "AudioManager.DEVICE_OUT_ANLG_DOCK_HEADSET: 2048"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 346
    const-string v5, "AudioManager.DEVICE_OUT_AUX_DIGITAL: 1024"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 348
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP: 128"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 350
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES: 256"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 352
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER: 512"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 354
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO: 16"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 356
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_CARKIT: 64"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 358
    const-string v5, "AudioManager.DEVICE_OUT_BLUETOOTH_SCO_HEADSET: 32"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 360
    const-string v5, "AudioManager.DEVICE_OUT_DEFAULT: 1073741824"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 362
    const-string v5, "AudioManager.DEVICE_OUT_DGTL_DOCK_HEADSET: 4096"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 364
    const-string v5, "AudioManager.DEVICE_OUT_EARPIECE: 1"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 366
    const-string v5, "AudioManager.DEVICE_OUT_SPEAKER: 2"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 368
    const-string v5, "AudioManager.DEVICE_OUT_USB_ACCESSORY: 8192"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 370
    const-string v5, "AudioManager.DEVICE_OUT_USB_DEVICE: 16384"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 372
    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADPHONE: 8"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 374
    const-string v5, "AudioManager.DEVICE_OUT_WIRED_HEADSET: 4"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mA2dp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGlobalEffect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mGlobalEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSoundEffect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeatsAudioState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsAudioState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeatsBtState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsBtState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWiredHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessDisplayManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 394
    :cond_13
    return-void

    .line 187
    .end local v4           #output:I
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_14
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, deviceName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 193
    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 194
    iput v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    goto/16 :goto_0

    .line 198
    :cond_15
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    iput v8, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
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
    sget-boolean v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 811
    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    .line 816
    :try_start_0
    sget-boolean v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 817
    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, close A2DP profile proxy"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    iput-object v4, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 826
    :cond_2
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 823
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_INIT:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    return-object v0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 571
    const/4 v2, 0x0

    .local v2, isTurningOn:Z
    const/4 v1, 0x0

    .line 572
    .local v1, isOn:Z
    const/4 v0, 0x0

    .line 574
    .local v0, checked:Ljava/lang/Boolean;
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$beatsaudio$HtcBeatsAudioState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 675
    :goto_0
    return-void

    .line 576
    :pswitch_0
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 577
    const-string v3, "STATE_INIT"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 580
    :cond_0
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 581
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 585
    :pswitch_1
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 586
    const-string v3, "STATE_SYNC"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->updateBeatsAudioState()V

    .line 596
    iget-boolean v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWirelessHdmiMode:Z

    if-eqz v3, :cond_3

    .line 597
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 598
    const-string v3, "[setWidgetEnabled: false]wireless HDMI mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 599
    const-string v3, "[onHandleStateChanged: STATE_OFF]wireless HDMI mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 601
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 602
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 604
    :cond_3
    iget v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetState:I

    if-ne v3, v5, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetStream:Z

    if-eqz v3, :cond_5

    .line 606
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 607
    const-string v3, "[setWidgetEnabled: true]headset plugged"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 609
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 610
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->checkGlobalEffect()V

    goto :goto_0

    .line 611
    :cond_5
    iget v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtState:I

    if-ne v3, v5, :cond_b

    iget-boolean v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBluetoothStream:Z

    if-eqz v3, :cond_b

    .line 614
    iget v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBeatsBtState:I

    const v4, 0x20003

    if-ne v3, v4, :cond_7

    .line 615
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 616
    const-string v3, "[setWidgetEnabled: false]bt headset mode with BeatsPill"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 617
    const-string v3, "[onHandleStateChanged: STATE_ON]bt headset mode with BeatsPill"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 619
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 620
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_0

    .line 625
    :cond_7
    iget v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mBtDevice:I

    if-ne v3, v5, :cond_9

    .line 626
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 627
    const-string v3, "[setWidgetEnabled: false]bt headset mode with BoomBass"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 629
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 630
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->checkSoundEffect()V

    goto/16 :goto_0

    .line 634
    :cond_9
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 635
    const-string v3, "[setWidgetEnabled: true]bt headset plugged"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 637
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 638
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->checkGlobalEffect()V

    goto/16 :goto_0

    .line 639
    :cond_b
    iget-boolean v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    if-eqz v3, :cond_d

    .line 640
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 641
    const-string v3, "[setWidgetEnabled: false]wired HDMI mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 642
    const-string v3, "[onHandleStateChanged: STATE_OFF]wired HDMI mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 644
    :cond_c
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 645
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto/16 :goto_0

    .line 646
    :cond_d
    iget-boolean v3, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mSupportBeatsSpeaker:Z

    if-eqz v3, :cond_f

    .line 648
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 649
    const-string v3, "[setWidgetEnabled: true]support beat in speaker mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 651
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->checkGlobalEffect()V

    goto/16 :goto_0

    .line 654
    :cond_f
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 655
    const-string v3, "[setWidgetEnabled: false]speaker mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 656
    const-string v3, "[onHandleStateChanged: STATE_OFF]speaker mode"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 658
    :cond_10
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetEnabled(Z)V

    .line 659
    sget-object v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto/16 :goto_0

    .line 663
    :pswitch_2
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 664
    const-string v3, "STATE_ON"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 666
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 669
    :pswitch_3
    sget-boolean v3, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_12

    .line 670
    const-string v3, "STATE_OFF"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 672
    :cond_12
    invoke-direct {p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->getStateSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 574
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
    .line 435
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 1

    .prologue
    .line 519
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "onRebindViewInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 522
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 523
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "onReceiveInBackground()"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mHeadsetState:I

    .line 477
    :cond_1
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    iput-boolean v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    .line 481
    :cond_2
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    iput-boolean v4, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    .line 486
    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 487
    iput-boolean v4, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    .line 489
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 490
    .local v1, hdmiState:I
    sget-boolean v2, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdmiState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 494
    :cond_4
    if-ne v1, v5, :cond_5

    .line 495
    iput-boolean v5, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mWiredHdmiMode:Z

    .line 501
    .end local v1           #hdmiState:I
    :cond_5
    sget-object v2, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 502
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 430
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 431
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2
    .parameter "newState"

    .prologue
    .line 527
    sget-boolean v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 528
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

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, itemName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    if-eqz p1, :cond_2

    .line 539
    const-string v0, "Response Time (Turn on Beats audio)"

    .line 543
    :goto_0
    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherStart(Ljava/lang/String;)V

    .line 547
    :cond_0
    if-eqz p1, :cond_3

    .line 549
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x384

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 552
    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 561
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    .line 564
    :cond_1
    return-void

    .line 541
    :cond_2
    const-string v0, "Response Time (Turn off Beats audio)"

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIfAudioManager:Landroid/media/HtcIfAudioManager;

    const/16 v2, 0x320

    const-string v3, "com.android.settings"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 558
    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 439
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v0, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v0, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method protected setWidgetIconColorInForeground(Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "icon"
    .parameter "toggled"

    .prologue
    .line 832
    if-nez p1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 839
    :cond_0
    if-eqz p2, :cond_1

    .line 840
    const v0, 0x7f02014d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 842
    :cond_1
    const v0, 0x7f02014c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected supportIconFilterEffect()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method
