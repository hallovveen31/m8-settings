.class public Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "HtcVolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;,
        Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;,
        Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final MUSIC_MUTE_ACTION:Ljava/lang/String; = "com.htc.view.music_mute"

.field private static final MUSIC_MUTE_EXTRA_NEW_STATE:Ljava/lang/String; = "new_state"

.field private static final MUSIC_MUTE_PERMISSIONS:Ljava/lang/String; = "com.htc.view.intent.category.MUTE_MUSIC"

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VOLUME_ALARM_BEFORE_MUTE:Ljava/lang/String; = "volume_alarm_before_mute"

.field private static final VOLUME_ALARM_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_alarm_before_mute_for_headset"

.field private static final VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field private static final VOLUME_MUSIC_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_music_before_mute_for_headset"

.field private static final VOLUME_NOTIFICATION_BEFORE_MUTE:Ljava/lang/String; = "volume_notification_before_mute"

.field private static final VOLUME_NOTIFICATION_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_notification_before_mute_for_headset"

.field private static final VOLUME_NOTIFICATION_MUTE_BY_USER:Ljava/lang/String; = "volume_notification_mute_by_user"

.field private static final VOLUME_NOTIFICATION_MUTE_BY_USER_FOR_HEADSET:Ljava/lang/String; = "volume_notification_mute_by_user_for_headset"


# instance fields
.field private LOG_FLAG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDNDObserver:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;

.field private mDelayUpdateHandler:Landroid/os/Handler;

.field private mDndMode:I

.field private mHandler:Landroid/os/Handler;

.field mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

.field private mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

.field private mIsHeadsetPlugged:Z

.field private mIsUserSetNotificationsMute:Z

.field private mIsUserSetNotificationsMuteForHeadset:Z

.field private mLastProgress:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamMuteState:Z

.field private mOriginalStreamVolume:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneCleanup:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeBeforeMute:I

.field private mVolumeBeforeMuteForHeadset:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private mdefaultUri:Landroid/net/Uri;

.field private sStreamType:I

.field private setLastaudiobleVolumeOnly:Z

.field final synthetic this$0:Lcom/android/settings/HtcVolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->this$0:Lcom/android/settings/HtcVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    const-string v1, "SeekBarVolumizer"

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtoneCleanup:Z

    iput v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    iput v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iput v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Lcom/android/settings/HtcVolumeDialog$1;)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;

    invoke-direct {v1, p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$2;

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$2;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;

    invoke-direct {v1, p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    iput-object p2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v1, p2}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isHeadsetPlugged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z

    :cond_0
    iput p4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iput-object p3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p3, p5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.settings.action.dnd.QS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "enable beats icon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-virtual {v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->restoreSoundEffect()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HtcIfAudioManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr or mAudioFocusListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtoneCleanup:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDNDStateInBackgroud()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private checkMuteState()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMuteState headsetPlugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "volume_alarm_before_mute_for_headset"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMuteState mVolumeBeforeMute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsUserSetNotificationsMute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMuteState mVolumeBeforeMuteForHeadset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsUserSetNotificationsMuteForHeadset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "volume_alarm_before_mute"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_notification_before_mute_for_headset"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_notification_mute_by_user_for_headset"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_notification_before_mute"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_notification_mute_by_user"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_9

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "volume_music_before_mute_for_headset"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "volume_music_before_mute"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    goto/16 :goto_0
.end method

.method private getDNDStateInBackgroud()V
    .locals 2

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalRingerMode:I

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v2, v6, :cond_5

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v8, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_last_audible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->checkMuteState()V

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StreamType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is mute show as volume zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    iput-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDNDObserver:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_dnd_feature_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDNDObserver:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-nez p2, :cond_3

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v6, :cond_7

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDNDStateInBackgroud()V

    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v8, :cond_8

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_8
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private isHeadsetPlugged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isHeadsetPlugged()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isHeadsetPlugged mAudioManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Lcom/android/settings/HtcVolumeDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to request audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioFocusListener:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$AudioFocusChangeListener;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disable beats icon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIfAM:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->forceSoundEffect(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "obtain audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HtcIfAudioManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetBeforeMuteFlag()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iput-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto :goto_0
.end method

.method private sample()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->this$0:Lcom/android/settings/HtcVolumeDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/HtcVolumeDialog;->onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->requestAudioFocus()V

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_4

    if-lez p1, :cond_4

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-lt v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->updateSlientSetting(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v4, "changeVolumeBy mVolumeBeforeMute and mVolumeBeforeMuteForHeadset set to -1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->resetBeforeMuteFlag()V

    return-void

    :cond_4
    if-ne v2, v6, :cond_0

    if-gez p1, :cond_5

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDndMode()I
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    return v0
.end method

.method public isMuted()Z
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMuted isHeadsetPlugged() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mVolumeBeforeMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mVolumeBeforeMuteForHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    if-ne v3, v6, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-ne v3, v6, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isNotificationsMuteByUser()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotificationsMuteByUser mIsUserSetNotificationsMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsUserSetNotificationsMuteForHeadset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muteVolume volumeValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", headsetPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVolumeBeforeMute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVolumeBeforeMuteForHeadset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    iput v6, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iput-boolean v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    invoke-virtual {p0, v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    iput v6, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iput-boolean v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    invoke-virtual {p0, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    iput v6, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iput-boolean v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    invoke-virtual {p0, v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    iput v6, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iput-boolean v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iput v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    invoke-virtual {p0, v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/HtcVolumeDialog;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/HtcVolumeDialog;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onProgressChanged DND activing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->updateSlientSetting(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->requestAudioFocus()V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->resetBeforeMuteFlag()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/android/settings/HtcVolumeDialog$VolumeStore;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    iget v0, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->postSetVolume(I)V

    iput v1, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/android/settings/HtcVolumeDialog$VolumeStore;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->requestAudioFocus()V

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sample()V

    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/HtcVolumeDialog;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSetVolume progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public revertVolume()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->this$0:Lcom/android/settings/HtcVolumeDialog;

    #getter for: Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog;->access$1500(Lcom/android/settings/HtcVolumeDialog;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    if-eqz v1, :cond_3

    const-string v1, "RingerVolume"

    const-string v2, "adjustLastaudiobleIndex only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamLastaudibleIndex(II)V

    iput-boolean v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v1, "RingerVolume"

    const-string v2, "forceSetStreamVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    if-eqz v1, :cond_2

    const-string v1, "RingerVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revert music mute, mOriginalStreamVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.view.music_mute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "new_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.view.intent.category.MUTE_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->this$0:Lcom/android/settings/HtcVolumeDialog;

    #getter for: Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z
    invoke-static {v0}, Lcom/android/settings/HtcVolumeDialog;->access$1500(Lcom/android/settings/HtcVolumeDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    iget v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public saveBeforeMuteVolume()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_alarm_before_mute_for_headset"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBeforeMuteVolume save to database mVolumeBeforeMuteForHeadset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsUserSetNotificationsMuteForHeadset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_before_mute_for_headset"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_mute_by_user_for_headset"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_mute_by_user_for_headset"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_music_before_mute_for_headset"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMuteForHeadset:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v7, :cond_8

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_alarm_before_mute"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBeforeMuteVolume save to database mVolumeBeforeMute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsUserSetNotificationsMute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_before_mute"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_mute_by_user"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_notification_mute_by_user"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_music_before_mute"

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setNotificationsMute(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMuteForHeadset:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsUserSetNotificationsMute:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtoneCleanup:Z

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->abandonAudioFocus()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDNDObserver:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method public updateSlientSetting(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x3

    invoke-static {}, Lcom/android/settings/HtcVolumeDialog;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlientSetting VolumeSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sStreamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->this$0:Lcom/android/settings/HtcVolumeDialog;

    #getter for: Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog;->access$1500(Lcom/android/settings/HtcVolumeDialog;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-lez p1, :cond_4

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_2
    if-lez p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
