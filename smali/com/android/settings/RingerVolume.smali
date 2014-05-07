.class public Lcom/android/settings/RingerVolume;
.super Lcom/android/settings/HtcVolumeDialog;
.source "RingerVolume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolume$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:I = 0x7f090227

.field private static Debug_volporting:Z = false

.field private static final HTC_PERMISSION_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static LOGD:Z = false

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x65

.field private static final SEEKBAR_HTC_MUTED_RES_ID:[I = null

.field private static final SEEKBAR_HTC_OUTDOOR_RES_ID:I = 0x302002e

.field private static final SEEKBAR_HTC_UNMUTED_RES_ID:[I = null

.field private static final SEEKBAR_HTC_VIBRATE_NAME:Ljava/lang/String; = "icon_btn_profile_light"

.field private static final SEEKBAR_HTC_VIBRATE_RES_ID:I = 0x3020022

.field private static final SEEKBAR_ID:I = 0x7f090229

.field private static final SEEKBAR_MUTED_RES_ID:[I = null

.field private static final SEEKBAR_TITLE_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "RingerVolume"

.field private static final TYPE_CHECKBOX:I = -0x2

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static mStreamAlarmBindSeekBarVolumizerId:I = 0x0

.field private static mStreamMusicBindSeekBarVolumizerId:I = 0x0

.field private static mStreamMute:[Z = null

.field private static mStreamNotificationBindSeekBarVolumizerId:I = 0x0

.field private static mStreamNotificationViewGroup:Landroid/view/ViewGroup; = null

.field private static mSupportUseRingVolumeAsNotifyVolume:Z = false

.field private static mUseRingVolumeAsNotifyVolume:Z = false

.field private static mVolumeKeyBindSeekBarVolumizerId:I = 0x0

.field private static final strKeyActiveProfileid:Ljava/lang/String; = "ringvolume_soundprofile_active_profile_id"

.field private static final strKeySoundProfile:Ljava/lang/String; = "ringvolume_soundprofile_"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

.field private mCurrentThemeId:I

.field private mDockMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcFontScale:F

.field private mLayout:[Landroid/view/View;

.field private mLayoutInitFinish:Z

.field private mListViewGroup:Landroid/view/ViewGroup;

.field private mOldSoundProfileMode:I

.field private mOriginalUseRingVolumeAsNotifyVolume:Z

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mUseRingForNotifyDivider:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x5

    .line 80
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    .line 84
    const-string v0, "volPorting"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/RingerVolume;->Debug_volporting:Z

    .line 88
    sput v2, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    .line 89
    sput v2, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    .line 90
    sput v2, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    .line 91
    sput v2, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    .line 126
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_MUTED_RES_ID:[I

    .line 135
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_UNMUTED_RES_ID:[I

    .line 151
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    .line 172
    new-array v0, v1, [Z

    sput-object v0, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    .line 178
    sput-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    .line 179
    sput-boolean v3, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    return-void

    .line 98
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 108
    :array_1
    .array-data 0x4
        0xa8t 0x2t 0x8t 0x1t
        0xaet 0x2t 0x8t 0x1t
        0x9dt 0x2t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x2t 0x8t 0x1t
    .end array-data

    .line 117
    :array_2
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x1t
        0xact 0x2t 0x8t 0x1t
        0x9ct 0x2t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x2t 0x8t 0x1t
    .end array-data

    .line 126
    :array_3
    .array-data 0x4
        0x20t 0x0t 0x2t 0x3t
        0x2ct 0x0t 0x2t 0x3t
        0xft 0x0t 0x2t 0x3t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x2t 0x3t
    .end array-data

    .line 135
    :array_4
    .array-data 0x4
        0x1et 0x0t 0x2t 0x3t
        0x98t 0x0t 0x8t 0x2t
        0xdt 0x0t 0x2t 0x3t
        0x0t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x2t 0x3t
    .end array-data

    .line 151
    :array_5
    .array-data 0x4
        0xfbt 0xdt 0xct 0x7ft
        0x83t 0xat 0xct 0x7ft
        0xfdt 0xdt 0xct 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xdt 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;-><init>()V

    .line 148
    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    .line 149
    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    .line 160
    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    .line 161
    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    .line 163
    new-instance v0, Lcom/android/settings/RingerVolume$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolume$1;-><init>(Lcom/android/settings/RingerVolume;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    .line 183
    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    .line 185
    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    .line 786
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingerVolume;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/RingerVolume;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    return v0
.end method

.method static synthetic access$1500()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RingerVolume;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400()[Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/RingerVolume;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/RingerVolume;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/RingerVolume;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/AudioManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V

    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 763
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 764
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 766
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    iget-boolean v2, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getStreamType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 763
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 774
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    .line 776
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stop()V

    .line 777
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aput-object v4, v2, v1

    goto :goto_1

    .line 780
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 782
    iput-object v4, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 784
    :cond_4
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z
    .locals 6
    .parameter "audioManger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 984
    const-class v0, Landroid/media/AudioManager;

    .line 985
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 987
    .local v2, isUseRingVolumeForNotify:I
    :try_start_0
    const-string v5, "getNotificationUseRingVolume"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 993
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 991
    throw v1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 993
    goto :goto_0
.end method

.method private getResId(II)I
    .locals 3
    .parameter "htcResId"
    .parameter "defResId"

    .prologue
    .line 972
    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v0, :cond_0

    .line 973
    const-string v0, "RingerVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "htcResId: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), defResId: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    if-nez p1, :cond_1

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private initSeekBarControls(Landroid/view/View;)V
    .locals 17
    .parameter "view"

    .prologue
    .line 455
    const v1, 0x7f09014a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    .line 457
    const-string v1, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/RingerVolume;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 459
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v10, v1, :cond_11

    .line 460
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8

    .line 461
    sget-boolean v1, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportToogleUseRingVolumeForNotify()Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    :cond_0
    sget-boolean v1, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "RingerVolume"

    const-string v2, "Not support toogle UseRingVolumeForNotify"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 467
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v12, v1, v10

    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 469
    .local v12, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz v12, :cond_3

    .line 473
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 475
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 476
    .local v7, chkBoxView:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 477
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 478
    instance-of v1, v7, Landroid/widget/Checkable;

    if-eqz v1, :cond_6

    move-object v9, v7

    .line 479
    check-cast v9, Landroid/widget/Checkable;

    .line 480
    .local v9, htcchkBox:Landroid/widget/Checkable;
    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    invoke-interface {v9, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 486
    .end local v9           #htcchkBox:Landroid/widget/Checkable;
    :goto_2
    new-instance v1, Lcom/android/settings/RingerVolume$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/RingerVolume$3;-><init>(Lcom/android/settings/RingerVolume;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcListItemSingleText;

    .line 545
    .local v15, tx:Lcom/htc/widget/HtcListItemSingleText;
    invoke-virtual {v15, v7}, Lcom/htc/widget/HtcListItemSingleText;->setTag(Ljava/lang/Object;)V

    .line 546
    if-eqz v15, :cond_7

    .line 547
    const v1, 0x7f0c0ad6

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    .line 548
    new-instance v1, Lcom/android/settings/RingerVolume$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/RingerVolume$4;-><init>(Lcom/android/settings/RingerVolume;)V

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemSingleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    .end local v7           #chkBoxView:Landroid/view/View;
    .end local v12           #listItem:Lcom/htc/widget/HtcListItem;
    .end local v15           #tx:Lcom/htc/widget/HtcListItemSingleText;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 618
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->addRingVolumeDivider()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    const v1, 0x7f0400fa

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 622
    .local v8, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 623
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 624
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    .line 625
    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 482
    .end local v8           #divider:Landroid/view/View;
    .restart local v7       #chkBoxView:Landroid/view/View;
    .restart local v12       #listItem:Lcom/htc/widget/HtcListItem;
    :cond_6
    const-string v1, "RingerVolume"

    const-string v2, "chkBoxView NOT instanceof Checkable!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 561
    .restart local v15       #tx:Lcom/htc/widget/HtcListItemSingleText;
    :cond_7
    const-string v1, "RingerVolume"

    const-string v2, "HtcListItemSingleText is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 564
    .end local v7           #chkBoxView:Landroid/view/View;
    .end local v12           #listItem:Lcom/htc/widget/HtcListItem;
    .end local v15           #tx:Lcom/htc/widget/HtcListItemSingleText;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    const v2, 0x7f0400f9

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 566
    .local v13, seekPanel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HtcListItemHeight"

    invoke-static {v1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 568
    .local v14, textTitle:Landroid/widget/TextView;
    if-eqz v14, :cond_9

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    aget v1, v1, v10

    if-lez v1, :cond_9

    .line 569
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    aget v1, v1, v10

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 570
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 571
    .local v4, seekBar:Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v4, v1, v10

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    if-eqz v1, :cond_a

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 578
    :cond_a
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v5, v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/RingerVolume;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v1, v16, v10

    .line 581
    sget v1, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 582
    sput v10, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    goto/16 :goto_3

    .line 584
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    new-instance v2, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v5, v5, v10

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v2, v1, v10

    .line 586
    sget v1, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 587
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 588
    sput v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    .line 593
    :cond_c
    :goto_4
    sget v1, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 594
    sput v10, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    .line 596
    :cond_d
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    check-cast v1, Landroid/view/ViewGroup;

    sput-object v1, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    .line 598
    sget-boolean v1, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v1, :cond_e

    .line 599
    const-string v1, "RingerVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStreamNotificationViewGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_e
    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    if-eqz v1, :cond_f

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_f
    sget v1, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 608
    sput v10, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    goto/16 :goto_3

    .line 589
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 590
    sput v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    goto :goto_4

    .line 632
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    .end local v13           #seekPanel:Landroid/view/View;
    .end local v14           #textTitle:Landroid/widget/TextView;
    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    .line 633
    return-void
.end method

.method private setNotificatioViewEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 923
    sget-boolean v2, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v2, :cond_0

    .line 924
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificatioViewEnabled enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 930
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 935
    :goto_1
    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 936
    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 937
    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 938
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 939
    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 929
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificatioViewEnabled mSeekBars["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :cond_2
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckBoxes buttons["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 943
    :cond_3
    const-string v2, "RingerVolume"

    const-string v3, "setNotificatioViewEnabled mStreamNotificationViewGroup is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_4
    return-void
.end method

.method private static setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    .locals 7
    .parameter "audioManger"
    .parameter "on"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 996
    const-class v0, Landroid/media/AudioManager;

    .line 997
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 998
    .local v3, parms:[Ljava/lang/Class;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1000
    .local v2, mParamObjs1:[Ljava/lang/Object;
    :try_start_0
    const-string v4, "setNotificationUseRingVolume"

    check-cast v3, [Ljava/lang/Class;

    .end local v3           #parms:[Ljava/lang/Class;
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setStreamToMute(I)V
    .locals 3
    .parameter "seekBarVolumizerId"

    .prologue
    .line 915
    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "RingerVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onclick setStreamToMute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_1
    const-string v0, "RingerVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamToMute mSeekBarVolumizer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTransparentBackground()V
    .locals 3

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1065
    .local v0, win:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 1067
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    :cond_0
    return-void
.end method

.method private syncNotificationWithRingerMode(I)V
    .locals 3
    .parameter "ringerMode"

    .prologue
    .line 947
    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "RingerVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncNotificationWithRingerMode ringerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 965
    const-string v0, "RingerVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncNotificationWithRingerMode unknow sound profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void

    .line 955
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->setNotificatioViewEnabled(Z)V

    goto :goto_0

    .line 961
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->setNotificatioViewEnabled(Z)V

    goto :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSlidersAndMutedStates()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStatesInternal(I)V
    .locals 9
    .parameter "i"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 195
    sget-object v3, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v3, p1

    .line 198
    .local v1, streamType:I
    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v3, :cond_0

    if-eq v1, v8, :cond_1

    :cond_0
    if-gez v1, :cond_2

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 201
    .local v0, muted:Z
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 203
    .local v2, volume:I
    :goto_1
    if-eq v1, v6, :cond_3

    if-eq v1, v8, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    :cond_3
    if-nez v2, :cond_4

    .line 205
    const/4 v0, 0x1

    .line 206
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 207
    const-string v3, "RingerVolume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlidersAndMutedStatesInternal stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is mute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4
    sget-object v3, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    aput-boolean v0, v3, p1

    .line 211
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_5

    .line 212
    const-string v3, "RingerVolume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlidersAndMutedStatesInternal stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is mute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_5
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    if-eqz v3, :cond_8

    .line 217
    sget v3, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 218
    const-string v3, "RingerVolume"

    const-string v4, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore vibrate mode /outdoor mode icon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_6
    sget v3, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v3, p1, :cond_10

    .line 222
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 266
    :cond_7
    :goto_2
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_8

    .line 267
    const-string v3, "RingerVolume"

    const-string v4, "mCheckBoxes setImageResource stream done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 278
    if-eq v1, v8, :cond_9

    if-eq v1, v6, :cond_9

    if-ne v1, v7, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    .line 280
    const/4 v2, 0x0

    .line 281
    if-ne v1, v7, :cond_a

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 282
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 285
    :cond_a
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 201
    .end local v2           #volume:I
    :cond_b
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto/16 :goto_1

    .line 224
    .restart local v2       #volume:I
    :pswitch_0
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_c

    .line 225
    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_NORMAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_c
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_UNMUTED_RES_ID:[I

    aget v4, v4, p1

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 229
    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    .line 231
    invoke-direct {p0, v7}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto :goto_2

    .line 235
    :pswitch_1
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_d

    .line 236
    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_SILENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_d
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_MUTED_RES_ID:[I

    aget v4, v4, p1

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 239
    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    .line 241
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

    .line 245
    :pswitch_2
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_e

    .line 246
    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_VIBRATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_e
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    const v4, 0x3020022

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 250
    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    .line 252
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

    .line 256
    :pswitch_3
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_f

    .line 257
    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_OUTDOOR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_f
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    const v4, 0x302002e

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 260
    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    .line 262
    invoke-direct {p0, v6}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

    .line 270
    :cond_10
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v4, v3, p1

    if-eqz v0, :cond_11

    sget-object v3, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_MUTED_RES_ID:[I

    aget v3, v3, p1

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v3, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v3

    :goto_4
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    goto/16 :goto_3

    :cond_11
    sget-object v3, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_UNMUTED_RES_ID:[I

    aget v3, v3, p1

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v3, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v3

    goto :goto_4

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityStop()V
    .locals 6

    .prologue
    .line 685
    invoke-super {p0}, Lcom/android/settings/HtcVolumeDialog;->onActivityStop()V

    .line 687
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 688
    .local v4, vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    .line 687
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v4           #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 691
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 692
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 694
    :cond_2
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onBindDialogView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    .line 338
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 339
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 341
    .local v4, htcDimension_m2:I
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "HtcListItemHeight"

    invoke-static {v10, v11}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v0, v10, v4

    .line 344
    .local v0, buttonWidth:I
    sget-boolean v10, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v10, :cond_0

    .line 345
    const-string v10, "RingerVolume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVoiceCapable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    .line 349
    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->initSeekBarControls(Landroid/view/View;)V

    .line 350
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    .line 353
    sget-boolean v10, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v10, :cond_1

    .line 354
    const-string v10, "RingerVolume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mStreamMusicBindSeekBarVolumizerId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mVolumeKeyBindSeekBarVolumizerId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mStreamNotificationBindSeekBarVolumizerId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mStreamAlarmBindSeekBarVolumizerId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    sget v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 359
    const-string v10, "RingerVolume"

    const-string v11, "***********mVolumeKeyBindSeekBarVolumizerId did not init..."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mode_ringer_streams_affected"

    const/16 v12, 0x24

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 367
    .local v8, silentableStreams:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    .line 368
    const-string v10, "RingerVolume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "++setOnClickListener i: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v10, v10, v5

    if-nez v10, :cond_3

    .line 367
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    :cond_3
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v10, v10, v5

    const v11, 0x7f090227

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    .line 374
    .local v1, checkbox:Lcom/htc/widget/HtcImageButton;
    if-eqz v1, :cond_4

    .line 375
    const-string v10, "RingerVolume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setOnClickListener i: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v1}, Lcom/htc/widget/HtcImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 378
    .local v6, param:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcImageButton;->setTag(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 385
    .end local v6           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aput-object v1, v10, v5

    goto :goto_1

    .line 391
    .end local v1           #checkbox:Lcom/htc/widget/HtcImageButton;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V

    .line 398
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v10, :cond_6

    .line 399
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v10, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    new-instance v10, Lcom/android/settings/RingerVolume$2;

    invoke-direct {v10, p0}, Lcom/android/settings/RingerVolume$2;-><init>(Lcom/android/settings/RingerVolume;)V

    iput-object v10, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "com.htc.permission.APP_PLATFORM"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v3, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 435
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_6
    sget-boolean v10, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v10, :cond_7

    .line 437
    sget v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ltz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    sget v11, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_7

    .line 438
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    sget v11, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v10, v10, v11

    const v11, 0x7f09001e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 440
    .local v7, ringVolumeTitle:Landroid/widget/TextView;
    if-eqz v7, :cond_7

    .line 441
    const v10, 0x204029a

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 446
    .end local v7           #ringVolumeTitle:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ringvolume_soundprofile_active_profile_id"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "uimode"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    .line 449
    .local v9, uiModeMgr:Landroid/app/UiModeManager;
    if-eqz v9, :cond_8

    .line 450
    invoke-virtual {v9}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    .line 451
    :cond_8
    return-void

    .line 450
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 844
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "RingerVolume"

    const-string v7, "++onclick"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 847
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 849
    .local v2, layout_index:I
    const-string v4, "RingerVolume"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onclick layout_index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SEEKBAR_TYPE.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-gt v2, v4, :cond_1

    if-gez v2, :cond_2

    .line 912
    .end local v2           #layout_index:I
    :cond_1
    :goto_0
    return-void

    .line 853
    .restart local v2       #layout_index:I
    :cond_2
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v6, :cond_9

    .line 854
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 890
    const-string v4, "RingerVolume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow sound profile:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 911
    .end local v2           #layout_index:I
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_1

    const-string v4, "RingerVolume"

    const-string v5, "--onclick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 856
    .restart local v2       #layout_index:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 859
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    if-nez v4, :cond_6

    .line 860
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 862
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 863
    .local v3, vibrator:Landroid/os/Vibrator;
    const/4 v1, 0x0

    .line 864
    .local v1, dndMode:I
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    .line 865
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDndMode()I

    move-result v1

    .line 866
    :cond_4
    if-nez v1, :cond_3

    .line 867
    if-eqz v0, :cond_5

    .line 868
    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #vibrator:Landroid/os/Vibrator;
    check-cast v3, Landroid/os/Vibrator;

    .line 869
    .restart local v3       #vibrator:Landroid/os/Vibrator;
    :cond_5
    if-eqz v3, :cond_3

    .line 870
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 875
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dndMode:I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_6
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_7

    .line 876
    const-string v4, "RingerVolume"

    const-string v7, "Dock mode activity now."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_7
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    :cond_8
    move v4, v6

    goto :goto_2

    .line 886
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 895
    :cond_9
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v10, :cond_b

    .line 896
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_a

    const-string v4, "RingerVolume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onclick STREAM_ALARM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_a
    sget v4, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

    .line 899
    :cond_b
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v11, :cond_d

    .line 900
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_c

    const-string v4, "RingerVolume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onclick STREAM_NOTIFICATION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_c
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v5, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 902
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v5, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v9}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setNotificationsMute(Z)V

    .line 903
    sget v4, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

    .line 906
    :cond_d
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v5, :cond_3

    .line 907
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_e

    const-string v4, "RingerVolume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onclick STREAM_MUSIC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_e
    sget v4, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 1010
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1013
    :try_start_0
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    .line 1015
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    .line 1016
    .local v1, themeId:I
    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v2, v1, :cond_0

    .line 1017
    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    .line 1019
    :cond_0
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThemeSettings currentThemeId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->setTheme(I)V

    .line 1021
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->setTransparentBackground()V

    .line 1022
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    .end local v1           #themeId:I
    :goto_0
    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RingerVolume"

    const-string v3, "applyHtcFontscale failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 297
    :try_start_0
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    .line 299
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyHtcFontscale .."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    .line 301
    .local v1, themeId:I
    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v2, v1, :cond_0

    .line 302
    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    .line 304
    :cond_0
    const-string v2, "RingerVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThemeSettings currentThemeId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->setTheme(I)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->setTransparentBackground()V

    .line 308
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v1           #themeId:I
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onCreate(Landroid/os/Bundle;)V

    .line 313
    const v2, 0x7f04009e

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->setDialogLayoutResource(I)V

    .line 316
    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .line 317
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportUseRingtoneForNotifications()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    .line 318
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    .line 319
    sget-boolean v2, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v2, :cond_1

    .line 321
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Lcom/android/settings/RingerVolume;->getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    :goto_1
    sget-boolean v2, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    iput-boolean v2, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    .line 329
    const v2, 0x7f0c0de7

    invoke-virtual {p0, v2}, Lcom/android/settings/RingerVolume;->setDialogTitle(I)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/settings/RingerVolume;->showDialog(Landroid/os/Bundle;)V

    .line 331
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RingerVolume"

    const-string v3, "applyHtcFontscale failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 323
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sput-boolean v5, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 10
    .parameter "positiveResult"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 644
    if-nez p1, :cond_0

    sget-boolean v6, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_0

    .line 645
    iget-object v9, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v6, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-static {v9, v6}, Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V

    .line 647
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onDialogClosed(Z)V

    .line 649
    if-nez p1, :cond_6

    .line 650
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 651
    .local v5, vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    if-eqz v5, :cond_1

    .line 652
    iget-boolean v6, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getStreamType()I

    move-result v6

    const/4 v9, 0x5

    if-ne v6, v9, :cond_3

    .line 650
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    :cond_2
    move v6, v8

    .line 645
    goto :goto_0

    .line 658
    .restart local v0       #arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    :cond_3
    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    goto :goto_2

    .line 661
    .end local v5           #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    :cond_4
    const-string v6, "RingerVolume"

    const-string v9, "revert to soundprofile"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget v6, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    if-eq v6, v7, :cond_5

    .line 663
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 664
    .local v3, intentSoundProfile:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "Action"

    const-string v7, "Switch"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v6, "id"

    iget v7, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string v6, "Update"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 670
    const-string v6, "com.htc.soundprofile"

    const-string v7, "com.htc.soundprofile.HtcSoundProfileServices"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/RingerVolume;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 680
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #intentSoundProfile:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->cleanup()V

    .line 681
    return-void

    .line 676
    .end local v0           #arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_6
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .restart local v0       #arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 677
    .restart local v5       #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->saveBeforeMuteVolume()V

    .line 676
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 698
    sparse-switch p2, :sswitch_data_0

    .line 705
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 703
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/RingerVolume;->onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 698
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/android/settings/HtcVolumeDialog;->onResume()V

    .line 1033
    move-object v0, p0

    .line 1034
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1035
    :try_start_0
    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged ..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget v6, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    invoke-static {v0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v2

    .line 1037
    .local v2, isFontChanged:Z
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v3

    .line 1038
    .local v3, newThemeId:I
    if-nez v2, :cond_0

    iget v6, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v6, v3, :cond_1

    .line 1040
    :cond_0
    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged =>recreate"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 1042
    .local v5, window:Landroid/view/Window;
    if-eqz v5, :cond_3

    .line 1043
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 1044
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1045
    new-instance v6, Lcom/android/settings/RingerVolume$5;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/RingerVolume$5;-><init>(Lcom/android/settings/RingerVolume;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1062
    .end local v2           #isFontChanged:Z
    .end local v3           #newThemeId:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #window:Landroid/view/Window;
    :cond_1
    :goto_0
    return-void

    .line 1052
    .restart local v2       #isFontChanged:Z
    .restart local v3       #newThemeId:I
    .restart local v4       #view:Landroid/view/View;
    .restart local v5       #window:Landroid/view/Window;
    :cond_2
    const-string v6, "RingerVolume"

    const-string v7, "getDecorView is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    .end local v2           #isFontChanged:Z
    .end local v3           #newThemeId:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #window:Landroid/view/Window;
    :catch_0
    move-exception v1

    .line 1060
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1055
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #isFontChanged:Z
    .restart local v3       #newThemeId:I
    .restart local v5       #window:Landroid/view/Window;
    :cond_3
    :try_start_1
    const-string v6, "RingerVolume"

    const-string v7, "getWindow is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 756
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 758
    .local v3, vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    .line 757
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v3           #vol:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method public onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 711
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v2

    .line 712
    :cond_1
    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v4, v5, :cond_2

    .line 713
    const-string v3, "RingerVolume"

    const-string v4, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore VolumeKey "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 717
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v2, v3

    .line 750
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v3

    .line 716
    goto :goto_1

    .line 719
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 720
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 721
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 725
    :sswitch_1
    if-eqz v0, :cond_0

    .line 726
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 727
    .local v1, ringerMode:I
    const-string v4, "RingerVolume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***********onVolumeKey ringerMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 735
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 744
    .end local v1           #ringerMode:I
    :sswitch_2
    if-eqz v0, :cond_0

    .line 745
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 746
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    goto/16 :goto_0

    .line 717
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
