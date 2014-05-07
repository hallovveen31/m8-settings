.class public Lcom/android/settings/wifi/CustomUtil;
.super Ljava/lang/Object;
.source "CustomUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CHECK_EAP_IF_APPROPRIATE:Z = false

.field public static final CHT_SSID:Ljava/lang/String; = "CHT Wi-Fi Auto"

#the value of this static final field might be set in the static constructor
.field public static final DISCONNECT_NETWORK:Z = false

.field public static final ENABLE_ACCESS_CONDITION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_ATT_WAN_DETECTION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_ATT_WLAN_CONNECTION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_CCX_UI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_CHT_SIM_TOAST:Z = false

.field public static ENABLE_CUSOM_VZW_WISPR:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_C_PLUS_W:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_FIRST_PRIORITY:Z = false

.field public static ENABLE_HTC_OFFLOAD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_WAPI_FEATURE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_WLAN_CONNECTION:Z = false

.field public static final EXTRA_WAPI_AS_CERTIFICATES_DATA:Ljava/lang/String; = "wapi_ca_certificates_data"

.field public static final EXTRA_WAPI_AS_CERTIFICATES_NAME:Ljava/lang/String; = "wapi_ca_certificates_name"

.field public static final EXTRA_WAPI_USER_CERTIFICATES_DATA:Ljava/lang/String; = "wapi_user_certificate_data"

.field public static final EXTRA_WAPI_USER_CERTIFICATES_NAME:Ljava/lang/String; = "wapi_user_certificate_name"

.field public static final FRISBEE_SSID:Ljava/lang/String; = "HTC transfer tool"

.field public static final INDOSAT_SSID:Ljava/lang/String; = "INDOSAT"

.field public static final KEY_EAP_TYPE_SUPPORT_LIST:Ljava/lang/String; = "wifi_eap_type_support_list"

.field public static final KEY_NOT_SUPPORT_WISPR_PREFERENCE:Ljava/lang/String; = "settings_wifi_not_support_wispr_preference"

.field public static final KEY_SUPPORT_AUTO_JOIN_SSID:Ljava/lang/String; = "wifi_auto_join_ssid_list"

.field public static final KEY_SUPPORT_CCX_CONFIG:Ljava/lang/String; = "settings_wifi_support_ccx_config"

.field public static final KEY_SUPPORT_DISCONNECT_NETWORK:Ljava/lang/String; = "settings_wifi_support_disconnect_network"

.field public static final KEY_SUPPORT_FIRST_PRIORITY:Ljava/lang/String; = "settings_wifi_support_first_priority"

.field public static final KEY_SUPPORT_MOCANA_VPN:Ljava/lang/String; = "mocana_vpn_support"

.field public static final KEY_SUPPORT_READ_ONLY_SSID:Ljava/lang/String; = "wifi_read_only_ssid_list"

.field public static final KEY_SUPPORT_SPECIFIC_AKA_SSID_LIST:Ljava/lang/String; = "settings_wifi_support_specific_aka_ssid_list"

.field public static final KEY_SUPPORT_SPECIFIC_SIM_SSID:Ljava/lang/String; = "settings_wifi_support_specific_sim_ssid"

.field public static final KEY_SUPPORT_SPECIFIC_SIM_SSID_LIST:Ljava/lang/String; = "settings_wifi_support_specific_sim_ssid_list"

.field public static final KEY_SUPPORT_TOAST_EAP_SIM_AUTO_LOGON:Ljava/lang/String; = "settings_wifi_support_toast_eap_sim_auto_logon"

#the value of this static final field might be set in the static constructor
.field public static final SET_DEFAULT_SECURITY_AS_WPA:Z = false

.field public static SUPPORT_BT_WIFI_HINT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_EAP_METHOD_WITH_AKA_SIM:Z = false

.field public static final SUPPORT_EAP_METHOD_WITH_SIM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_EASY_SETTINGS:Z = false

.field public static final SUPPORT_KT_EAP_ERROR_MESSAGE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_MHS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_MOCANA_VPN:Z = false

.field public static final TAG:Ljava/lang/String; = "CustomUtil"

.field public static final TMO_DE_SSID:Ljava/lang/String; = "T-MobileZone"

.field public static final WAPI_AS_CERTIFICATE:Ljava/lang/String; = "WAPIAS_"

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSR_"

.field public static final WIFI_HOTSPOT_INTERACTIVE_NOTIFICATION:Z

.field private static akaInitialized:Z

.field static autoJoinSsidInit:Z

.field static initialized:Z

.field private static mAka_ssid_list:[Ljava/lang/String;

.field private static mAutoJoinSsid:[Ljava/lang/String;

.field static mEapSupportList:[Ljava/lang/String;

.field private static mReadOnlySsid:[Ljava/lang/String;

.field private static mSim_ssid_list:[Ljava/lang/String;

.field private static mVodafoneSimSSID:[Ljava/lang/String;

.field private static simInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 15
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    .line 16
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mVodafoneSimSSID:[Ljava/lang/String;

    .line 17
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    .line 18
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mAka_ssid_list:[Ljava/lang/String;

    .line 19
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    .line 55
    const-string v0, "settings_wifi_support_toast_eap_sim_auto_logon"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CHT_SIM_TOAST:Z

    .line 59
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WAPI_FEATURE:Z

    .line 62
    const-string v0, "settings_wifi_support_first_priority"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_FIRST_PRIORITY:Z

    .line 72
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->removeCPlusW()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    .line 78
    const-string v0, "settings_wifi_support_ccx_config"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    .line 85
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SET_DEFAULT_SECURITY_AS_WPA:Z

    .line 88
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->CHECK_EAP_IF_APPROPRIATE:Z

    .line 91
    const-string v0, "settings_wifi_support_disconnect_network"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    .line 95
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WLAN_CONNECTION:Z

    .line 98
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WLAN_CONNECTION:Z

    .line 100
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ATT_WAN_DETECTION:Z

    .line 102
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->WIFI_HOTSPOT_INTERACTIVE_NOTIFICATION:Z

    .line 110
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4016

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EAP_METHOD_WITH_AKA_SIM:Z

    .line 127
    sput-object v7, Lcom/android/settings/wifi/CustomUtil;->mEapSupportList:[Ljava/lang/String;

    .line 148
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->initialized:Z

    .line 189
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->simInitialized:Z

    .line 211
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->akaInitialized:Z

    .line 233
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->autoJoinSsidInit:Z

    .line 312
    const-string v0, "persist.wifi.offload"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    .line 314
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v3, 0x40b0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    .line 326
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ro.st.agg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    sput-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CUSOM_VZW_WISPR:Z

    .line 386
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EASY_SETTINGS:Z

    .line 411
    const-string v0, "mocana_vpn_support"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MOCANA_VPN:Z

    .line 421
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isMhsSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MHS:Z

    return-void

    :cond_1
    move v0, v2

    .line 72
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 110
    goto :goto_1

    :cond_3
    move v0, v2

    .line 314
    goto :goto_2

    :cond_4
    move v1, v2

    .line 326
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SUPPORT_AUTO_JOIN(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    if-nez p0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mVodafoneSimSSID:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 394
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVodafoneUKSku()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Free_Swisscom_Auto_Login"

    aput-object v4, v3, v1

    const-string v4, "Swisscom_Auto_Login"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "VodafoneWiFi"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "SFR WiFi Mobile"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "SFR wifi public"

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mVodafoneSimSSID:[Ljava/lang/String;

    .line 401
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mVodafoneSimSSID:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 402
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mVodafoneSimSSID:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 403
    goto :goto_0

    .line 401
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static SUPPORT_HOTSPOT_RESTRICTED()Z
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static autoJoinSsid(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    if-nez p0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->autoJoinSsidInit:Z

    if-nez v3, :cond_2

    .line 241
    const-string v3, "wifi_auto_join_ssid_list"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    .line 242
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->autoJoinSsidInit:Z

    .line 245
    :cond_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 247
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAutoJoinSsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 248
    goto :goto_0

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static blockBt()Z
    .locals 2

    .prologue
    .line 346
    const-string v0, "ro.st.blockb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blockWifi()Z
    .locals 2

    .prologue
    .line 342
    const-string v0, "ro.st.blockw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enable3LMSupported()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v0

    return v0
.end method

.method public static enableBlockOpenNetworkNotify()Z
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableNetworkDetection()Z
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDefaultEapTypeSupportList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 142
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PEAP"

    aput-object v1, v0, v2

    const-string v1, "TLS"

    aput-object v1, v0, v3

    const-string v1, "TTLS"

    aput-object v1, v0, v4

    const-string v1, "PWD"

    aput-object v1, v0, v5

    const-string v1, "SIM"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "AKA"

    aput-object v2, v0, v1

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PEAP"

    aput-object v1, v0, v2

    const-string v1, "TLS"

    aput-object v1, v0, v3

    const-string v1, "TTLS"

    aput-object v1, v0, v4

    const-string v1, "PWD"

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static getEapTypeSupportList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/android/settings/wifi/CustomUtil;->mEapSupportList:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "wifi_eap_type_support_list"

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->getDefaultEapTypeSupportList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/CustomUtil;->mEapSupportList:[Ljava/lang/String;

    .line 136
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/CustomUtil;->mEapSupportList:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getSimSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    const-string v0, "settings_wifi_support_specific_sim_ssid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ignorePortalDetection(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    const/4 v0, 0x0

    .line 351
    if-nez p0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "attwifi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAkaSsid(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    if-nez p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAka_ssid_list:[Ljava/lang/String;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->akaInitialized:Z

    if-nez v3, :cond_2

    .line 219
    const-string v3, "settings_wifi_support_specific_aka_ssid_list"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mAka_ssid_list:[Ljava/lang/String;

    .line 220
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->akaInitialized:Z

    .line 223
    :cond_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAka_ssid_list:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 225
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mAka_ssid_list:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 226
    goto :goto_0

    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isCTSsid(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const-string v1, "ChinaNet_HomeCW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ChinaNet_CW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ChinaNet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimSsid(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    if-nez p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->simInitialized:Z

    if-nez v3, :cond_2

    .line 197
    const-string v3, "settings_wifi_support_specific_sim_ssid_list"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    .line 198
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->simInitialized:Z

    .line 201
    :cond_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 203
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mSim_ssid_list:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 204
    goto :goto_0

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static readOnlySSID(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    if-nez p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->initialized:Z

    if-nez v3, :cond_2

    .line 157
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->removeCPlusW()Z

    move-result v3

    if-nez v3, :cond_3

    .line 158
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ChinaNet"

    aput-object v4, v3, v1

    const-string v4, "ChinaNet_CW"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "ChinaNet_HomeCW"

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    .line 173
    :goto_1
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->initialized:Z

    .line 176
    :cond_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 178
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 179
    goto :goto_0

    .line 160
    .end local v0           #i:I
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_4

    .line 162
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "attwifi"

    aput-object v4, v3, v1

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_4
    const-string v3, "wifi_read_only_ssid_list"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 177
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static removeCPlusW()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public static removeWISPRFeature()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "settings_wifi_not_support_wispr_preference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final support_cne()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 376
    const-string v2, "persist.cne.feature"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, value:I
    const-string v2, "CustomUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CnE value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 379
    :cond_0
    const/4 v1, 0x1

    .line 381
    :cond_1
    return v1
.end method
