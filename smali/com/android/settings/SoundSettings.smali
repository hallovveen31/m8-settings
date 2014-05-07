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

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 154
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

    .line 246
    sput-boolean v3, Lcom/android/settings/SoundSettings;->mHasRingBackTone:Z

    .line 422
    sput v4, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 191
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 210
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    .line 211
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    .line 220
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    .line 221
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    .line 222
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    .line 223
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    .line 224
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    .line 225
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    .line 228
    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    .line 231
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    .line 260
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    .line 261
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    .line 265
    iput v2, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    .line 269
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 965
    new-instance v0, Lcom/android/settings/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$5;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mActivtyIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    .line 1365
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    .line 1371
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    .line 1845
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    .line 1846
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    .line 1847
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    .line 1898
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    .line 1899
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    .line 2050
    return-void
.end method

.method private DelayShowControl()V
    .locals 2

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDelayShowControlRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    .line 1374
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1375
    return-void
.end method

.method private UpdateRingtoneSlot2Preference()V
    .locals 3

    .prologue
    .line 1752
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "SoundSettings"

    const-string v1, "dualPhoneEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_0
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    .line 1770
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    .line 1797
    :cond_1
    :goto_1
    return-void

    .line 1758
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 1760
    const-string v0, "SoundSettings"

    const-string v1, "dualGSMPhoneEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_3
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_wcdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    goto :goto_0

    .line 1764
    :cond_4
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 1765
    const-string v0, "SoundSettings"

    const-string v1, "dual_ring_na"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_5
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    goto :goto_0

    .line 1774
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_7

    .line 1779
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    const-string v1, "slot_1_user_text"

    const v2, 0x7f0c0a2f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/SoundSettings;->setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 1781
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    .line 1783
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_8

    .line 1784
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

    .line 1786
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    .line 1787
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-nez v0, :cond_1

    .line 1789
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_9

    .line 1790
    const-string v0, "SoundSettings"

    const-string v1, "set mRingtoneSlot2 title"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    const-string v1, "slot_2_user_text"

    const v2, 0x7f0c0a35

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/SoundSettings;->setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 1795
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
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SoundSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->showSoundProfile()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/SoundSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$dual_ring_mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->UpdateRingtoneSlot2Preference()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateHapticFeedback()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/SoundSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/SoundSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/settings/SoundSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/settings/SoundSettings;->mDndMode:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getDNDStateInBackgroud()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->notifyVolumeChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SoundSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/SoundSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private checkAndShowSoundProfilebyIntent()V
    .locals 6

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 885
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 886
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 887
    const-string v3, "show_sound_profile"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 888
    .local v0, bShowSoundProfile:Z
    if-eqz v0, :cond_0

    .line 889
    const-string v3, "SoundSettings"

    const-string v4, "ShowSoundProfile by Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    .end local v0           #bShowSoundProfile:Z
    :cond_0
    return-void
.end method

.method private customizeSoundProfie()V
    .locals 5

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 835
    const-string v3, "customize_silentlist"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    .line 836
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const-string v3, "customize_silentlist"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    .line 843
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_2

    .line 844
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 845
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_3

    .line 846
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 847
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_4

    .line 848
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 849
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_5

    .line 850
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 851
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    if-eqz v3, :cond_6

    .line 852
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setDependency(Ljava/lang/String;)V

    .line 853
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_7

    .line 854
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "customize_silentlist"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 856
    :cond_7
    const-string v3, "BE_POLITE"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;

    .line 857
    .local v0, bePolite:Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;
    if-eqz v0, :cond_8

    .line 858
    const-string v3, "customize_silentlist"

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setDependency(Ljava/lang/String;)V

    .line 860
    :cond_8
    const-string v3, "PCOKET_MODE"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;

    .line 861
    .local v2, pocketMode:Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;
    if-eqz v2, :cond_9

    .line 862
    const-string v3, "customize_silentlist"

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setDependency(Ljava/lang/String;)V

    .line 864
    :cond_9
    const-string v3, "FLIP_TO_SPEAKER"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;

    .line 865
    .local v1, flipToSpeaker:Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;
    if-eqz v1, :cond_a

    .line 866
    const-string v3, "customize_silentlist"

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setDependency(Ljava/lang/String;)V

    .line 868
    :cond_a
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 871
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    if-eqz v3, :cond_b

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 874
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

    .prologue
    .line 2020
    new-instance v0, Lcom/android/settings/SoundSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$6;-><init>(Lcom/android/settings/SoundSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2048
    return-void
.end method

.method private getDiadPadToneTitleRes()I
    .locals 2

    .prologue
    .line 2010
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2011
    const v0, 0x7f0c0aea

    .line 2014
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0df5

    goto :goto_0
.end method

.method private final getRingerMode(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private getRingerModeFromMM()I
    .locals 4

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1997
    .local v0, ringerMode:I
    sget v1, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    if-le v0, v1, :cond_0

    .line 1998
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

    .line 1999
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2000
    const/4 v0, 0x2

    .line 2002
    :cond_0
    return v0
.end method

.method private getSoundMode(I)I
    .locals 3
    .parameter "mode"

    .prologue
    .line 1063
    packed-switch p1, :pswitch_data_0

    .line 1074
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

    .line 1075
    .end local p1
    :goto_0
    return p1

    .line 1066
    .restart local p1
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 1068
    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    .line 1070
    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    .line 1072
    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    .line 1063
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
    .parameter "mode"

    .prologue
    .line 1080
    packed-switch p1, :pswitch_data_0

    .line 1091
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
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

    .line 1094
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    .line 1099
    :goto_0
    return-object v0

    .line 1083
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 1085
    :pswitch_1
    const-string v0, "silent"

    goto :goto_0

    .line 1087
    :pswitch_2
    const-string v0, "vibrate"

    goto :goto_0

    .line 1089
    :pswitch_3
    const-string v0, "outdoor"

    goto :goto_0

    .line 1098
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

    .line 1099
    const-string v0, "unknown"

    goto :goto_0

    .line 1080
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

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    return-object v0
.end method

.method private initSilentlistEntry()V
    .locals 10

    .prologue
    const v9, 0x7f08007f

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 1850
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 1851
    const/4 v0, 0x0

    .line 1852
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1853
    .local v1, entryValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1854
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1858
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    .end local v1           #entryValues:[Ljava/lang/CharSequence;
    const-string v3, "2"

    aput-object v3, v1, v5

    const-string v3, "1"

    aput-object v3, v1, v4

    const-string v3, "0"

    aput-object v3, v1, v8

    const-string v3, "3"

    aput-object v3, v1, v7

    .line 1866
    .restart local v1       #entryValues:[Ljava/lang/CharSequence;
    :goto_1
    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    .line 1867
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    .line 1868
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1869
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1870
    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    .line 1873
    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v3, :cond_0

    .line 1874
    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    .line 1876
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

    .line 1877
    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v3, :cond_0

    .line 1878
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1881
    .local v2, tmpEntries:[Ljava/lang/CharSequence;
    :goto_3
    new-array v3, v8, [Ljava/lang/CharSequence;

    aget-object v6, v2, v5

    aput-object v6, v3, v5

    aget-object v6, v2, v8

    aput-object v6, v3, v4

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    .line 1883
    new-array v3, v8, [Ljava/lang/CharSequence;

    aget-object v6, v1, v5

    aput-object v6, v3, v5

    aget-object v5, v1, v8

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    .line 1885
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1886
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1891
    .end local v2           #tmpEntries:[Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1893
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    .line 1894
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    .line 1897
    :cond_1
    return-void

    .line 1856
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1858
    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    .end local v1           #entryValues:[Ljava/lang/CharSequence;
    const-string v3, "2"

    aput-object v3, v1, v5

    const-string v3, "1"

    aput-object v3, v1, v4

    const-string v3, "0"

    aput-object v3, v1, v8

    goto/16 :goto_1

    .restart local v1       #entryValues:[Ljava/lang/CharSequence;
    :cond_4
    move v3, v5

    .line 1874
    goto/16 :goto_2

    .line 1878
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3
.end method

.method private final isSupportCustomSoundProfile()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1819
    iget v4, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1821
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_ID"

    aput-object v4, v2, v9

    .line 1822
    .local v2, presetCols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1823
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v4, "content://com.htc.soundprofile.provider/main"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v4, v3

    move-object v5, v3

    .line 1824
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1825
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1827
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1828
    iput v8, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    move v3, v8

    .line 1842
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #presetCols:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return v3

    .line 1831
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #presetCols:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    iput v9, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    .line 1835
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #presetCols:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    const-string v3, "sound_cusm_proflile"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1836
    .local v6, bCustomProfileDebug:Z
    if-eqz v6, :cond_3

    .line 1838
    const-string v3, "SoundSettings"

    const-string v4, "sound_cusm_proflile debug"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 1839
    goto :goto_0

    .line 1832
    .end local v6           #bCustomProfileDebug:Z
    :cond_2
    iget v3, p0, Lcom/android/settings/SoundSettings;->mIsProvideSoundProfileInstalled:I

    if-ne v3, v8, :cond_1

    move v3, v8

    .line 1833
    goto :goto_0

    .line 1841
    .restart local v6       #bCustomProfileDebug:Z
    :cond_3
    const-string v3, "SoundSettings"

    const-string v4, "custm_profile not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    .line 1842
    goto :goto_0
.end method

.method private final isSupportDualSimMode()Z
    .locals 3

    .prologue
    .line 1736
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1737
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

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDual_ring_mode:Lcom/android/settings/SoundSettings$dual_ring_mode;

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    if-ne v0, v1, :cond_1

    .line 1739
    const/4 v0, 0x0

    .line 1741
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    .line 1368
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1369
    return-void
.end method

.method private static makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1685
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1686
    .local v1, data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1687
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SDMSaveOrNot"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1688
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1689
    sget-object v2, Lcom/android/settings/SoundSettings$7;->$SwitchMap$com$android$settings$SoundSettings$soundpicker_mode:[I

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings$soundpicker_mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1712
    const-string v2, "SoundSettings"

    const-string v3, "unnsupport mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 1717
    const-string v2, "SoundSettings"

    const-string v3, "switch on Aurora Promo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    const-string v2, "auroraSwitchKey"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1722
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->useSounPickerInterntActionInsteasofSpeifyPackageName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1723
    const-string v2, "com.htc.soundpicker.SoundPicker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    :goto_1
    return-object v1

    .line 1691
    :pswitch_0
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1694
    :pswitch_1
    const-string v2, "SDMListType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1697
    :pswitch_2
    const-string v2, "SDMListType"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1700
    :pswitch_3
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1701
    const-string v2, "SDMRadioMode"

    const-string v3, "mode_cdma"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1704
    :pswitch_4
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1705
    const-string v2, "SDMRadioMode"

    const-string v3, "mode_wcdma"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1708
    :pswitch_5
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1709
    const-string v2, "SDMRadioMode"

    const-string v3, "mode_gsm"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1725
    :cond_1
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1689
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

    .prologue
    .line 1987
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1988
    .local v1, intentSoundProfile:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1989
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Action"

    const-string v3, "NotifyVolumeChange"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1991
    const-string v2, "com.htc.soundprofile"

    const-string v3, "com.htc.soundprofile.HtcSoundProfileServices"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->startService(Landroid/content/Intent;)V

    .line 1993
    return-void
.end method

.method private setSlotName(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V
    .locals 6
    .parameter "preference"
    .parameter "slotUserText"
    .parameter "defaultName"

    .prologue
    .line 1800
    const-string v1, ""

    .line 1802
    .local v1, slotName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1809
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1810
    const v3, 0x7f0c0a36

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1811
    .local v2, titleName:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1815
    .end local v2           #titleName:Ljava/lang/String;
    :goto_1
    return-void

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1806
    const-string v3, "SoundSettings"

    const-string v4, "Get SlotName fail !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1813
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private showSoundProfile()V
    .locals 6

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 900
    const-string v3, "SoundSettings"

    const-string v4, "showSoundProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    .line 902
    .local v0, dlg:Lcom/htc/preference/HtcDialogPreference;
    const/4 v2, 0x0

    .line 904
    .local v2, privateStringMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Lcom/htc/preference/HtcDialogPreference;

    const-string v5, "onClick"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 910
    :goto_0
    if-eqz v2, :cond_0

    .line 911
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 914
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 927
    .end local v0           #dlg:Lcom/htc/preference/HtcDialogPreference;
    .end local v2           #privateStringMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 906
    .restart local v0       #dlg:Lcom/htc/preference/HtcDialogPreference;
    .restart local v2       #privateStringMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 908
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 915
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 917
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 918
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 920
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 921
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 923
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private final transferToCustomizeProfileVale(I)I
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 1955
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1957
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

    .line 1981
    .end local p1
    :goto_0
    return p1

    .line 1960
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1961
    .local v0, custom_id:I
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

    .line 1963
    if-le v0, v6, :cond_1

    .line 1965
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1966
    .local v1, idObject:Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 1968
    const-string v3, "SoundSettings"

    const-string v4, "invalid customize profile id found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1980
    .end local v1           #idObject:Ljava/lang/Integer;
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

    .line 1973
    .restart local v1       #idObject:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1974
    .local v2, nActiveProfileValue:I
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

    .line 1975
    goto :goto_0
.end method

.method private updateHapticFeedback()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 945
    const-string v4, "sys.psaver.haptic"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, disableVibrator:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 947
    const-string v4, "SoundSettings"

    const-string v5, "Power saver (for haptic) on vitrual key feedback might diasble by powersaver"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_1

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 953
    .local v2, resolver:Landroid/content/ContentResolver;
    if-eqz v2, :cond_3

    .line 954
    const-string v4, "haptic_feedback_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 956
    .local v1, hapticFeedbackEnable:I
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

    .line 957
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 963
    .end local v1           #hapticFeedbackEnable:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    return-void

    .line 949
    :cond_2
    const-string v4, "SoundSettings"

    const-string v5, "Power saver (for haptic) off"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 959
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v3, "SoundSettings"

    const-string v4, "updateHapticFeedback resolver null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 1198
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-eqz v8, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    if-eqz p2, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1202
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1203
    const/4 v6, 0x2

    .line 1204
    .local v6, streamType:I
    packed-switch p1, :pswitch_data_0

    .line 1214
    :pswitch_0
    const/4 v6, 0x2

    .line 1217
    :goto_1
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    .line 1219
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_2

    .line 1220
    const-string v8, "SoundSettings"

    const-string v9, "++getActualDefaultRingtoneUri"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_2
    invoke-static {v0, p1, p4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1222
    .local v4, ringtoneUri:Landroid/net/Uri;
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_3

    .line 1223
    const-string v8, "SoundSettings"

    const-string v9, "--getActualDefaultRingtoneUri"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_3
    const/4 v7, 0x0

    .line 1226
    .local v7, summary:Ljava/lang/CharSequence;
    const v8, 0x1040432

    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1233
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    .line 1236
    if-nez v4, :cond_4

    .line 1238
    const v8, 0x204039b

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1295
    :goto_3
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-nez v8, :cond_0

    .line 1297
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1298
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1206
    .end local v4           #ringtoneUri:Landroid/net/Uri;
    .end local v7           #summary:Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v6, 0x5

    .line 1207
    goto :goto_1

    .line 1209
    :pswitch_2
    const/4 v6, 0x4

    .line 1210
    goto :goto_1

    .line 1227
    .restart local v4       #ringtoneUri:Landroid/net/Uri;
    .restart local v7       #summary:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 1229
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v8, "SoundSettings"

    const-string v9, "load string fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1239
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 1241
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const-string v8, "SoundSettings"

    const-string v9, "load string fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1245
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_4
    const/4 v3, 0x0

    .line 1247
    .local v3, ringtone:Landroid/media/Ringtone;
    :try_start_2
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_5

    .line 1248
    const-string v8, "SoundSettings"

    const-string v9, "++getRingtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_5
    invoke-static {v0, v4, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v3

    .line 1250
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_6

    .line 1251
    const-string v8, "SoundSettings"

    const-string v9, "--getRingtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_6
    iget-boolean v8, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    if-eqz v8, :cond_a

    .line 1253
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_7

    .line 1254
    const-string v8, "SoundSettings"

    const-string v9, "paused release ringtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_7
    if-eqz v3, :cond_0

    .line 1256
    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1274
    :catch_2
    move-exception v1

    .line 1276
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const/4 v7, 0x0

    .line 1277
    const-string v8, "SoundSettings"

    const-string v9, "load ringtitle fail:IllegalStateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_8
    :goto_4
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_9

    .line 1287
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

    .line 1288
    :cond_9
    if-eqz v3, :cond_d

    .line 1289
    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V

    goto/16 :goto_3

    .line 1260
    :cond_a
    if-eqz v3, :cond_c

    .line 1261
    :try_start_3
    invoke-virtual {v3, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1262
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_b

    .line 1263
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

    .line 1265
    :cond_b
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eq v4, v8, :cond_c

    .line 1267
    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->getUriFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, strFileTitle:Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1269
    move-object v7, v5

    .line 1272
    .end local v5           #strFileTitle:Ljava/lang/String;
    :cond_c
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_8

    .line 1273
    const-string v8, "SoundSettings"

    const-string v9, "--ringtone.getTitle("

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 1278
    :catch_3
    move-exception v2

    .line 1280
    .local v2, e1:Ljava/lang/NullPointerException;
    const/4 v7, 0x0

    .line 1281
    const-string v8, "SoundSettings"

    const-string v9, "load ringtitle fail:NullPointerException "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1292
    .end local v2           #e1:Ljava/lang/NullPointerException;
    :cond_d
    const-string v8, "SoundSettings"

    const-string v9, "updateRingtoneName fail to get default ringtone object"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1204
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
    .parameter "value"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1108
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

    .line 1109
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

    .line 1110
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

    .line 1111
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    .line 1114
    packed-switch p1, :pswitch_data_0

    .line 1128
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1133
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->transferToCustomizeProfileVale(I)I

    move-result v0

    .line 1134
    .local v0, tmpvalue:I
    if-ne v0, p1, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1138
    :goto_1
    if-eqz p1, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1191
    .end local v0           #tmpvalue:I
    :cond_1
    :goto_2
    return-void

    .line 1116
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 1119
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 1122
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 1125
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 1137
    .restart local v0       #tmpvalue:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1155
    .end local v0           #tmpvalue:I
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

    .line 1158
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 1174
    :goto_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSumaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1181
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v1, :cond_6

    if-ne p1, v6, :cond_6

    .line 1183
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 1160
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    .line 1163
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    .line 1166
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    .line 1169
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_3

    .line 1186
    :cond_6
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1158
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
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 1028
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v0

    .line 1030
    .local v0, ringerMode:I
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 1034
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1052
    return-void
.end method

.method private waitAllThreadEnd()V
    .locals 2

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadlookupRingtoneNames:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 1388
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1394
    :cond_1
    :goto_1
    return-void

    .line 1381
    :catch_0
    move-exception v0

    .line 1383
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1389
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1391
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method UpdateCustomizeProfileEntry()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1906
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1952
    :goto_0
    return-void

    .line 1908
    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 1909
    const-string v3, "SoundSettings"

    const-string v5, "UpdateCustomizeProfileEntry"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_ID"

    aput-object v3, v2, v13

    const-string v3, "NAME"

    aput-object v3, v2, v12

    .line 1913
    .local v2, presetCols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1914
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "content://com.htc.soundprofile.provider/main"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1915
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "_ID > 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1916
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1917
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1918
    .local v10, nCount:I
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

    .line 1919
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    .line 1920
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    .line 1921
    const/4 v8, 0x0

    .line 1922
    .local v8, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v8, v3, :cond_2

    .line 1924
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    .line 1925
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    .line 1926
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v8

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1927
    .local v11, value:I
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1930
    .end local v11           #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringvolume_soundprofile_active_profile_id"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1931
    .local v7, custom_id:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1932
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1934
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

    .line 1935
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1936
    .local v9, id:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfile:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mapCustomProfileRevert:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1939
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1940
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1941
    add-int/lit8 v8, v8, 0x1

    .line 1942
    goto :goto_2

    .line 1943
    .end local v9           #id:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1945
    .end local v7           #custom_id:I
    .end local v8           #i:I
    .end local v10           #nCount:I
    :cond_4
    const-string v3, "SoundSettings"

    const-string v4, "curror null:customize sound profile, query provider fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntry:[Ljava/lang/CharSequence;

    .line 1947
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 2006
    const v0, 0x7f0c12d2

    return v0
.end method

.method getUriFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 1307
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 1308
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

    .line 1310
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 1311
    const/4 v10, 0x0

    .line 1312
    .local v10, ringtoneTitle:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 1314
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 1315
    .local v11, scheme:Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v1, "file"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1316
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 1317
    const-string v1, "SoundSettings"

    const-string v2, "getUriFileName: scheme not equals to file abort lookup."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v11           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1322
    :catch_0
    move-exception v8

    .line 1323
    .local v8, e:Ljava/lang/Exception;
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

    .line 1327
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v11       #scheme:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 1329
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1330
    .local v6, context:Landroid/content/Context;
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 1331
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

    .line 1333
    :cond_3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1335
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_4

    .line 1336
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

    .line 1338
    :cond_4
    if-eqz v7, :cond_5

    .line 1339
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1340
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 1341
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 1342
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

    .line 1357
    .end local v6           #context:Landroid/content/Context;
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 1358
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #scheme:Ljava/lang/String;
    :cond_6
    move-object v0, v10

    .line 1362
    goto/16 :goto_0

    .line 1345
    .restart local v6       #context:Landroid/content/Context;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v11       #scheme:Ljava/lang/String;
    :cond_7
    :try_start_2
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 1346
    const-string v0, "SoundSettings"

    const-string v1, "getUriFileName: ringtoneTitle: null (cursor count <= 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1351
    .end local v6           #context:Landroid/content/Context;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1353
    :catch_2
    move-exception v9

    .line 1354
    .local v9, npe:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 427
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SoundSettings;->mIsStop:Z

    .line 429
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportOutDoorMode()Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v25, 0x3

    :goto_0
    sput v25, Lcom/android/settings/SoundSettings;->mMaxRingerModeIndex:I

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 433
    .local v20, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 435
    .local v3, activePhoneType:I
    const-string v25, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/AudioManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 440
    const v25, 0x7f060044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 443
    sget-object v25, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    .line 444
    .local v6, dndPreference:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;
    if-eqz v6, :cond_0

    .line 445
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportDoNotDisturbFeature()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 446
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/SoundSettings;->addCallback(Ljava/lang/Object;)V

    .line 452
    :cond_0
    :goto_1
    const-string v25, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    :cond_1
    const-string v25, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    .line 459
    const-string v25, "ringtone_slot2"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    :cond_2
    const-string v25, "alarm_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    :cond_3
    const-string v25, "ring_back_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    .line 466
    const v25, 0x7f0c0a3c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingBackToneUri:Ljava/lang/String;

    .line 468
    const-string v25, "button_roaming_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 471
    const-string v25, "htc_cdma_dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    .line 472
    const-string v25, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 473
    const/4 v15, 0x0

    .line 476
    .local v15, mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v0, v3, :cond_1b

    sget-boolean v25, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    const-string v26, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 485
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    .line 493
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 494
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

    .line 516
    :goto_3
    if-eqz v15, :cond_6

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 521
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getDiadPadToneTitleRes()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 524
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getDiadPadToneTitleRes()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 529
    :cond_8
    const-string v25, "silentlist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->initSilentlistEntry()V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->UpdateCustomizeProfileEntry()V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 537
    const-string v25, "vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 543
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

    .line 547
    const-string v25, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 549
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

    .line 551
    const-string v25, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 555
    const-string v25, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 557
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

    .line 561
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Vibrator;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_9

    .line 562
    const-string v25, "SoundSettings"

    const-string v26, "The device not support vibrator!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 566
    :cond_9
    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v0, v3, :cond_a

    sget-boolean v25, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 568
    :cond_a
    const-string v25, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    .line 570
    .local v9, emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
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

    .line 572
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 586
    .end local v9           #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-nez v25, :cond_21

    .line 587
    const-string v25, "SoundSettings"

    const-string v26, "OoO get the null object of KEY_BUTTON_ROAM_RINGTONE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_7
    const-string v25, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    const-string v26, "musicfx"

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    .line 597
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v12, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 599
    .local v17, p:Landroid/content/pm/PackageManager;
    const/16 v25, 0x200

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 600
    .local v21, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
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

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportRingAndVibrateMode()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 611
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

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0007

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 616
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 627
    :goto_8
    const-string v25, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 632
    const-string v25, "HtcFlipToMutePreference"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;

    .line 635
    .local v10, flipToMutePreference:Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;
    if-eqz v10, :cond_e

    .line 636
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportFlipToMute()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/SoundSettings;->addCallback(Ljava/lang/Object;)V

    .line 645
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

    .line 651
    .local v24, supportFlipToSpeakerMode:Z
    :goto_a
    if-nez v24, :cond_10

    .line 652
    const-string v25, "SoundSettings"

    const-string v26, "Removed flipToSpeakerMode;"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v25, "FLIP_TO_SPEAKER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    .line 655
    .local v11, flipToSpeakerMode:Lcom/htc/preference/HtcPreference;
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 659
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "flip_to_speaker"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    .end local v11           #flipToSpeakerMode:Lcom/htc/preference/HtcPreference;
    :cond_10
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v25

    if-nez v25, :cond_15

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 669
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 671
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 673
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c08b9

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 675
    :cond_14
    const-string v25, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    .line 676
    .restart local v9       #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    if-eqz v9, :cond_15

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 681
    .end local v9           #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 682
    const-string v25, "SoundSettings"

    const-string v26, "Removed Vibrate Preference during Dock Mode;"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 686
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_26

    .line 687
    sget-object v4, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_b
    if-ge v13, v14, :cond_26

    aget-object v19, v4, v13

    .line 688
    .local v19, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    .line 689
    .local v18, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v18, :cond_17

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 687
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 429
    .end local v3           #activePhoneType:I
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #dndPreference:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;
    .end local v10           #flipToMutePreference:Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;
    .end local v12           #i:Landroid/content/Intent;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    .end local v17           #p:Landroid/content/pm/PackageManager;
    .end local v18           #pref:Lcom/htc/preference/HtcPreference;
    .end local v19           #prefKey:Ljava/lang/String;
    .end local v20           #resolver:Landroid/content/ContentResolver;
    .end local v21           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24           #supportFlipToSpeakerMode:Z
    :cond_18
    const/16 v25, 0x2

    goto/16 :goto_0

    .line 448
    .restart local v3       #activePhoneType:I
    .restart local v6       #dndPreference:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;
    .restart local v20       #resolver:Landroid/content/ContentResolver;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 494
    .restart local v15       #mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 500
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setPersistent(Z)V

    .line 501
    const-string v25, "dtmf_tone"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 502
    .local v8, dtmfOn:I
    const/4 v5, 0x0

    .line 503
    .local v5, cdmaDtmfValue:I
    if-eqz v8, :cond_1c

    .line 504
    const-string v25, "dtmf_tone_type"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 505
    .local v7, dtmfLongTone:I
    if-eqz v7, :cond_1d

    const/4 v5, 0x2

    .line 507
    .end local v7           #dtmfLongTone:I
    :cond_1c
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_3

    .line 505
    .restart local v7       #dtmfLongTone:I
    :cond_1d
    const/4 v5, 0x1

    goto :goto_c

    .line 543
    .end local v5           #cdmaDtmfValue:I
    .end local v7           #dtmfLongTone:I
    .end local v8           #dtmfOn:I
    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 549
    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 557
    :cond_20
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 589
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v22

    .line 590
    .local v22, rmOK:Z
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

    .line 619
    .end local v22           #rmOK:Z
    .restart local v12       #i:Landroid/content/Intent;
    .restart local v17       #p:Landroid/content/pm/PackageManager;
    .restart local v21       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
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

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 622
    :catch_0
    move-exception v23

    .line 623
    .local v23, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v25, "SoundSettings"

    const-string v26, "notification_light_pulse not found"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 619
    .end local v23           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_23
    const/16 v25, 0x0

    goto :goto_d

    .line 640
    .restart local v10       #flipToMutePreference:Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_9

    .line 645
    :cond_25
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 695
    .restart local v24       #supportFlipToSpeakerMode:Z
    :cond_26
    new-instance v25, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 763
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportKDDIHasRingBackTone()Z

    move-result v25

    sput-boolean v25, Lcom/android/settings/SoundSettings;->mHasRingBackTone:Z

    .line 764
    const-string v25, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 771
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

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 776
    :cond_28
    new-instance v25, Lcom/android/settings/SoundSettings$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$4;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDelayShowControlRunnable:Ljava/lang/Runnable;

    .line 785
    const-string v25, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    .line 786
    const-string v25, "htc_pull_to_refresh_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_29

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 795
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

    .line 799
    :cond_29
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportNFCSoundInCall()Z

    move-result v25

    if-nez v25, :cond_2a

    .line 800
    sget-object v25, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    .line 802
    .local v16, nfcSoundInCall:Lcom/htc/preference/HtcPreference;
    if-eqz v16, :cond_2a

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 807
    .end local v16           #nfcSoundInCall:Lcom/htc/preference/HtcPreference;
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->DelayShowControl()V

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->checkAndShowSoundProfilebyIntent()V

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->customizeSoundProfie()V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->requestHandlers()V

    .line 815
    new-instance v25, Lcom/android/settings/SoundSettings$DNDObserver;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$DNDObserver;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    .line 816
    return-void

    .line 795
    :cond_2b
    const/16 v25, 0x0

    goto :goto_e
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1008
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 1009
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    .line 1011
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1017
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1018
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1014
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "SoundSettings"

    const-string v2, " mReceiver not registry do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1590
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, key:Ljava/lang/String;
    const-string v5, "emergency_tone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1592
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1594
    .local v3, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "emergency_tone"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    .end local v3           #value:I
    .end local p1
    :cond_0
    :goto_0
    return v6

    .line 1596
    .restart local v3       #value:I
    .restart local p1
    :catch_0
    move-exception v0

    .line 1597
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "SoundSettings"

    const-string v7, "could not persist emergency tone setting"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1599
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #value:I
    .restart local p2
    :cond_1
    const-string v5, "vibrate"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1600
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object v5, p1

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v7, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1603
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v6, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1609
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .restart local p1
    :cond_3
    move v5, v7

    .line 1600
    goto :goto_1

    .end local p1
    :cond_4
    move v5, v7

    .line 1603
    goto :goto_2

    .line 1612
    .restart local p1
    :cond_5
    const-string v5, "silentlist"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1615
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1617
    .restart local v3       #value:I
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_6

    .line 1618
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

    .line 1620
    :cond_6
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getRingerMode(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1629
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 1630
    if-ne v3, v6, :cond_7

    .line 1632
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 1633
    .local v4, vibrator:Landroid/os/Vibrator;
    const-wide/16 v7, 0x12c

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1635
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :cond_7
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 1637
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

    .line 1638
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

    .line 1643
    .end local v3           #value:I
    :catch_1
    move-exception v0

    .line 1644
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "SoundSettings"

    const-string v7, "could not persist silent list setting"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1651
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_8
    const-string v5, "htc_cdma_dtmf_tone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p2

    .line 1652
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1654
    .restart local v3       #value:I
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dtmf_tone"

    if-eqz v3, :cond_9

    move v5, v6

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1660
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dtmf_tone_type"

    if-ne v3, v6, :cond_a

    :goto_5
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move-object v5, p1

    .line 1665
    check-cast v5, Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .local v2, selectIndex:I
    move-object v5, p1

    .line 1666
    check-cast v5, Lcom/htc/preference/HtcListPreference;

    check-cast p1, Lcom/htc/preference/HtcListPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v2           #selectIndex:I
    .restart local p1
    .restart local p2
    :cond_9
    move v5, v7

    .line 1654
    goto :goto_3

    .line 1656
    :catch_2
    move-exception v0

    .line 1657
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "SoundSettings"

    const-string v8, "could not persist cdma DTMF tone enable"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_a
    move v7, v6

    .line 1660
    goto :goto_5

    .line 1662
    :catch_3
    move-exception v0

    .line 1663
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "SoundSettings"

    const-string v7, "could not persist cdma DTMF tone type"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 17
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 1397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_4

    .line 1398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1399
    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "vibrate_in_silent"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_1

    const/4 v11, 0x1

    .line 1403
    .local v11, vibeInSilent:Z
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

    .line 1404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v11, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1410
    .end local v11           #vibeInSilent:Z
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 1586
    :cond_0
    :goto_3
    const/4 v13, 0x1

    :goto_4
    return v13

    .line 1399
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1404
    .restart local v11       #vibeInSilent:Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 1408
    .end local v11           #vibeInSilent:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 1411
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_8

    .line 1412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    .line 1413
    .local v12, vibrate:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x0

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v15, v13}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x1

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v14, v15, v13}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1413
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 1416
    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    .line 1422
    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    .line 1425
    .end local v12           #vibrate:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_a

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1429
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_d

    .line 1430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 1435
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1433
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_9

    .line 1435
    :cond_c
    const/4 v13, 0x0

    goto :goto_a

    .line 1438
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_f

    .line 1439
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1442
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_11

    .line 1443
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1445
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mPullToRefresh:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_13

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1450
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_15

    .line 1451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    .line 1452
    .local v9, value:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1459
    .end local v9           #value:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_17

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1467
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_19

    .line 1468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    .line 1469
    .local v5, enableRoamingRingTone:Z
    const/4 v10, 0x0

    .line 1470
    .local v10, valueOfRoamingRingTone:I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_18

    .line 1471
    const/4 v10, 0x1

    .line 1475
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

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "roaming_ringtone_on"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1473
    :cond_18
    const/4 v10, 0x0

    goto :goto_10

    .line 1480
    .end local v5           #enableRoamingRingTone:Z
    .end local v10           #valueOfRoamingRingTone:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1c

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1483
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;

    move-result-object v13

    sget-object v14, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    if-ne v13, v14, :cond_1a

    .line 1484
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_cdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .line 1493
    .local v3, data:Landroid/content/Intent;
    :goto_11
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1494
    :catch_0
    move-exception v4

    .line 1495
    .local v4, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1486
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_1a
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_wcdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #data:Landroid/content/Intent;
    goto :goto_11

    .line 1489
    .end local v3           #data:Landroid/content/Intent;
    :cond_1b
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_ring_general:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #data:Landroid/content/Intent;
    goto :goto_11

    .line 1497
    .end local v3           #data:Landroid/content/Intent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1d

    .line 1499
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_gsm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .line 1501
    .restart local v3       #data:Landroid/content/Intent;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1502
    :catch_1
    move-exception v4

    .line 1503
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1505
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mRingbackTone:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1e

    .line 1506
    new-instance v1, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SoundSettings;->mRingBackToneUri:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1508
    .local v1, browserIntent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 1509
    :catch_2
    move-exception v4

    .line 1510
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1513
    .end local v1           #browserIntent:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1f

    .line 1515
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_notify:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .line 1519
    .restart local v3       #data:Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 1520
    :catch_3
    move-exception v4

    .line 1521
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1523
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_20

    .line 1525
    sget-object v13, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_alarm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v13}, Lcom/android/settings/SoundSettings;->makeSoundPickerIntent(Lcom/android/settings/SoundSettings$soundpicker_mode;)Landroid/content/Intent;

    move-result-object v3

    .line 1529
    .restart local v3       #data:Landroid/content/Intent;
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 1530
    :catch_4
    move-exception v4

    .line 1531
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1534
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_21

    .line 1536
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1541
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z

    move-result v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mCustomizeSilentlist:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_24

    .line 1542
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/SoundSettings;->mDndMode:I

    if-eqz v13, :cond_22

    .line 1544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1545
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 1547
    :cond_22
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1548
    .restart local v3       #data:Landroid/content/Intent;
    const/high16 v13, 0x1480

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1549
    const-string v13, "com.htc.soundprofile"

    const-string v14, "com.htc.soundprofile.HtcSoundProfileActivity"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1551
    .local v2, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aget-object v7, v13, v14

    check-cast v7, Ljava/lang/String;

    .line 1552
    .local v7, strEntry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntryValues:[Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aget-object v8, v13, v14

    check-cast v8, Ljava/lang/String;

    .line 1553
    .local v8, strEntryValue:Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, i:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mSystemProfileEntries:[Ljava/lang/CharSequence;

    array-length v13, v13

    if-ge v6, v13, :cond_23

    .line 1555
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1556
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

    .line 1557
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1558
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

    .line 1553
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 1561
    :cond_23
    const-string v13, "entry"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v13, "entry_value"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1566
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    .line 1568
    :catch_5
    move-exception v4

    .line 1570
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1572
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #i:I
    .end local v7           #strEntry:Ljava/lang/String;
    .end local v8           #strEntryValue:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SoundSettings;->mAllVolume:Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_0

    .line 1573
    const/4 v3, 0x0

    .line 1574
    .restart local v3       #data:Landroid/content/Intent;
    const-string v13, "SoundSettings"

    const-string v14, "ringvolume test"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v3, Landroid/content/Intent;

    .end local v3           #data:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1576
    .restart local v3       #data:Landroid/content/Intent;
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.RingerVolume"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 1579
    :catch_6
    move-exception v4

    .line 1580
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 931
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDNDObserver:Lcom/android/settings/SoundSettings$DNDObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 935
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getDNDStateInBackgroud()V

    .line 936
    iput-boolean v4, p0, Lcom/android/settings/SoundSettings;->mIsPause:Z

    .line 937
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 938
    .local v0, msgQueue:Landroid/os/MessageQueue;
    if-eqz v0, :cond_0

    .line 939
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mActivtyIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 942
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 821
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 822
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    .line 825
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z

    if-nez v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->DelayShowControl()V

    .line 830
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1021
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsStop:Z

    .line 1023
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->waitAllThreadEnd()V

    .line 1024
    return-void
.end method
