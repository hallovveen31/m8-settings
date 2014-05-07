.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ENABLE_LAN_INFO:Z = false

.field private static final KEY_ACCESS_CONDITION:Ljava/lang/String; = "access_condition"

.field private static final KEY_ATT_WAN_DETECTION:Ljava/lang/String; = "att_wan_detection"

.field private static final KEY_ATT_WLAN_CONNECTION:Ljava/lang/String; = "att_wlan_connection"

.field private static final KEY_AUTO_DISCONNECT:Ljava/lang/String; = "auto_disconnect"

.field private static final KEY_BLOCK_OPEN_NETWORK_NOTIFY:Ljava/lang/String; = "open_networks_block_ap"

.field private static final KEY_CMCC_WLAN_CONNECTION:Ljava/lang/String; = "cmcc_wlan_connection"

.field private static final KEY_CONNECTIVITY_ENGINE:Ljava/lang/String; = "wifi_connectivity_engine"

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_CW_NETWORK_NOTIFY:Ljava/lang/String; = "cw_network_notification"

.field private static final KEY_DLNA_AUTO_IP:Ljava/lang/String; = "wifi_dlna_auto_ip"

.field private static final KEY_DLNA_SETTING_TITLE:Ljava/lang/String; = "wifi_dlna_setting_titlebar"

.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_INSTALL_CREDENTIALS:Ljava/lang/String; = "install_credentials"

.field private static final KEY_LAN_INFO:Ljava/lang/String; = "lan_info"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NEVER_AUTO_TURN_ON_WIFI:Ljava/lang/String; = "never_auto_turn_on_wifi"

.field private static final KEY_NOTIFY_AVAILABLE_NETWORKS:Ljava/lang/String; = "notify_available_networks"

.field private static final KEY_NOTIFY_ME:Ljava/lang/String; = "notify_me"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_POOR_NETWORK_DETECTION:Ljava/lang/String; = "wifi_poor_network_detection"

.field private static final KEY_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_scan_always_available"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_SUSPEND_OPTIMIZATIONS:Ljava/lang/String; = "suspend_optimizations"

.field private static final KEY_WIFI_PWR_ACTIVE_MODE:Ljava/lang/String; = "wifi_pwr_active_mode"

.field private static final KEY_WISPR_AUTO_LOGIN:Ljava/lang/String; = "key_wifi_wispr_auto_login"

.field public static final NEVER_AUTO_TURN_ON:Ljava/lang/String; = "NEVER_AUTO_TURN_ON"

.field private static final POWER_ACT_MODE:Z = false

.field private static final PROVIDER_KEY_CW_PPP_NOTIFY:Ljava/lang/String; = "cw_ppp_notify"

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"

.field public static final WIFI_OFFLOAD_PREFERENCE:Ljava/lang/String; = "WIFIOFFLOAD"

.field private static final WISPR_AUTO_LOGIN:Ljava/lang/String; = "wispr"


# instance fields
.field private mATTAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnableDlnaAutoIp:Z

.field private mFreqBandList:Lcom/htc/preference/HtcListPreference;

.field private mLanInfo:Lcom/htc/preference/HtcPreference;

.field private mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private getWISPrManager()Lcom/android/settings/wifi/WISPrManager;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WISPrManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v0

    return-object v0
.end method

.method private initAutoDisConnect()V
    .locals 2

    const-string v1, "auto_disconnect"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 20

    const-string v17, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_watchdog_poor_network_test_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    const-string v17, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f08001b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_sleep_policy"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V

    :cond_2
    const-string v17, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v17, "notify_available_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v17, "notify_me"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v17, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceScreen;

    sget-boolean v17, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v17, :cond_10

    if-eqz v8, :cond_3

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_networks_available_notification_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v17

    if-eqz v17, :cond_13

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_secure_networks_available_notification_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_6
    :goto_4
    const-string v17, "key_wifi_wispr_auto_login"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_7
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->removeWISPRFeature()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "wifi_wispr_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v15

    check-cast v15, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v17, "key_wifi_wispr_auto_login"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v17, "key_wifi_wispr_account_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    if-eqz v15, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v8, v15}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_8
    if-eqz v3, :cond_9

    if-eqz v8, :cond_9

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_9
    if-eqz v16, :cond_a

    if-eqz v8, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_a
    const-string v17, "cmcc_wlan_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WLAN_CONNECTION:Z

    if-nez v17, :cond_14

    if-eqz v8, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_b
    :goto_5
    const-string v17, "att_wlan_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WLAN_CONNECTION:Z

    if-nez v17, :cond_16

    if-eqz v8, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_c
    :goto_6
    const-string v17, "att_wan_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WAN_DETECTION:Z

    if-nez v17, :cond_19

    if-eqz v8, :cond_d

    if-eqz v14, :cond_d

    invoke-virtual {v8, v14}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_d
    :goto_7
    const-string v17, "open_networks_block_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v17

    if-nez v17, :cond_e

    if-eqz v8, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_e
    return-void

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_10
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_13
    if-eqz v8, :cond_6

    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    :cond_14
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssociationManual(Landroid/net/wifi/WifiManager;)I

    move-result v13

    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_15

    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " value = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getATTAssociationManual()I

    move-result v17

    if-nez v17, :cond_18

    const/4 v13, 0x1

    :goto_8
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_17

    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " att wlan value = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_18
    const/4 v13, 0x0

    goto :goto_8

    :cond_19
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->getWanDetectionEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_1a

    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " wan detect = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {v14, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method private refreshWifiInfo()V
    .locals 10

    const v8, 0x7f0c0e63

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string v7, "mac_address"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-nez v3, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v7, "current_ip_address"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_ip_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v6, "AdvancedWifiSettings"

    const-string v7, "Failed to fetch frequency band"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f08001b

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    const v2, 0x7f08001a

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateUi()V
    .locals 14

    const/4 v13, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v9, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiOffloadEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_0
    sget-boolean v9, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->isNeverAutoTurnOn()Z

    move-result v2

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v2, :cond_8

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    sget-boolean v9, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->isNotifyOn()Z

    move-result v3

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_2
    const-string v9, "wifi_scan_always_available"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_scan_always_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_9

    move v9, v10

    :goto_1
    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.android.certinstaller"

    const-string v12, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "install_as_uid"

    const/16 v12, 0x3f2

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "install_credentials"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    const-string v9, "notify_open_networks"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_a

    move v9, v10

    :goto_2
    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_3
    const-string v9, "notify_available_networks"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_secure_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    move v9, v10

    :goto_3
    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getWISPrManager()Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WISPrManager;->isAutoLoginOn()Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_7

    const-string v9, "cw_ppp_notify"

    invoke-static {v0, v9, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq v3, v13, :cond_c

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq v3, v10, :cond_6

    if-ne v3, v13, :cond_d

    :cond_6
    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_7
    const-string v9, "suspend_optimizations"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_suspend_optimizations_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_e

    :goto_6
    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_8
    move v9, v11

    goto/16 :goto_0

    :cond_9
    move v9, v11

    goto/16 :goto_1

    :cond_a
    move v9, v11

    goto :goto_2

    :cond_b
    move v9, v11

    goto :goto_3

    :cond_c
    move v9, v11

    goto :goto_4

    :cond_d
    move v9, v11

    goto :goto_5

    :cond_e
    move v10, v11

    goto :goto_6
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0d2b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    sget-boolean v7, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-nez v7, :cond_a

    if-eqz v2, :cond_1

    const-string v7, "cw_account_info"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_1
    :goto_0
    const-string v7, "never_auto_turn_on_wifi"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    const-string v7, "wifi_connectivity_engine"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->support_cne()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    :goto_1
    const-string v7, "wifi_pwr_active_mode"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initAutoDisConnect()V

    sget-boolean v7, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    if-nez v7, :cond_5

    const-string v7, "lan_info"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v7, :cond_c

    const-string v7, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_6
    :goto_2
    const-string v7, "frequency_band"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcListPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v7, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V

    :cond_7
    :goto_3
    const-string v7, "access_condition"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_8
    const-string v7, "wifi_scan_always_available"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    const v7, 0x7f0c018e

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    return-void

    :cond_a
    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v2, :cond_1

    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/wifi/CneManagerWrapper;->getWQEEnabled()Z

    move-result v1

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_c
    const-string v7, "wifi_dlna_setting_titlebar"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_d
    const-string v7, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    :cond_e
    const-string v7, "AdvancedWifiSettings"

    const-string v8, "Failed to fetch frequency band"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v12, "frequency_band"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v12, 0x1

    :goto_1
    return v12

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0c0d9c

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const-string v12, "sleep_policy"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_sleep_policy"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0c0d3f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v12, :cond_6

    const-string v12, "auto_disconnect"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v12, :cond_4

    new-instance v12, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0c0381

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c0384

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c00a4

    new-instance v14, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v14, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v12, v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c00a3

    new-instance v14, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v14, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v12, v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v13, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_5
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiOffloadEnabled(Landroid/net/wifi/WifiManager;Z)Z

    goto/16 :goto_0

    :cond_6
    iget-boolean v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v12, :cond_8

    const-string v12, "wifi_dlna_auto_ip"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v12, :cond_0

    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v11, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-static {v13, v12}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->enableAutoIP(Landroid/net/wifi/WifiManager;I)Z

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    const-string v12, "never_auto_turn_on_wifi"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v13

    if-nez v7, :cond_9

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNeverAutoTurnOn(Z)V

    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v7, :cond_a

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    const-string v12, "notify_me"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNotifyOn(Z)V

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v12

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    :cond_c
    const-string v12, "access_condition"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "AdvancedWifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " newValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v6, p1

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    const-string v12, "key_wifi_wispr_auto_login"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getWISPrManager()Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/settings/wifi/WISPrManager;->persistWISPrAutoLogin(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v12, "cw_network_notification"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "cw_ppp_notify"

    if-eqz v11, :cond_f

    const/4 v12, 0x1

    :goto_6
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v12, "AdvancedWifiSettings"

    const-string v13, "Failed to set cw_network_notification"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    :cond_10
    const-string v12, "cmcc_wlan_connection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-boolean v12, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_11

    const-string v12, "AdvancedWifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " newValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setAssociationManual(Landroid/net/wifi/WifiManager;I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v6, p1

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_12
    const-string v12, "wifi_connectivity_engine"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/settings/wifi/CneManagerWrapper;->setWQEEnabled(Z)V

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_13
    const-string v12, "att_wlan_connection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v11, 0x0

    :goto_7
    sget-boolean v12, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_14

    const-string v12, "AdvancedWifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " newValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v11}, Landroid/net/wifi/WifiManager;->setATTAssociationManual(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v9, p1

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_15
    const/4 v11, 0x1

    goto :goto_7

    :cond_16
    const-string v12, "att_wan_detection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->setWanDetectionEnabled(Landroid/net/wifi/WifiManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v2

    :cond_1
    const-string v3, "notify_available_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_secure_networks_available_notification_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateUi()V

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method
