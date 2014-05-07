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

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x5

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    const-string v0, "volPorting"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/RingerVolume;->Debug_volporting:Z

    sput v2, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    sput v2, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    sput v2, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    sput v2, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_MUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_HTC_UNMUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    new-array v0, v1, [Z

    sput-object v0, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    sput-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    sput-boolean v3, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xa8t 0x2t 0x8t 0x1t
        0xaet 0x2t 0x8t 0x1t
        0x9dt 0x2t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x2t 0x8t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x1t
        0xact 0x2t 0x8t 0x1t
        0x9ct 0x2t 0x8t 0x1t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x2t 0x8t 0x1t
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x0t 0x2t 0x3t
        0x2ct 0x0t 0x2t 0x3t
        0xft 0x0t 0x2t 0x3t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x2t 0x3t
    .end array-data

    :array_4
    .array-data 0x4
        0x1et 0x0t 0x2t 0x3t
        0x98t 0x0t 0x8t 0x2t
        0xdt 0x0t 0x2t 0x3t
        0x0t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x2t 0x3t
    .end array-data

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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;-><init>()V

    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/settings/RingerVolume$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolume$1;-><init>(Lcom/android/settings/RingerVolume;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    iput-boolean v1, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    iput-boolean v1, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingerVolume;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/RingerVolume;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    return v0
.end method

.method static synthetic access$1500()[I
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RingerVolume;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400()[Z
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/RingerVolume;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/RingerVolume;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/RingerVolume;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/AudioManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V

    return-void
.end method

.method private cleanup()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getStreamType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stop()V

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aput-object v4, v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-class v0, Landroid/media/AudioManager;

    const/4 v2, 0x1

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

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    throw v1

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private getResId(II)I
    .locals 3

    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return p2

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private initSeekBarControls(Landroid/view/View;)V
    .locals 17

    const v1, 0x7f09014a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    const-string v1, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v10, v1, :cond_11

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8

    sget-boolean v1, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportToogleUseRingVolumeForNotify()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "RingerVolume"

    const-string v2, "Not support toogle UseRingVolumeForNotify"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v12, v1, v10

    check-cast v12, Lcom/htc/widget/HtcListItem;

    if-eqz v12, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/View;->setFocusable(Z)V

    instance-of v1, v7, Landroid/widget/Checkable;

    if-eqz v1, :cond_6

    move-object v9, v7

    check-cast v9, Landroid/widget/Checkable;

    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    invoke-interface {v9, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_2
    new-instance v1, Lcom/android/settings/RingerVolume$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/RingerVolume$3;-><init>(Lcom/android/settings/RingerVolume;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {v15, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v15, :cond_7

    const v1, 0x7f0c0ad6

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    new-instance v1, Lcom/android/settings/RingerVolume$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/RingerVolume$4;-><init>(Lcom/android/settings/RingerVolume;)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->addRingVolumeDivider()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0400fa

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mListViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "RingerVolume"

    const-string v2, "chkBoxView NOT instanceof Checkable!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v1, "RingerVolume"

    const-string v2, "HtcListItemSingleText is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    const v2, 0x7f0400f9

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HtcListItemHeight"

    invoke-static {v1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    aget v1, v1, v10

    if-lez v1, :cond_9

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TITLE_ID:[I

    aget v1, v1, v10

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v4, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v5, v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/RingerVolume;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v1, v16, v10

    sget v1, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sput v10, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    new-instance v2, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v5, v5, v10

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v2, v1, v10

    sget v1, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    sput v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    :cond_c
    :goto_4
    sget v1, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    sput v10, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    :cond_d
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    check-cast v1, Landroid/view/ViewGroup;

    sput-object v1, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    sget-boolean v1, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v1, :cond_e

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

    :cond_e
    sget-boolean v1, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v1, v1, v10

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    sget v1, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    sput v10, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    sput v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    goto :goto_4

    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    return-void
.end method

.method private setNotificatioViewEnabled(Z)V
    .locals 5

    sget-boolean v2, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v2, :cond_0

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

    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    sget v3, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    :goto_1
    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    sget-object v2, Lcom/android/settings/RingerVolume;->mStreamNotificationViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

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

    :cond_3
    const-string v2, "RingerVolume"

    const-string v3, "setNotificatioViewEnabled mStreamNotificationViewGroup is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private static setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v0, Landroid/media/AudioManager;

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    :try_start_0
    const-string v4, "setNotificationUseRingVolume"

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setStreamToMute(I)V
    .locals 3

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

    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    :goto_0
    return-void

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

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private syncNotificationWithRingerMode(I)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v0, :cond_0

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

    :cond_0
    packed-switch p1, :pswitch_data_0

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

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->setNotificatioViewEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->setNotificatioViewEnabled(Z)V

    goto :goto_0

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

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStatesInternal(I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x3

    sget-object v3, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v1, v3, p1

    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v3, :cond_0

    if-eq v1, v8, :cond_1

    :cond_0
    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    :goto_1
    if-eq v1, v6, :cond_3

    if-eq v1, v8, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

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

    :cond_4
    sget-object v3, Lcom/android/settings/RingerVolume;->mStreamMute:[Z

    aput-boolean v0, v3, p1

    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_5

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

    :cond_5
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    if-eqz v3, :cond_8

    sget v3, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    const-string v3, "RingerVolume"

    const-string v4, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore vibrate mode /outdoor mode icon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget v3, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v3, p1, :cond_10

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_7
    :goto_2
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "RingerVolume"

    const-string v4, "mCheckBoxes setImageResource stream done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    if-eq v1, v8, :cond_9

    if-eq v1, v6, :cond_9

    if-ne v1, v7, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-ne v1, v7, :cond_a

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    :cond_a
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto/16 :goto_1

    :pswitch_0
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_c

    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_NORMAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    invoke-direct {p0, v7}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto :goto_2

    :pswitch_1
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_d

    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_SILENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

    :pswitch_2
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_e

    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_VIBRATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    const v4, 0x3020022

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_MUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

    :pswitch_3
    sget-boolean v3, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v3, :cond_f

    const-string v3, "RingerVolume"

    const-string v4, "setImageResource stream: RINGER_MODE_OUTDOOR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aget-object v3, v3, p1

    const v4, 0x302002e

    sget-object v5, Lcom/android/settings/RingerVolume;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v5, v5, p1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/RingerVolume;->getResId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    sget-boolean v3, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v3, :cond_7

    invoke-direct {p0, v6}, Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V

    goto/16 :goto_2

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

    invoke-super {p0}, Lcom/android/settings/HtcVolumeDialog;->onActivityStop()V

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    :cond_2
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mVoiceCapable:Z

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "HtcListItemHeight"

    invoke-static {v10, v11}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v0, v10, v4

    sget-boolean v10, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v10, :cond_0

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

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolume;->initSeekBarControls(Landroid/view/View;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z

    sget-boolean v10, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v10, :cond_1

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

    :cond_1
    sget v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const-string v10, "RingerVolume"

    const-string v11, "***********mVolumeKeyBindSeekBarVolumizerId did not init..."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mode_ringer_streams_affected"

    const/16 v12, 0x24

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v5, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    array-length v10, v10

    if-ge v5, v10, :cond_5

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

    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v10, v10, v5

    if-nez v10, :cond_3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    aget-object v10, v10, v5

    const v11, 0x7f090227

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    if-eqz v1, :cond_4

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

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mCheckBoxes:[Lcom/htc/widget/HtcImageButton;

    aput-object v1, v10, v5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V

    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v10, :cond_6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/RingerVolume$2;

    invoke-direct {v10, p0}, Lcom/android/settings/RingerVolume$2;-><init>(Lcom/android/settings/RingerVolume;)V

    iput-object v10, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/RingerVolume;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "com.htc.permission.APP_PLATFORM"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v3, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_6
    sget-boolean v10, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v10, :cond_7

    sget v10, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ltz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    sget v11, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;

    sget v11, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v10, v10, v11

    const v11, 0x7f09001e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_7

    const v10, 0x204029a

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ringvolume_soundprofile_active_profile_id"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "uimode"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    :cond_8
    return-void

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "RingerVolume"

    const-string v7, "++onclick"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

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

    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-gt v2, v4, :cond_1

    if-gez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

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

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_1

    const-string v4, "RingerVolume"

    const-string v5, "--onclick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/RingerVolume;->mDockMode:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDndMode()I

    move-result v1

    :cond_4
    if-nez v1, :cond_3

    if-eqz v0, :cond_5

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    :cond_5
    if-eqz v3, :cond_3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/android/settings/RingerVolume;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "RingerVolume"

    const-string v7, "Dock mode activity now."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    :cond_9
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v10, :cond_b

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

    :cond_a
    sget v4, Lcom/android/settings/RingerVolume;->mStreamAlarmBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

    :cond_b
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v11, :cond_d

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

    :cond_c
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v5, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v5, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v9}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setNotificationsMute(Z)V

    sget v4, Lcom/android/settings/RingerVolume;->mStreamNotificationBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

    :cond_d
    sget-object v4, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    aget v4, v4, v2

    if-ne v4, v5, :cond_3

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

    :cond_e
    sget v4, Lcom/android/settings/RingerVolume;->mStreamMusicBindSeekBarVolumizerId:I

    invoke-direct {p0, v4}, Lcom/android/settings/RingerVolume;->setStreamToMute(I)V

    goto/16 :goto_1

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

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

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

    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {p0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->setTransparentBackground()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "RingerVolume"

    const-string v3, "applyHtcFontscale failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

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

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

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

    iget v2, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    invoke-virtual {p0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->setTransparentBackground()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04009e

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcVolumeDialogBase;->setDialogLayoutResource(I)V

    sget-object v2, Lcom/android/settings/RingerVolume;->SEEKBAR_TYPE:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportUseRingtoneForNotifications()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    sget-boolean v2, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Lcom/android/settings/RingerVolume;->getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-boolean v2, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    iput-boolean v2, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    const v2, 0x7f0c0de7

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcVolumeDialogBase;->setDialogTitle(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->showDialog(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "RingerVolume"

    const-string v3, "applyHtcFontscale failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    sput-boolean v5, Lcom/android/settings/RingerVolume;->mUseRingVolumeAsNotifyVolume:Z

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    sget-boolean v6, Lcom/android/settings/RingerVolume;->mSupportUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v6, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-static {v9, v6}, Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onDialogClosed(Z)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/RingerVolume;->mOriginalUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getStreamType()I

    move-result v6

    const/4 v9, 0x5

    if-ne v6, v9, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    goto :goto_2

    :cond_4
    const-string v6, "RingerVolume"

    const-string v9, "revert to soundprofile"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    if-eq v6, v7, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Action"

    const-string v7, "Switch"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "id"

    iget v7, p0, Lcom/android/settings/RingerVolume;->mOldSoundProfileMode:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "Update"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v6, "com.htc.soundprofile"

    const-string v7, "com.htc.soundprofile.HtcSoundProfileServices"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/RingerVolume;->cleanup()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->saveBeforeMuteVolume()V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/RingerVolume;->onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    move-object v0, p0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged ..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/settings/RingerVolume;->mHtcFontScale:F

    invoke-static {v0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v2

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v3

    if-nez v2, :cond_0

    iget v6, p0, Lcom/android/settings/RingerVolume;->mCurrentThemeId:I

    if-eq v6, v3, :cond_1

    :cond_0
    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged =>recreate"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v6, Lcom/android/settings/RingerVolume$5;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/RingerVolume$5;-><init>(Lcom/android/settings/RingerVolume;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "RingerVolume"

    const-string v7, "getDecorView is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "RingerVolume"

    const-string v7, "checkHtcFontscaleChanged failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

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

    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialog;->onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    iget-object v0, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVolumeKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    if-ne v4, v5, :cond_2

    const-string v3, "RingerVolume"

    const-string v4, "***********mVolumeKeyBindSeekBarVolumizerId did not init..., ignore VolumeKey "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

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

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/RingerVolume;->mSeekBarVolumizer:[Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    sget v4, Lcom/android/settings/RingerVolume;->mVolumeKeyBindSeekBarVolumizerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
