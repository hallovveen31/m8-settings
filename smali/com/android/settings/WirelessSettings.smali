.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_WIFI_CALLING_KEY:Ljava/lang/String; = "button_wifi_calling_key"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ADVANCE_NFC:Ljava/lang/String; = "advance_nfc"

.field private static final KEY_HTC_MINI:Ljava/lang/String; = "htc_mini"

.field private static final KEY_KDDI_NFC_SETTINGS:Ljava/lang/String; = "kddi_nfc_settings"

.field private static final KEY_MOCANA_VPN:Ljava/lang/String; = "mocanavpn"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "sms_application"

.field private static final KEY_SPRINT_TOUCH_MANAGER:Ljava/lang/String; = "sprint_touch_manager"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_IPT:Ljava/lang/String; = "toggle_PS"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_VZW_NFC_SETTINGS:Ljava/lang/String; = "vzw_nfc_settings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SPRINT_TOUCH_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sequent.controlpanel.MainActivity"

.field private static final SPRINT_TOUCH_MANAGER_PACKAGE:Ljava/lang/String; = "com.sequent.controlpanel"

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mSprintTouchManager:Lcom/htc/preference/HtcPreferenceScreen;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

.field private mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/WirelessSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    new-instance v0, Lcom/android/settings/WirelessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->supportDataUsage()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/wireless/HtcDataUsagePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/wireless/HtcDataUsagePreference;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->supportHtcSyncManager(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/android/settings/framework/preference/wireless/HtcSyncManagerPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/wireless/HtcSyncManagerPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->supportMediaLinkSettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/android/settings/framework/preference/wireless/HtcMediaLinkPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/wireless/HtcMediaLinkPreference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "htc_mini"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    goto :goto_0
.end method

.method private getSprintTouchManagerVersion()I
    .locals 5

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.sequent.controlpanel"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initSmsApplicationSetting()V
    .locals 11

    const-string v10, "initSmsApplicationSetting:"

    invoke-direct {p0, v10}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    new-array v4, v0, [Ljava/lang/CharSequence;

    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    :try_start_0
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_1

    :cond_0
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    return-void
.end method

.method private isBluetoothAvailable()Z
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFelickLockEnable()Z
    .locals 2

    const/16 v0, 0x1f

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrangeTagExist()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SELECT_CONTACT_CREATE_TYPE_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "nfc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "advance_nfc"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_3
    const-string v3, "kddi_nfc_settings"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v4, v6

    goto :goto_0

    :cond_6
    move v3, v6

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method private setWifiLocationEnabled(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.HtcLocationAwareQifi.PSAVER_LOCATION_AWARE_WIFI_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    const v11, 0x7f06005d

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v11, "advance_nfc"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const-string v11, "sms_application"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/SmsListPreference;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v11, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isOrangeTagExist()Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x7f0c0002

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_0
    const-string v11, "kddi_nfc_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v11, Lcom/android/settings/nfc/NfcEnabler;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v8, v12}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_toggleable_radios"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    const-string v11, "vpn_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "vpn_settings"

    invoke-virtual {p0, v12}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    sget-boolean v11, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MOCANA_VPN:Z

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "mocanavpn"

    invoke-virtual {p0, v12}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    if-eqz v10, :cond_5

    const-string v11, "bluetooth"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_5
    if-eqz v10, :cond_6

    const-string v11, "nfc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    const-string v11, "advance_nfc"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_7
    const-string v11, "vzw_nfc_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v11, :cond_10

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isBluetoothAvailable()Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "htc_mini"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "advance_nfc"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :goto_4
    const-string v11, "sprint_touch_manager"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mSprintTouchManager:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->getSprintTouchManagerVersion()I

    move-result v12

    if-lt v11, v12, :cond_9

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mSprintTouchManager:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isSmsSupported()Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "sms_application"

    invoke-virtual {p0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_a
    const-string v11, "proxy_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const-string v11, "device_policy"

    invoke-virtual {v1, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_13

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v11, "connectivity"

    invoke-virtual {v1, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v11

    if-nez v11, :cond_14

    :cond_b
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "tether_settings"

    invoke-virtual {p0, v12}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_6
    const-string v11, "toggle_wifi_location"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_c

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "button_wifi_calling_key"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/WifiCallSwitchPreference;

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    :goto_7
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->doPlugin()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isFelickLockEnable()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    :cond_13
    const/4 v11, 0x0

    goto :goto_5

    :cond_14
    const-string v11, "tether_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    const v11, 0x7f0c054f

    invoke-virtual {v9, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_6

    :cond_15
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const-string v12, "button_wifi_calling_key"

    invoke-virtual {p0, v12}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_7
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/WifiCallSwitchPreference;->pause()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.setting.DEFAULT_SMS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/settings/WirelessSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default SMS app package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "LocationAwareWifi_Enable"

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->setWifiLocationEnabled(Z)V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v6

    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    if-ne p2, v7, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "CallerType"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/high16 v6, 0x1420

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v6, "com.movial.wificall"

    const-string v7, "com.movial.wificall.Settings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mSprintTouchManager:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v6, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.sequent.controlpanel"

    const-string v7, "com.sequent.controlpanel.MainActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mWifiLocationCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "LocationAwareWifi_Enable"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    const-string v2, "kddi_nfc_settings"

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings/WifiCallSwitchPreference;->resume()V

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    return-void
.end method
