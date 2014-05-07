.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SoundSettings$7;,
        Lcom/android/settings/SoundSettings$DNDObserver;,
        Lcom/android/settings/SoundSettings$soundpicker_mode;,
        Lcom/android/settings/SoundSettings$dual_ring_mode;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_SHOW_SOUND_PROFILE:Ljava/lang/String; = "show_sound_profile"

.field private static final CHECK_CUSTOMIZE_PROFILE_WAITING_CHECKING_DEALAY:I = 0x64

.field private static final CHECK_CUSTOMIZE_PROFILE_WAITI_PROFILE_SWITCH_DEALAY:I = 0x12c

.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final HAS_PULL_TO_FRESH_SOUND:Z = true

.field private static final HTC_PERMISSION_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final KEY_ALARM_SOUNDS:Ljava/lang/String; = "alarm_sound"

.field private static final KEY_ALL_VOLUMES:Ljava/lang/String; = "ring_volume"

.field private static final KEY_BUTTON_ROAM_RINGTONE:Ljava/lang/String; = "button_roaming_ringtone"

.field private static final KEY_CALL_CATEGORY:Ljava/lang/String; = "sound_category_calls"

.field private static final KEY_CUSTOMIZE_SILENT_LIST:Ljava/lang/String; = "customize_silentlist"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_HTC_CDMA_DTMF_TONE:Ljava/lang/String; = "htc_cdma_dtmf_tone"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_NOTIFICATION_SOUNDS:Ljava/lang/String; = "notification_sound"

.field private static final KEY_NOTIFICATION_SOUNDS_PICKER:Ljava/lang/String; = "notification_sound_picker"

.field private static final KEY_PULL_TO_REFRESS:Ljava/lang/String; = "htc_pull_to_refresh_sound"

.field private static final KEY_RINGTONES:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONESPICKER:Ljava/lang/String; = "ringtone_picker"

.field private static final KEY_RINGTONES_SLOT2:Ljava/lang/String; = "ringtone_slot2"

.field private static final KEY_RING_BACK_TONES:Ljava/lang/String; = "ring_back_tone"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SILENT_LIST:Ljava/lang/String; = "silentlist"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_ENHANCER:Ljava/lang/String; = "htc_sound_enhancer"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final MSG_ADD_RINGTONE_SLOT2:I = 0xb

.field private static final MSG_CHECK_CUSTOMIZE_PROFILE_CHANGE:I = 0x8

.field private static final MSG_NOTIFY_PROFILE_CHANGE:I = 0x7

.field private static final MSG_SHOW_PROFILE:I = 0x6

.field private static final MSG_UPDATE_ALARM_SUMMARY:I = 0xa

.field private static final MSG_UPDATE_HAPTIC_NOTIFICATION_SUMMARY:I = 0x4

.field private static final MSG_UPDATE_HAPTIC_RINGTONE_SUMMARY:I = 0x3

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SLOT2_SUMMARY:I = 0x9

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final MSG_UPDATE_SOUND_ENHANCER_SUMMARY:I = 0x5

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field static final RINGER_MODE_OUTDOOR:I = 0x3

.field private static final SOUND_MODE_NORMAL:I = 0x0

.field private static final SOUND_MODE_OUTDOOR:I = 0x3

.field private static final SOUND_MODE_SILENT:I = 0x2

.field private static final SOUND_MODE_VIBRATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final VALUE_VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field private static final VALUE_VIBRATE_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_VIBRATE_ONLY_SILENT:Ljava/lang/String; = "silent"

.field private static final VALUE_VIBRATE_UNLESS_SILENT:Ljava/lang/String; = "notsilent"

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final action_sound_profile_compare_done:Ljava/lang/String; = "com.htc.soundprofile.profile_compare_done"

.field private static final action_sound_profile_switched:Ljava/lang/String; = "com.htc.soundprofile.profile_switched"

.field static final default_sound_profile_db_id:I = 0x1

.field static final default_sound_profile_value:I = 0x2

.field private static mHasRingBackTone:Z

.field private static mMaxRingerModeIndex:I


# instance fields
.field mActivtyIdleHandele:Landroid/os/MessageQueue$IdleHandler;

.field private mAlarmSound:Lcom/htc/preference/HtcPreference;

.field private mAllVolume:Lcom/htc/preference/HtcPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

.field private mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

.field private mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

.field private mDelayShowControlRunnable:Ljava/lang/Runnable;

.field private mDndMode:I

.field private mDockMode:Z

.field private mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHapticUtil:Lcom/android/settings/HapticUtil;

.field private mHasDockModeProjects:Z

.field private mIsPause:Z

.field private mIsPostCreateDone:Z

.field private mIsProvideSoundProfileInstalled:I

.field private mIsStop:Z

.field private mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mModeEntry:[Ljava/lang/CharSequence;

.field private mModeEntryValues:[Ljava/lang/CharSequence;

.field private mMusicFx:Lcom/htc/preference/HtcPreference;

.field private mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mNotifications:Lcom/htc/preference/HtcPreference;

.field private mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingBackToneUri:Ljava/lang/String;

.field private mRingbackTone:Lcom/htc/preference/HtcPreference;

.field private mRingtone:Lcom/htc/preference/HtcPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

.field private mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSilentlist:Lcom/htc/preference/HtcListPreference;

.field private mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

.field mSumaries:[Ljava/lang/CharSequence;

.field mSystemProfileEntries:[Ljava/lang/CharSequence;

.field mSystemProfileEntryValues:[Ljava/lang/CharSequence;

.field mThreadDelayShowControl:Ljava/lang/Thread;

.field mThreadlookupRingtoneNames:Ljava/lang/Thread;

.field private mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

.field mapCustomProfile:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mapCustomProfileRevert:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ringtone"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const-string v1, "sound_category_calls"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/settings/SoundSettings;->mHasRingBackTone:Z

    sput v4, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    iput v2, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$5;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mActivtyIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    return-void
.end method

.method private DelayShowControl()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDelayShowControlRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private UpdateRingtoneSlot2Preference()V
    .locals 3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "SoundSettings"

    const-string v1, "dualPhoneEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    const-string v0, "SoundSettings"

    const-string v1, "dualGSMPhoneEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_wcdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    const-string v0, "SoundSettings"

    const-string v1, "dual_ring_na"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    const-string v1, "slot_1_user_text"

    const v2, 0x7f0c0a2f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/SoundSettings;->setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_8

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallCategory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRingtoneSlot2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_9

    const-string v0, "SoundSettings"

    const-string v1, "set mRingtoneSlot2 title"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    const-string v1, "slot_2_user_text"

    const v2, 0x7f0c0a35

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/SoundSettings;->setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SoundSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->showSoundProfile()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/SoundSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/SoundSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$dual_ring_mode;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->UpdateRingtoneSlot2Preference()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateHapticFeedback()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/SoundSettings;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/SoundSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/settings/SoundSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getDNDStateInBackgroud()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->notifyVolumeChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SoundSettings;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/SoundSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private checkAndShowSoundProfilebyIntent()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "show_sound_profile"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "SoundSettings"

    const-string v4, "ShowSoundProfile by Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private customizeSoundProfie()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "customize_silentlist"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "customize_silentlist"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_7
    const-string v3, "BE_POLITE"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;

    if-eqz v0, :cond_8

    const-string v3, "customize_silentlist"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_8
    const-string v3, "PCOKET_MODE"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;

    if-eqz v2, :cond_9

    const-string v3, "customize_silentlist"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_9
    const-string v3, "FLIP_TO_SPEAKER"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;

    if-eqz v1, :cond_a

    const-string v3, "customize_silentlist"

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_b
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    goto/16 :goto_0
.end method

.method private getDNDStateInBackgroud()V
    .locals 2

    new-instance v0, Lcom/android/settings/SoundSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$6;-><init>(Lcom/android/settings/SoundSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getDiadPadToneTitleRes()I
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const v0, 0x7f0c0aea

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0df5

    goto :goto_0
.end method

.method private final getRingerMode(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private getRingerModeFromMM()I
    .locals 4

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sget v1, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    if-le v0, v1, :cond_0

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private getSoundMode(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ringer mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSoundModeString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customize ringer mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    :pswitch_1
    const-string v0, "silent"

    goto :goto_0

    :pswitch_2
    const-string v0, "vibrate"

    goto :goto_0

    :pswitch_3
    const-string v0, "outdoor"

    goto :goto_0

    :cond_0
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ringer mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    return-object v0
.end method

.method private initSilentlistEntry()V
    .locals 10

    const v9, 0x7f08007f

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "2"

    aput-object v3, v1, v5

    const-string v3, "1"

    aput-object v3, v1, v4

    const-string v3, "0"

    aput-object v3, v1, v8

    const-string v3, "3"

    aput-object v3, v1, v7

    :goto_1
    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v3, :cond_0

    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    const-string v3, "SoundSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate mDockMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3
    new-array v3, v8, [Ljava/lang/CharSequence;

    aget-object v6, v2, v5

    aput-object v6, v3, v5

    aget-object v6, v2, v8

    aput-object v6, v3, v4

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    new-array v3, v8, [Ljava/lang/CharSequence;

    aget-object v6, v1, v5

    aput-object v6, v3, v5

    aget-object v5, v1, v8

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "2"

    aput-object v3, v1, v5

    const-string v3, "1"

    aput-object v3, v1, v4

    const-string v3, "0"

    aput-object v3, v1, v8

    goto/16 :goto_1

    :cond_4
    move v3, v5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3
.end method

.method private final isSupportCustomSoundProfile()Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v4, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_ID"

    aput-object v4, v2, v9

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "content://com.htc.soundprofile.provider/main"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iput v8, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    move v3, v8

    :goto_0
    return v3

    :cond_0
    iput v9, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    :cond_1
    const-string v3, "sound_cusm_proflile"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "SoundSettings"

    const-string v4, "sound_cusm_proflile debug"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    if-ne v3, v8, :cond_1

    move v3, v8

    goto :goto_0

    :cond_3
    const-string v3, "SoundSettings"

    const-string v4, "custm_profile not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    goto :goto_0
.end method

.method private final isSupportDualSimMode()Z
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDual_ring_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SDMSaveOrNot"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/SoundSettings$7;->$SwitchMap$com$android$settings$SoundSettings$soundpicker_mode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "SoundSettings"

    const-string v3, "unnsupport mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "SoundSettings"

    const-string v3, "switch on Aurora Promo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "auroraSwitchKey"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->useSounPickerInterntActionInsteasofSpeifyPackageName()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.htc.soundpicker.SoundPicker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v1

    :pswitch_0
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "SDMListType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const-string v2, "SDMListType"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SDMRadioMode"

    const-string v3, "mode_cdma"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SDMRadioMode"

    const-string v3, "mode_wcdma"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SDMRadioMode"

    const-string v3, "mode_gsm"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private notifyVolumeChange()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Action"

    const-string v3, "NotifyVolumeChange"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.htc.soundprofile"

    const-string v3, "com.htc.soundprofile.HtcSoundProfileServices"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startService(Landroid/content/Intent;)V

    return-void
.end method

.method private setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 6

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0c0a36

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "SoundSettings"

    const-string v4, "Get SlotName fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private showSoundProfile()V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SoundSettings"

    const-string v4, "showSoundProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x0

    :try_start_0
    const-class v4, Lcom/htc/preference/HtcDialogPreference;

    const-string v5, "onClick"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private final transferToCustomizeProfileVale(I)I
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transferToCustomizeProfileVale: bypass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringvolume_soundprofile_active_profile_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v6, :cond_1

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v3, "SoundSettings"

    const-string v4, "invalid customize profile id found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transferToCustomizeProfileVale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transferToCustomizeProfileVale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_0
.end method

.method private updateHapticFeedback()V
    .locals 7

    const/4 v3, 0x0

    const-string v4, "sys.psaver.haptic"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SoundSettings"

    const-string v5, "Power saver (for haptic) on vitrual key feedback might diasble by powersaver"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Haptic fuction Enable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, "SoundSettings"

    const-string v5, "Power saver (for haptic) off"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "SoundSettings"

    const-string v4, "updateHapticFeedback resolver null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    .locals 11

    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x2

    :goto_1
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_2

    const-string v8, "SoundSettings"

    const-string v9, "++getActualDefaultRingtoneUri"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0, p1, p4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_3

    const-string v8, "SoundSettings"

    const-string v9, "--getActualDefaultRingtoneUri"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v7, 0x0

    const v8, 0x1040432

    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    if-nez v4, :cond_4

    const v8, 0x204039b

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :goto_3
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v8, "SoundSettings"

    const-string v9, "load string fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v8, "SoundSettings"

    const-string v9, "load string fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :try_start_2
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_5

    const-string v8, "SoundSettings"

    const-string v9, "++getRingtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v0, v4, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v3

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_6

    const-string v8, "SoundSettings"

    const-string v9, "--getRingtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-eqz v8, :cond_a

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_7

    const-string v8, "SoundSettings"

    const-string v9, "paused release ringtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const/4 v7, 0x0

    const-string v8, "SoundSettings"

    const-string v9, "load ringtitle fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_9

    const-string v8, "SoundSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V

    goto/16 :goto_3

    :cond_a
    if-eqz v3, :cond_c

    :try_start_3
    invoke-virtual {v3, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_b

    const-string v8, "SoundSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtone.getTitle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eq v4, v8, :cond_c

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->getUriFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    move-object v7, v5

    :cond_c
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_8

    const-string v8, "SoundSettings"

    const-string v9, "--ringtone.getTitle("

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    const/4 v7, 0x0

    const-string v8, "SoundSettings"

    const-string v9, "load ringtitle fail:NullPointerException "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_d
    const-string v8, "SoundSettings"

    const-string v9, "updateRingtoneName fail to get default ringtone object"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateSilentListSummaryAndNotify(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSilentlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCustomizeSilentlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSilentListSummaryAndNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->transferToCustomizeProfileVale(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p1, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_4

    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt p1, v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v1, :cond_1

    if-ne p1, v6, :cond_1

    :cond_5
    packed-switch p1, :pswitch_data_1

    :goto_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v1, :cond_6

    if-ne p1, v6, :cond_6

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateState(Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private waitAllThreadEnd()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method UpdateCustomizeProfileEntry()V
    .locals 14

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    const-string v3, "SoundSettings"

    const-string v5, "UpdateCustomizeProfileEntry"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_ID"

    aput-object v3, v2, v13

    const-string v3, "NAME"

    aput-object v3, v2, v12

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.htc.soundprofile.provider/main"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_ID > 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customize profile count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    const/4 v8, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v8, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v8

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    const-string v3, "SoundSettings"

    const-string v4, "curror null:customize sound profile, query provider fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c12d2

    return v0
.end method

.method getUriFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUriFileName for uri: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v1, "file"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    const-string v1, "SoundSettings"

    const-string v2, "getUriFileName: scheme not equals to file abort lookup."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid !!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFileName: query from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_4

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFileName: query result:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFileName: ringtoneTitle:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v10

    goto/16 :goto_0

    :cond_7
    :try_start_2
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    const-string v0, "SoundSettings"

    const-string v1, "getUriFileName: ringtoneTitle: null (cursor count <= 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SoundSettings;->mIsStop:Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v25, 0x3

    :goto_0
    sput v25, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const-string v25, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/AudioManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v25, 0x7f060044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object v25, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportDoNotDisturbFeature()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    const-string v25, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v25, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    const-string v25, "ringtone_slot2"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v25, "alarm_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v25, "ring_back_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    const v25, 0x7f0c0a3c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingBackToneUri:Ljava/lang/String;

    const-string v25, "button_roaming_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v25, "htc_cdma_dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    const-string v25, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x0

    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v0, v3, :cond_1b

    sget-boolean v25, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    const-string v26, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "dtmf_tone"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1a

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :goto_3
    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getDiadPadToneTitleRes()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getDiadPadToneTitleRes()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :cond_8
    const-string v25, "silentlist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->initSilentlistEntry()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->UpdateCustomizeProfileEntry()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    const-string v25, "vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "vibrate_when_ringing"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1e

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v25, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "sound_effects_enabled"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1f

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v25, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    const-string v25, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "lockscreen_sounds_enabled"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_20

    const/16 v25, 0x1

    :goto_6
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Vibrator;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_9

    const-string v25, "SoundSettings"

    const-string v26, "The device not support vibrator!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_9
    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v0, v3, :cond_a

    sget-boolean v25, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    :cond_a
    const-string v25, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    const-string v25, "emergency_tone"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-nez v25, :cond_21

    const-string v25, "SoundSettings"

    const-string v26, "OoO get the null object of KEY_BUTTON_ROAM_RINGTONE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v25, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    const-string v26, "musicfx"

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v25, 0x200

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportRingAndVibrateMode()Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    const-string v26, "notification_pulse"

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0007

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_d

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_8
    const-string v25, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v25, "HtcFlipToMutePreference"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportFlipToMute()Z

    move-result v25

    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_e
    :goto_9
    const-string v25, "htc_setting_sound_flip_to_speaker_supported"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_25

    const/16 v24, 0x1

    :goto_a
    if-nez v24, :cond_10

    const-string v25, "SoundSettings"

    const-string v26, "Removed flipToSpeakerMode;"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "FLIP_TO_SPEAKER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "flip_to_speaker"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c08b9

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_14
    const-string v25, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    const-string v25, "SoundSettings"

    const-string v26, "Removed Vibrate Preference during Dock Mode;"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_26

    sget-object v4, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    array-length v14, v4

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v14, :cond_26

    aget-object v19, v4, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    if-eqz v18, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_18
    const/16 v25, 0x2

    goto/16 :goto_0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    const-string v25, "dtmf_tone"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v5, 0x0

    if-eqz v8, :cond_1c

    const-string v25, "dtmf_tone_type"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v5, 0x2

    :cond_1c
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_3

    :cond_1d
    const/4 v5, 0x1

    goto :goto_c

    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_20
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v22

    const-string v25, "SoundSettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "OoO remove FEATURE_ROAMING_RINGTONE ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_22
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "notification_light_pulse"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    const/16 v25, 0x1

    :goto_d
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v23

    const-string v25, "SoundSettings"

    const-string v26, "notification_light_pulse not found"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_23
    const/16 v25, 0x0

    goto :goto_d

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_9

    :cond_25
    const/16 v24, 0x0

    goto/16 :goto_a

    :cond_26
    new-instance v25, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportKDDIHasRingBackTone()Z

    move-result v25

    sput-boolean v25, Lcom/android/settings/SoundSettings;->mHasRingBackTone:Z

    const-string v25, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28

    sget-boolean v25, Lcom/android/settings/SoundSettings;->mHasRingBackTone:Z

    if-nez v25, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_28
    new-instance v25, Lcom/android/settings/SoundSettings$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$4;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDelayShowControlRunnable:Ljava/lang/Runnable;

    const-string v25, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    const-string v25, "htc_pull_to_refresh_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    const-string v25, "htc_pull_to_fresh_sound_enabled"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_2b

    const/16 v25, 0x1

    :goto_e
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_29
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportNFCSoundInCall()Z

    move-result v25

    if-nez v25, :cond_2a

    sget-object v25, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    if-eqz v16, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->DelayShowControl()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->checkAndShowSoundProfilebyIntent()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->customizeSoundProfie()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    new-instance v25, Lcom/android/settings/SoundSettings$DNDObserver;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$DNDObserver;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    return-void

    :cond_2b
    const/16 v25, 0x0

    goto :goto_e
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SoundSettings"

    const-string v2, " mReceiver not registry do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v5, "emergency_tone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "emergency_tone"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string v5, "SoundSettings"

    const-string v7, "could not persist emergency tone setting"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v5, "vibrate"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object v5, p1

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v7, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v6, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "vibrate_when_ringing"

    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v6

    :cond_2
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    const-string v5, "silentlist"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_6

    const-string v5, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getRingerMode(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    if-ne v3, v6, :cond_7

    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v7, 0x12c

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_7
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    const-string v5, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ATS][com.android.settings][set_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][successful]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ATS][set_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][successful]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "SoundSettings"

    const-string v7, "could not persist silent list setting"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    const-string v5, "htc_cdma_dtmf_tone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dtmf_tone"

    if-eqz v3, :cond_9

    move v5, v6

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dtmf_tone_type"

    if-ne v3, v6, :cond_a

    :goto_5
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move-object v5, p1

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    move-object v5, p1

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    check-cast p1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v5, "SoundSettings"

    const-string v8, "could not persist cdma DTMF tone enable"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_a
    move v7, v6

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v5, "SoundSettings"

    const-string v7, "could not persist cdma DTMF tone type"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "vibrate_in_silent"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_1

    const/4 v11, 0x1

    :goto_0
    const-string v13, "SoundSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onPreferenceTreeClick vibeInSilent = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v11, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    :cond_0
    :goto_3
    const/4 v13, 0x1

    :goto_4
    return v13

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x0

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v15, v13}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x1

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v14, v15, v13}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "vibrate_when_ringing"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_7
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dtmf_tone"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    :goto_8
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sound_effects_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    :goto_a
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "haptic_feedback_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    :goto_b
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    const/4 v13, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lockscreen_sounds_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    :goto_c
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_10
    const/4 v13, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "htc_pull_to_fresh_sound_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    :goto_d
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_12
    const/4 v13, 0x0

    goto :goto_d

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "notification_light_pulse"

    if-eqz v9, :cond_14

    const/4 v13, 0x1

    :goto_e
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    const/4 v13, 0x0

    goto :goto_e

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "dtmf_tone"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v13, 0x1

    :goto_f
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_16
    const/4 v13, 0x0

    goto :goto_f

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    const/4 v10, 0x0

    const/4 v13, 0x1

    if-ne v5, v13, :cond_18

    const/4 v10, 0x1

    :goto_10
    const-string v13, "SoundSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OoO set RoamingRinttone = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "roaming_ringtone_on"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_18
    const/4 v10, 0x0

    goto :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;

    move-result-object v13

    sget-object v14, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    if-ne v13, v14, :cond_1a

    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_cdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    :goto_11
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_1a
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_wcdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_11

    :cond_1b
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_ring_general:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_11

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1d

    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_gsm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1e

    new-instance v1, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mRingBackToneUri:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1f

    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_notify:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_20

    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_alarm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_21

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_24

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/SoundSettings;->mDndMode:I

    if-eqz v13, :cond_22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_22
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v13, 0x1480

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v13, "com.htc.soundprofile"

    const-string v14, "com.htc.soundprofile.HtcSoundProfileActivity"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aget-object v7, v13, v14

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aget-object v8, v13, v14

    check-cast v8, Ljava/lang/String;

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v13, v13

    if-ge v6, v13, :cond_23

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_23
    const-string v13, "entry"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "entry_value"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_0

    const/4 v3, 0x0

    const-string v13, "SoundSettings"

    const-string v14, "ringvolume test"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.RingerVolume"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getDNDStateInBackgroud()V

    iput-boolean v4, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mActivtyIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->DelayShowControl()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->waitAllThreadEnd()V

    return-void
.end method
