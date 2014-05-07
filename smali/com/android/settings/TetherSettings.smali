.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$1;,
        Lcom/android/settings/TetherSettings$UsbTetherReceiver;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING_CATEGORY:Ljava/lang/String; = "bt_tethering_catrogry_title"

.field private static final CONFIG_SUBTEXT:I = 0x7f0c0dc4

.field private static final DIALOG_AP_SETTINGS:I = 0x2

.field private static final DIALOG_TETHER_HELP:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_HSM:Ljava/lang/String; = "enable_hsm_settings"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final KEY_TOGGLE_CHARGE_ONLY:Ljava/lang/String; = "toggle_charge_only"

.field private static final KEY_TOGGLE_MODEMLINK:Ljava/lang/String; = "toggle_modemlink"

.field private static final KEY_TOGGLE_MODEMLINK_TYPE:Ljava/lang/String; = "toggle_modemlink_type"

.field private static final KEY_TOGGLE_NETSHARING:Ljava/lang/String; = "toggle_netsharing"

.field private static final KEY_TOGGLE_NETSHARING_TYPE:Ljava/lang/String; = "toggle_netsharing_type"

.field private static final KEY_TOGGLE_SMART_USB:Ljava/lang/String; = "toggle_smart_usb"

.field private static final MHS_REQUEST:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final TETHER_CATEGORY:Ljava/lang/String; = "tethering_category_title"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_CATEGORY:Ljava/lang/String; = "hotspot_category_title"

.field private static final WIFI_AP_SETTINGS:Ljava/lang/String; = "hotspot_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"

.field protected static customizedIPT:Ljava/lang/Boolean;

.field protected static customizedML:Ljava/lang/Boolean;

.field protected static customizedNS:Ljava/lang/Boolean;

.field protected static customizedSPCSC:Ljava/lang/Boolean;

.field protected static customizedSingleUSB:Ljava/lang/Boolean;


# instance fields
.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

.field private mChargeOnlyEnabler:Lcom/android/settings/ChargeOnlyEnabler;

.field private mCreateNetwork:Lcom/htc/preference/HtcPreference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mIsBtDisable:Z

.field private mIsTetherDisable:Z

.field private mMassStorageActive:Z

.field private mRestoreToDisableBt:Z

.field private mSecurityType:[Ljava/lang/String;

.field private mSmartNSEnabler:Lcom/android/settings/SmartNSEnabler;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    .line 109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    .line 110
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    .line 112
    const-string v0, "TetherSettings"

    sput-object v0, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsBtDisable:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsTetherDisable:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 164
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mRestoreToDisableBt:Z

    .line 566
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1031
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1032
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1033
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1035
    const/4 v0, 0x0

    .line 1037
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1036
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 940
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 941
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 942
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 947
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 941
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 947
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 424
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 431
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    .line 433
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 434
    const v1, 0x1040438

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 444
    :cond_0
    return-void

    .line 427
    :cond_1
    sget-object v1, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v2, "mWifiManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 976
    const/4 v1, 0x0

    .line 978
    .local v1, uri:Landroid/net/Uri;
    const-string v6, "TetherSettings"

    .line 980
    .local v6, TAG:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-object v2

    .line 983
    :cond_1
    if-eqz p1, :cond_0

    .line 986
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 988
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 990
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 991
    const-string v0, "Failed to get cursor"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 996
    const-string v0, "cursor size is 0"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1001
    :cond_3
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1002
    .local v11, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v11, :cond_4

    .line 1003
    const-string v0, "no customized data support"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1007
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1009
    const/4 v9, 0x0

    .line 1010
    .local v9, data:[B
    const/4 v7, 0x0

    .line 1013
    .local v7, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1014
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1019
    if-eqz v8, :cond_5

    .line 1020
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1021
    :goto_1
    const/4 v8, 0x0

    :cond_5
    move-object v2, v7

    .line 1025
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v10

    .line 1016
    .local v10, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load customize URI failed, get exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    const/4 v7, 0x0

    .line 1019
    if-eqz v8, :cond_5

    .line 1020
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1019
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1020
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1021
    const/4 v8, 0x0

    .line 1019
    :cond_6
    throw v0
.end method

.method protected static readCustomizationData(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1042
    const-string v0, "TetherSettings"

    .line 1043
    .local v0, TAG:Ljava/lang/String;
    const-string v4, "WirelessSettings"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1046
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "isCustomized"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v7, :cond_7

    .line 1049
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->supportSingleUsb()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    .line 1051
    const-string v4, "content://customization_settings/SettingTable/system_Settings"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/settings/TetherSettings;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1053
    .local v1, bdl:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1055
    const-string v4, "customized_value"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1057
    .local v2, bdlsettings:Landroid/os/Bundle;
    if-eqz v2, :cond_6

    .line 1059
    const-string v4, "has_netsharing"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1060
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 1064
    :goto_0
    const-string v4, "has_modemlink"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1065
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 1069
    :goto_1
    const-string v4, "has_spcsc"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1070
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    .line 1074
    :goto_2
    const-string v4, "has_ipt"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1075
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    .line 1079
    :goto_3
    const-string v4, "single_usb_tethering"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1080
    const-string v4, "single_usb_tethering"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    .line 1083
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIE NS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SIE ML"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SIE SPCSC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SIE IPT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SIE Single USB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v2           #bdlsettings:Landroid/os/Bundle;
    :cond_1
    :goto_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "isCustomized"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1095
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedNS"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1096
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedML"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1097
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "has_spcsc"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1098
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedIPT"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1099
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedSingleUSB"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1111
    .end local v1           #bdl:Landroid/os/Bundle;
    :goto_5
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedNS"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1112
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedML"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1113
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "has_spcsc"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1114
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedIPT"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1115
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "customizedSingleUSB"

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomizedNS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CustomizedML:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CustomizedSPCSC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CustomizedIPT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CustomizedSingleUSB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Internet_Sharing>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Modem_Link>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : spcsc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : IPT>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Singel_USB>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 1062
    .restart local v1       #bdl:Landroid/os/Bundle;
    .restart local v2       #bdlsettings:Landroid/os/Bundle;
    :cond_2
    const-string v4, "has_netsharing"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1067
    :cond_3
    const-string v4, "has_modemlink"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1072
    :cond_4
    const-string v4, "has_spcsc"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 1077
    :cond_5
    const-string v4, "has_ipt"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 1087
    :cond_6
    const-string v4, "no SIE value"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 1090
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 1091
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 1102
    .end local v1           #bdl:Landroid/os/Bundle;
    .end local v2           #bdlsettings:Landroid/os/Bundle;
    :cond_7
    const-string v4, "customizedNS"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 1103
    const-string v4, "customizedML"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 1104
    const-string v4, "has_spcsc"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    .line 1105
    const-string v4, "customizedIPT"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    .line 1106
    const-string v4, "customizedSingleUSB"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    goto/16 :goto_5
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 658
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 661
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 671
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 676
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 678
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 679
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 680
    .local v10, usbError:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 681
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 682
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 683
    if-nez v10, :cond_0

    .line 684
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 681
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 678
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 680
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 689
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 690
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 691
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 692
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 691
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 690
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 695
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 696
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 697
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 698
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 697
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 696
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 703
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 1133
    const v0, 0x7f0c0c31

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 768
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 769
    if-nez p1, :cond_0

    .line 770
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->onActivityResult(IILandroid/content/Intent;)V

    .line 776
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 951
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 953
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 960
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 961
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 173
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v13, 0x7f06004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 180
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "WirelessSettings"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    .line 181
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 184
    sget-object v13, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    if-eqz v13, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->addCallback(Ljava/lang/Object;)V

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 201
    .local v8, parent:Lcom/htc/preference/HtcPreferenceGroup;
    sget-object v13, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    if-eqz v13, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->addCallback(Ljava/lang/Object;)V

    .line 206
    :cond_1
    const-string v13, "tethering_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    .line 207
    const-string v13, "enable_hsm_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 208
    const-string v13, "usb_tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 214
    const-string v13, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 217
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 218
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 219
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_f

    const/4 v11, 0x1

    .line 222
    .local v11, usbAvailable:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_10

    const/4 v12, 0x1

    .line 223
    .local v12, wifiAvailable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_11

    const/4 v3, 0x1

    .line 226
    .local v3, bluetoothAvailable:Z
    :goto_2
    const-string v13, "hotspot_category_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    .line 228
    .local v6, hotspotCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v12, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v13

    if-nez v13, :cond_14

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 230
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 232
    :cond_2
    const v13, 0x7f0c0711

    invoke-virtual {v6, v13}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 245
    :cond_3
    :goto_3
    const/4 v1, 0x1

    .line 246
    .local v1, BluetoothAdapterAvailable:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 247
    .local v7, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v7, :cond_4

    .line 248
    const/4 v1, 0x0

    .line 250
    :cond_4
    if-eqz v3, :cond_5

    if-nez v1, :cond_7

    .line 251
    :cond_5
    const-string v13, "bt_tethering_catrogry_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 252
    .local v4, bluetoothTetherCategory:Lcom/htc/preference/HtcPreference;
    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    .line 253
    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 261
    :cond_6
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    if-eqz v13, :cond_7

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 282
    .end local v4           #bluetoothTetherCategory:Lcom/htc/preference/HtcPreference;
    :cond_7
    new-instance v13, Lcom/android/settings/SmartNSEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "toggle_smart_usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/android/settings/SmartNSEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mSmartNSEnabler:Lcom/android/settings/SmartNSEnabler;

    .line 283
    new-instance v14, Lcom/android/settings/ChargeOnlyEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v13, "toggle_charge_only"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    check-cast v13, Lcom/htc/preference/HtcSwitchPreference;

    invoke-direct {v14, v15, v13}, Lcom/android/settings/ChargeOnlyEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcSwitchPreference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/TetherSettings;->mChargeOnlyEnabler:Lcom/android/settings/ChargeOnlyEnabler;

    .line 284
    sget-object v13, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "is = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ml = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pcsc = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/TetherSettings;->customizedSPCSC:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ipt ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " single usb="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v13, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_16

    .line 290
    const-string v13, "usb_tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 291
    .local v9, target:Lcom/htc/preference/HtcPreference;
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    .line 292
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 294
    :cond_8
    sget-object v13, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lcom/android/settings/TetherSettings;->customizedIPT:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_b

    .line 296
    const-string v13, "toggle_smart_usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 297
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    .line 298
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 301
    :cond_9
    const-string v13, "tethering_category_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceCategory;

    .line 302
    .local v10, tetherCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v8, :cond_b

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4014

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 303
    :cond_a
    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 334
    .end local v10           #tetherCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_b
    :goto_4
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4014

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_c

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 335
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 340
    :cond_d
    sget-boolean v13, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ChargeOnly:Z

    if-nez v13, :cond_e

    .line 341
    const-string v13, "toggle_charge_only"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 342
    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    .line 343
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 349
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->requestHandlers()V

    .line 350
    return-void

    .line 221
    .end local v1           #BluetoothAdapterAvailable:Z
    .end local v3           #bluetoothAvailable:Z
    .end local v6           #hotspotCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v7           #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v9           #target:Lcom/htc/preference/HtcPreference;
    .end local v11           #usbAvailable:Z
    .end local v12           #wifiAvailable:Z
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 222
    .restart local v11       #usbAvailable:Z
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 223
    .restart local v12       #wifiAvailable:Z
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 233
    .restart local v3       #bluetoothAvailable:Z
    .restart local v6       #hotspotCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_12
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 234
    const v13, 0x7f0c0712

    invoke-virtual {v6, v13}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 235
    :cond_13
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 236
    const v13, 0x7f0c0714

    invoke-virtual {v6, v13}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 239
    :cond_14
    if-eqz v8, :cond_3

    .line 240
    if-eqz v6, :cond_15

    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 241
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiApPreference:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    .line 309
    .restart local v1       #BluetoothAdapterAvailable:Z
    .restart local v7       #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_16
    const-string v13, "toggle_smart_usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 310
    .restart local v9       #target:Lcom/htc/preference/HtcPreference;
    if-eqz v8, :cond_17

    if-eqz v9, :cond_17

    .line 311
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 313
    :cond_17
    sget-object v13, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_b

    .line 315
    const-string v13, "usb_tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 316
    if-eqz v8, :cond_18

    if-eqz v9, :cond_18

    .line 317
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 320
    :cond_18
    const-string v13, "tethering_category_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceCategory;

    .line 321
    .restart local v10       #tetherCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v8, :cond_b

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4014

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_19

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 322
    :cond_19
    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 508
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 510
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 511
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 514
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 416
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTetherPreference:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->onDestroy()V

    .line 419
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mSmartNSEnabler:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->pause()V

    .line 396
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mChargeOnlyEnabler:Lcom/android/settings/ChargeOnlyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ChargeOnlyEnabler;->pause()V

    .line 398
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 11
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 780
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 834
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v7, :cond_0

    .line 835
    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 895
    :goto_0
    return v5

    .line 837
    :cond_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p2, v7, :cond_2

    .line 838
    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 895
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v5

    goto :goto_0

    .line 839
    :cond_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v7, :cond_6

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 841
    .local v1, adbEnabled:Z
    :goto_2
    sget-object v7, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adb enabled:+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v1, :cond_4

    move v7, v5

    :goto_3
    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 843
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    .line 844
    .local v2, checked:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v1           #adbEnabled:Z
    .end local v2           #checked:I
    :cond_3
    move v1, v6

    .line 840
    goto :goto_2

    .restart local v1       #adbEnabled:Z
    :cond_4
    move v7, v6

    .line 842
    goto :goto_3

    :cond_5
    move v2, v6

    .line 843
    goto :goto_4

    .line 845
    .end local v1           #adbEnabled:Z
    :cond_6
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v7, :cond_1

    .line 847
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    .line 848
    .local v2, checked:Z
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v0

    .line 850
    .local v0, USBConnected:Z
    sget-object v7, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "usb checked:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    if-eqz v2, :cond_7

    .line 853
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "sns_type"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 857
    :goto_5
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 859
    if-eqz v0, :cond_1

    .line 861
    if-eqz v2, :cond_9

    .line 864
    sget-object v7, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v8, "enable Tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 867
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 868
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v7, 0x7f0c054b

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 855
    :cond_7
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "sns_type"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 873
    :cond_8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/settings/ISActivity;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 874
    .local v4, mintent:Landroid/content/Intent;
    const-string v6, "is_dialog_code"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 882
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_9
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "hasTethered"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "isNSOpening"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 884
    :cond_a
    sget-object v7, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v8, "diable Tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 886
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f0c0513

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 887
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "isNSClosing"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 354
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 357
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mSmartNSEnabler:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v7}, Lcom/android/settings/SmartNSEnabler;->resume()V

    .line 358
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mChargeOnlyEnabler:Lcom/android/settings/ChargeOnlyEnabler;

    invoke-virtual {v7}, Lcom/android/settings/ChargeOnlyEnabler;->resume()V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    .line 360
    .local v0, adbEnabled:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableHSM:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 362
    sget-object v7, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "isNSOpening"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 365
    .local v2, isNSOpening:Z
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "isNSClosing"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 366
    .local v1, isNSClosing:Z
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "requestMHS"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 367
    .local v3, requestMHS:Z
    sget-object v7, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opening:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requestMHS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    .line 370
    :cond_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f0c054b

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 383
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->sp:Landroid/content/SharedPreferences;

    const-string v8, "sns_type"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 384
    .local v4, type:I
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    :goto_2
    invoke-virtual {v7, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 387
    .end local v1           #isNSClosing:Z
    .end local v2           #isNSOpening:Z
    .end local v3           #requestMHS:Z
    .end local v4           #type:I
    :cond_1
    return-void

    .end local v0           #adbEnabled:Z
    :cond_2
    move v0, v6

    .line 359
    goto :goto_0

    .line 373
    .restart local v0       #adbEnabled:Z
    .restart local v1       #isNSClosing:Z
    .restart local v2       #isNSOpening:Z
    .restart local v3       #requestMHS:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 375
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 376
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f0c0513

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 380
    :cond_4
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 381
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v8, 0x7f0c0511

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .restart local v4       #type:I
    :cond_5
    move v5, v6

    .line 384
    goto :goto_2
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 593
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 597
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 598
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 599
    new-instance v3, Lcom/android/settings/TetherSettings$UsbTetherReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/TetherSettings$UsbTetherReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 601
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 604
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 605
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 625
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.android.enableIS.UI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v3, "com.htc.android.openingIS.UI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    sget-object v3, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 631
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 643
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    sget-object v0, Lcom/android/settings/TetherSettings;->customizedSingleUSB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 655
    :cond_0
    return-void
.end method
