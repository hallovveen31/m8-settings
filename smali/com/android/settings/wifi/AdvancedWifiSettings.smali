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

    .prologue
    .line 104
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    .line 774
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private getWISPrManager()Lcom/android/settings/wifi/WISPrManager;
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WISPrManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v0

    return-object v0
.end method

.method private initAutoDisConnect()V
    .locals 2

    .prologue
    .line 437
    const-string v1, "auto_disconnect"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 438
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 448
    .local v0, parent:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 20

    .prologue
    .line 288
    const-string v17, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 290
    .local v9, poorNetworkDetection:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v9, :cond_0

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 299
    :cond_0
    const-string v17, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    .line 300
    .local v11, sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    if-eqz v11, :cond_2

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 302
    const v17, 0x7f08001b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 304
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_sleep_policy"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 308
    .local v13, value:I
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 309
    .local v12, stringValue:Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V

    .line 314
    .end local v12           #stringValue:Ljava/lang/String;
    .end local v13           #value:I
    :cond_2
    const-string v17, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 316
    .local v7, notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v17, "notify_available_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 318
    .local v6, notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v17, "notify_me"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 319
    const-string v17, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceScreen;

    .line 320
    .local v8, parent:Lcom/htc/preference/HtcPreferenceScreen;
    sget-boolean v17, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v17, :cond_10

    .line 321
    if-eqz v8, :cond_3

    .line 322
    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 325
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 333
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 340
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 341
    if-eqz v6, :cond_6

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 352
    :cond_6
    :goto_4
    const-string v17, "key_wifi_wispr_auto_login"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 358
    :cond_7
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->removeWISPRFeature()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 359
    const-string v17, "wifi_wispr_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v15

    check-cast v15, Lcom/htc/preference/HtcPreferenceCategory;

    .line 360
    .local v15, wisprCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v17, "key_wifi_wispr_auto_login"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 361
    .local v3, checkbox:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v17, "key_wifi_wispr_account_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    .line 363
    .local v16, wisprPref:Lcom/htc/preference/HtcPreference;
    if-eqz v15, :cond_8

    .line 364
    if-eqz v8, :cond_8

    .line 365
    invoke-virtual {v8, v15}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 368
    :cond_8
    if-eqz v3, :cond_9

    .line 369
    if-eqz v8, :cond_9

    .line 370
    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 373
    :cond_9
    if-eqz v16, :cond_a

    .line 374
    if-eqz v8, :cond_a

    .line 375
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 382
    .end local v3           #checkbox:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v15           #wisprCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v16           #wisprPref:Lcom/htc/preference/HtcPreference;
    :cond_a
    const-string v17, "cmcc_wlan_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    .line 383
    .local v10, pref:Lcom/htc/preference/HtcListPreference;
    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WLAN_CONNECTION:Z

    if-nez v17, :cond_14

    .line 384
    if-eqz v8, :cond_b

    if-eqz v10, :cond_b

    .line 385
    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 398
    :cond_b
    :goto_5
    const-string v17, "att_wlan_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 399
    .local v4, checkpref:Lcom/htc/preference/HtcCheckBoxPreference;
    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WLAN_CONNECTION:Z

    if-nez v17, :cond_16

    .line 400
    if-eqz v8, :cond_c

    if-eqz v4, :cond_c

    .line 401
    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 413
    :cond_c
    :goto_6
    const-string v17, "att_wan_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 414
    .local v14, wancheckpref:Lcom/htc/preference/HtcCheckBoxPreference;
    sget-boolean v17, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WAN_DETECTION:Z

    if-nez v17, :cond_19

    .line 415
    if-eqz v8, :cond_d

    if-eqz v14, :cond_d

    .line 416
    invoke-virtual {v8, v14}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 427
    :cond_d
    :goto_7
    const-string v17, "open_networks_block_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 429
    .local v2, blockAp:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v17

    if-nez v17, :cond_e

    .line 430
    if-eqz v8, :cond_e

    if-eqz v2, :cond_e

    .line 431
    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 434
    :cond_e
    return-void

    .line 291
    .end local v2           #blockAp:Lcom/htc/preference/HtcPreference;
    .end local v4           #checkpref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v6           #notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v7           #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v8           #parent:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v10           #pref:Lcom/htc/preference/HtcListPreference;
    .end local v11           #sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    .end local v14           #wancheckpref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 328
    .restart local v6       #notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v7       #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v8       #parent:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v11       #sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    :cond_10
    if-eqz v8, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 334
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 342
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 347
    :cond_13
    if-eqz v8, :cond_6

    .line 348
    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    .line 388
    .restart local v10       #pref:Lcom/htc/preference/HtcListPreference;
    :cond_14
    if-eqz v10, :cond_b

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssociationManual(Landroid/net/wifi/WifiManager;)I

    move-result v13

    .line 392
    .restart local v13       #value:I
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

    .line 393
    :cond_15
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 404
    .end local v13           #value:I
    .restart local v4       #checkpref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_16
    if-eqz v4, :cond_c

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getATTAssociationManual()I

    move-result v17

    if-nez v17, :cond_18

    const/4 v13, 0x1

    .line 408
    .local v13, value:Z
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

    .line 409
    :cond_17
    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 407
    .end local v13           #value:Z
    :cond_18
    const/4 v13, 0x0

    goto :goto_8

    .line 419
    .restart local v14       #wancheckpref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_19
    if-eqz v14, :cond_d

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->getWanDetectionEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    .line 422
    .local v5, enabled:Z
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

    .line 423
    :cond_1a
    invoke-virtual {v14, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method private refreshWifiInfo()V
    .locals 10

    .prologue
    const v8, 0x7f0c0e63

    const/4 v6, 0x0

    .line 733
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 735
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v7, "mac_address"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 736
    .local v5, wifiMacAddressPref:Lcom/htc/preference/HtcPreference;
    if-nez v3, :cond_4

    const/4 v1, 0x0

    .line 737
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    const-string v7, "current_ip_address"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 741
    .local v4, wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, ipAddress:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #ipAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    iget-boolean v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v7, :cond_2

    .line 746
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_2

    .line 747
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_ip_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 752
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 753
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v6, :cond_3

    .line 754
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v2

    .line 755
    .local v2, value:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    .line 756
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 762
    .end local v2           #value:I
    :cond_3
    :goto_2
    return-void

    .line 736
    .end local v4           #wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    :cond_4
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 737
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 758
    .end local v1           #macAddress:Ljava/lang/String;
    .restart local v2       #value:I
    .restart local v4       #wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    :cond_6
    const-string v6, "AdvancedWifiSettings"

    const-string v7, "Failed to fetch frequency band"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V
    .locals 3
    .parameter "frequencyBandPref"
    .parameter "index"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, summaries:[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method

.method private updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 456
    if-eqz p2, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f08001b

    .line 460
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 462
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 464
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 458
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f08001a

    goto :goto_0

    .line 461
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
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

    .prologue
    const/4 v13, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-boolean v9, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v9, :cond_0

    .line 669
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiOffloadEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 672
    :cond_0
    sget-boolean v9, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v9, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->isNeverAutoTurnOn()Z

    move-result v2

    .line 674
    .local v2, neverAutoTurnOn:Z
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v2, :cond_8

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 677
    .end local v2           #neverAutoTurnOn:Z
    :cond_1
    sget-boolean v9, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v9, :cond_2

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->isNotifyOn()Z

    move-result v3

    .line 679
    .local v3, notify:Z
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_2

    .line 680
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 684
    .end local v3           #notify:Z
    :cond_2
    const-string v9, "wifi_scan_always_available"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 686
    .local v7, scanAlwaysAvailable:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_scan_always_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_9

    move v9, v10

    :goto_1
    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 689
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "com.android.certinstaller"

    const-string v12, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v9, "install_as_uid"

    const/16 v12, 0x3f2

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string v9, "install_credentials"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 694
    .local v6, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 696
    const-string v9, "notify_open_networks"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 698
    .local v5, notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v5, :cond_3

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_a

    move v9, v10

    :goto_2
    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 701
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 704
    :cond_3
    const-string v9, "notify_available_networks"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 706
    .local v4, notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v4, :cond_4

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_secure_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    move v9, v10

    :goto_3
    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 709
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 712
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_5

    .line 713
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWisprAutoLoginCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getWISPrManager()Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WISPrManager;->isAutoLoginOn()Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 716
    :cond_5
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_7

    .line 717
    const-string v9, "cw_ppp_notify"

    invoke-static {v0, v9, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 718
    .local v3, notify:I
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq v3, v13, :cond_c

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 719
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCWNetworkNotifyCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq v3, v10, :cond_6

    if-ne v3, v13, :cond_d

    :cond_6
    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 722
    .end local v3           #notify:I
    :cond_7
    const-string v9, "suspend_optimizations"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 724
    .local v8, suspendOptimizations:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_suspend_optimizations_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_e

    :goto_6
    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 726
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v5           #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v6           #pref:Lcom/htc/preference/HtcPreference;
    .end local v7           #scanAlwaysAvailable:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v8           #suspendOptimizations:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v2       #neverAutoTurnOn:Z
    :cond_8
    move v9, v11

    .line 674
    goto/16 :goto_0

    .end local v2           #neverAutoTurnOn:Z
    .restart local v7       #scanAlwaysAvailable:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_9
    move v9, v11

    .line 686
    goto/16 :goto_1

    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v5       #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v6       #pref:Lcom/htc/preference/HtcPreference;
    :cond_a
    move v9, v11

    .line 699
    goto :goto_2

    .restart local v4       #notifyAvailableNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_b
    move v9, v11

    .line 707
    goto :goto_3

    .restart local v3       #notify:I
    :cond_c
    move v9, v11

    .line 718
    goto :goto_4

    :cond_d
    move v9, v11

    .line 719
    goto :goto_5

    .end local v3           #notify:I
    .restart local v8       #suspendOptimizations:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_e
    move v10, v11

    .line 724
    goto :goto_6
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 771
    const v0, 0x7f0c0d2b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 126
    .local v2, parent:Lcom/htc/preference/HtcPreferenceScreen;
    sget-boolean v7, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-nez v7, :cond_a

    .line 127
    if-eqz v2, :cond_1

    .line 128
    const-string v7, "cw_account_info"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 129
    .local v5, target:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 130
    :cond_0
    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 131
    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 147
    .end local v5           #target:Lcom/htc/preference/HtcPreference;
    :cond_1
    :goto_0
    const-string v7, "never_auto_turn_on_wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 151
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    .line 152
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    :cond_2
    const-string v7, "wifi_connectivity_engine"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 161
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->support_cne()Z

    move-result v7

    if-nez v7, :cond_b

    .line 162
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 163
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 184
    :cond_3
    :goto_1
    const-string v7, "wifi_pwr_active_mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 195
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 197
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 202
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initAutoDisConnect()V

    .line 204
    sget-boolean v7, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    if-nez v7, :cond_5

    .line 206
    const-string v7, "lan_info"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 208
    .restart local v5       #target:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 210
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 214
    .end local v5           #target:Lcom/htc/preference/HtcPreference;
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v7, :cond_c

    .line 216
    const-string v7, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 217
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_6

    .line 219
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 236
    :cond_6
    :goto_2
    const-string v7, "frequency_band"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcListPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    .line 238
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_7

    .line 239
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 240
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v6

    .line 242
    .local v6, value:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    .line 243
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v7, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V

    .line 256
    .end local v6           #value:I
    :cond_7
    :goto_3
    const-string v7, "access_condition"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    .line 258
    .local v3, pref:Lcom/htc/preference/HtcListPreference;
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 259
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 272
    :cond_8
    const-string v7, "wifi_scan_always_available"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 273
    .local v4, scanAlwaysAvailable:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    .line 274
    const v7, 0x7f0c018e

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 276
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 277
    return-void

    .line 136
    .end local v3           #pref:Lcom/htc/preference/HtcListPreference;
    .end local v4           #scanAlwaysAvailable:Lcom/htc/preference/HtcPreference;
    :cond_a
    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 137
    .restart local v5       #target:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_1

    .line 138
    const-string v7, "cw_network_notification"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 139
    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 166
    .end local v5           #target:Lcom/htc/preference/HtcPreference;
    :cond_b
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 169
    invoke-static {}, Lcom/android/settings/wifi/CneManagerWrapper;->getWQEEnabled()Z

    move-result v1

    .line 170
    .local v1, enable:Z
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 222
    .end local v1           #enable:Z
    :cond_c
    const-string v7, "wifi_dlna_setting_titlebar"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    .line 224
    .local v5, target:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    .line 226
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    :cond_d
    const-string v7, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 230
    .local v0, dlnaCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 232
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 246
    .end local v0           #dlnaCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v5           #target:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v6       #value:I
    :cond_e
    const-string v7, "AdvancedWifiSettings"

    const-string v8, "Failed to fetch frequency band"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 249
    .end local v6           #value:I
    :cond_f
    if-eqz v2, :cond_7

    .line 250
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 117
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 15
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, key:Ljava/lang/String;
    const-string v12, "frequency_band"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 517
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 518
    .local v11, value:I
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 519
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Lcom/htc/preference/HtcPreference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v11           #value:I
    :cond_0
    :goto_0
    const/4 v12, 0x1

    :goto_1
    return v12

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0c0d9c

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 523
    const/4 v12, 0x0

    goto :goto_1

    .line 525
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v12, "sleep_policy"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 527
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 528
    .local v10, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_sleep_policy"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 531
    .end local v10           #stringValue:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 532
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0c0d3f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 534
    const/4 v12, 0x0

    goto :goto_1

    .line 540
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v12, :cond_6

    const-string v12, "auto_disconnect"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 541
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 543
    .local v11, value:Z
    if-eqz v11, :cond_5

    .line 544
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v12, :cond_4

    .line 545
    new-instance v12, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

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

    .line 567
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 571
    :cond_3
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 568
    :cond_4
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_3

    .line 569
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_2

    .line 573
    :cond_5
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiOffloadEnabled(Landroid/net/wifi/WifiManager;Z)Z

    goto/16 :goto_0

    .line 576
    .end local v11           #value:Z
    .restart local p2
    :cond_6
    iget-boolean v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v12, :cond_8

    const-string v12, "wifi_dlna_auto_ip"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 577
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 579
    .restart local v11       #value:Z
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

    .line 580
    .end local v11           #value:Z
    .restart local p2
    :cond_8
    const-string v12, "never_auto_turn_on_wifi"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 581
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 582
    .local v7, neverAutoTurnOn:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v13

    if-nez v7, :cond_9

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNeverAutoTurnOn(Z)V

    .line 583
    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v7, :cond_a

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 582
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 583
    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 585
    .end local v7           #neverAutoTurnOn:Z
    .restart local p2
    :cond_b
    const-string v12, "notify_me"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 586
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 587
    .local v8, notify:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNotifyOn(Z)V

    .line 588
    if-eqz v8, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v12

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    .line 591
    .end local v8           #notify:Z
    .restart local p2
    :cond_c
    const-string v12, "access_condition"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v12, p2

    .line 592
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 593
    .restart local v11       #value:Z
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

    .line 595
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v6, p1

    .line 596
    check-cast v6, Lcom/htc/preference/HtcListPreference;

    .line 597
    .local v6, listPref:Lcom/htc/preference/HtcListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 598
    .local v4, index:I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    .line 599
    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 602
    .end local v4           #index:I
    .end local v6           #listPref:Lcom/htc/preference/HtcListPreference;
    .end local v11           #value:Z
    .restart local p2
    :cond_d
    const-string v12, "key_wifi_wispr_auto_login"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 604
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 605
    .local v1, autoLogin:Z
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getWISPrManager()Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/settings/wifi/WISPrManager;->persistWISPrAutoLogin(Z)V

    goto/16 :goto_0

    .line 606
    .end local v1           #autoLogin:Z
    .restart local p2
    :cond_e
    const-string v12, "cw_network_notification"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 608
    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 609
    .restart local v11       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "cw_ppp_notify"

    if-eqz v11, :cond_f

    const/4 v12, 0x1

    :goto_6
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 610
    .end local v11           #value:Z
    :catch_2
    move-exception v2

    .line 611
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v12, "AdvancedWifiSettings"

    const-string v13, "Failed to set cw_network_notification"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 609
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #value:Z
    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    .line 614
    .end local v11           #value:Z
    .restart local p2
    :cond_10
    const-string v12, "cmcc_wlan_connection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v12, p2

    .line 615
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 616
    .local v11, value:I
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

    .line 618
    :cond_11
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v12, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setAssociationManual(Landroid/net/wifi/WifiManager;I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v6, p1

    .line 619
    check-cast v6, Lcom/htc/preference/HtcListPreference;

    .line 620
    .restart local v6       #listPref:Lcom/htc/preference/HtcListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 621
    .restart local v4       #index:I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    .line 622
    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    .end local v4           #index:I
    .end local v6           #listPref:Lcom/htc/preference/HtcListPreference;
    .end local v11           #value:I
    .restart local p2
    :cond_12
    const-string v12, "wifi_connectivity_engine"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 626
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 627
    .local v3, enable:Z
    invoke-static {v3}, Lcom/android/settings/wifi/CneManagerWrapper;->setWQEEnabled(Z)V

    .line 628
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCneCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 630
    .end local v3           #enable:Z
    .restart local p2
    :cond_13
    const-string v12, "att_wlan_connection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 631
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 633
    .restart local v3       #enable:Z
    if-eqz v3, :cond_15

    .line 634
    const/4 v11, 0x0

    .line 638
    .restart local v11       #value:I
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

    .line 639
    :cond_14
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v11}, Landroid/net/wifi/WifiManager;->setATTAssociationManual(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v9, p1

    .line 640
    check-cast v9, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 641
    .local v9, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 636
    .end local v9           #pref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v11           #value:I
    :cond_15
    const/4 v11, 0x1

    .restart local v11       #value:I
    goto :goto_7

    .line 644
    .end local v3           #enable:Z
    .end local v11           #value:I
    .restart local p2
    :cond_16
    const-string v12, "att_wan_detection"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 645
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->setWanDetectionEnabled(Landroid/net/wifi/WifiManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 647
    .restart local p2
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 483
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    :goto_0
    return v2

    .line 489
    .restart local p2
    :cond_1
    const-string v3, "notify_available_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_secure_networks_available_notification_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 493
    .restart local p2
    :cond_3
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 497
    .restart local p2
    :cond_5
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 501
    .restart local p2
    :cond_7
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 506
    .restart local p2
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateUi()V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 284
    return-void
.end method
