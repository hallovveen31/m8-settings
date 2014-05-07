.class public Lcom/android/settings/nfc/AdvanceNfcSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "AdvanceNfcSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;,
        Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;
    }
.end annotation


# static fields
.field private static final IS_NFC_TURN_ON_BEFORE:Ljava/lang/String; = "is_nfc_turn_on_before"

.field private static final PREF_KEY_ANDROID_BEAM:Ljava/lang/String; = "advance_nfc_android_beam"

.field private static final PREF_KEY_ENABLE_SECURITY_REMINDER:Ljava/lang/String; = "vzw_enable_nfc_security_reminder"

.field private static final PREF_KEY_RW_P2P:Ljava/lang/String; = "advance_nfc_rw_p2p"

.field private static final PREF_KEY_TAP_AND_PAY:Ljava/lang/String; = "advance_nfc_tap_and_pay"

.field private static final PREF_KEY_VZW_ENABLE_HANDOVER_PROMPT:Ljava/lang/String; = "vzw_enable_nfc_handover_prompt"

.field private static final PROVIDER_KEY_SECURITY_REMINDER_ENABLED:Ljava/lang/String; = "vzw_nfc_security_reminder_enabled"

.field private static final PROVIDER_KEY_VZW_HANDOVER_PROMPT_ENABLED:Ljava/lang/String; = "vzw_nfc_handover_prompt_enabled"

.field private static final TAG:Ljava/lang/String; = "AdvanceNfcSettings"

.field private static final VZW_NFC_SETTINGS_PREF:Ljava/lang/String; = "vzw_nfc_settings_preferences"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

.field private mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsNfcStateChangeReceiverRegistered:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

.field private mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIsNfcStateChangeReceiverRegistered:Z

    new-instance v0, Lcom/android/settings/nfc/AdvanceNfcSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$1;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/nfc/AdvanceNfcSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/AdvanceNfcSettings$2;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/AdvanceNfcSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/AdvanceNfcSettings;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/AdvanceNfcSettings;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private disableNfcIfMDMLocked()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->disableNfcIfMDMLocked()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isRwP2PEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isAndroidBeamNecessary()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v1, v0, :cond_0

    const/16 v1, 0x2d

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNfcHandoverPromptNecessary()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method private isNfcSecurityReminderNecessary()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method private isNfcTurnOnBefore()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vzw_nfc_settings_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_nfc_turn_on_before"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isP2PEnabled()Z

    move-result v0

    return v0
.end method

.method private isRWEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderWriterEnabled()Z

    move-result v0

    return v0
.end method

.method private isRwP2PEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isRWEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRwP2pNeedCustomized()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    return v0
.end method

.method private needToShowTurnOnNfcWarning()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isNfcTurnOnBefore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->needToShowTurnOnNfcWarning()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "turn_on_nfc_warning"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;->newInstance(Landroid/app/Fragment;)Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    move-result-object v2

    const-string v3, "turn_on_nfc_warning"

    invoke-virtual {v2, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v3, "advance_nfc_rw_p2p"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isRwP2pNeedCustomized()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_0
    const-string v3, "advance_nfc_android_beam"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isAndroidBeamNecessary()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_1
    const-string v3, "vzw_enable_nfc_handover_prompt"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isNfcHandoverPromptNecessary()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_2
    const-string v3, "vzw_enable_nfc_security_reminder"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->isNfcSecurityReminderNecessary()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_3
    const-string v3, "advance_nfc_tap_and_pay"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mTapAndPay:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v3, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    :cond_0
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "vzw_nfc_handover_prompt_enabled"

    invoke-static {v3, v5, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "AdvanceNfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hand over prompt enalbed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "vzw_nfc_security_reminder_enabled"

    invoke-static {v3, v5, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "AdvanceNfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security reminder enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIsNfcStateChangeReceiverRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIsNfcStateChangeReceiverRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "AdvanceNfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "advance_nfc_rw_p2p"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AdvanceNfcSettings"

    const-string v5, "Change R/W P2P state."

    invoke-static {v4, v5}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v4, :cond_2

    :cond_0
    const-string v2, "AdvanceNfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nfc adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/nfc/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AdvanceNfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RW P2P: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/nfc/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableReaderWriter()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableP2P()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    const-string v2, "AdvanceNfcSettings"

    const-string v4, "Enable R/W P2P failed!"

    invoke-static {v2, v4}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const-string v4, "AdvanceNfcSettings"

    const-string v5, "Enable R/W P2P successfully."

    invoke-static {v4, v5}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableReaderWriter()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableP2P()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :goto_2
    if-nez v1, :cond_7

    const-string v4, "AdvanceNfcSettings"

    const-string v5, "Disable R/W P2P failed!"

    invoke-static {v4, v5}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    const-string v2, "AdvanceNfcSettings"

    const-string v4, "Disable R/W P2P successfully."

    invoke-static {v2, v4}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mRwP2P:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8

    const-string v5, "AdvanceNfcSettings"

    const-string v6, "onPreferenceClick"

    invoke-static {v5, v6}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v5, :cond_1

    const-string v5, "AdvanceNfcSettings"

    const-string v6, "Handover prompt"

    invoke-static {v5, v6}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableHandoverPrompt:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    const-string v5, "AdvanceNfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To enable handover prompt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_nfc_handover_prompt_enabled"

    invoke-static {v5, v6, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    :goto_0
    const/4 v5, 0x0

    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    const-string v5, "AdvanceNfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To enable security reminder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_nfc_security_reminder_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "turn_off_security_reminder_warning"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->newInstance(Landroid/app/Fragment;)Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    move-result-object v4

    const-string v5, "turn_off_security_reminder_warning"

    invoke-virtual {v4, v2, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/AdvanceNfcSettings;->handleNfcStateChanged(I)V

    iget-boolean v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIsNfcStateChangeReceiverRegistered:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mIsNfcStateChangeReceiverRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    return-void
.end method
