.class public Lcom/android/settings/wifi/VoWifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "VoWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/VoWifiSettings$ProportionalOuterFrame;,
        Lcom/android/settings/wifi/VoWifiSettings$CWHandler;,
        Lcom/android/settings/wifi/VoWifiSettings$Scanner;,
        Lcom/android/settings/wifi/VoWifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final EXTRA_AUTO_FINISH_ON_CONNECT:Ljava/lang/String; = "wifi_auto_finish_on_connect"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field protected static final EXTRA_SHOW_CUSTOM_BUTTON:Ljava/lang/String; = "wifi_show_custom_button"

.field protected static final EXTRA_SHOW_WIFI_REQUIRED_INFO:Ljava/lang/String; = "wifi_show_wifi_required_info"

.field private static final HTC_SETTING_DB_URI:Landroid/net/Uri; = null

.field private static KEY_EASY_SETTINGS:Ljava/lang/String; = null

.field private static KEY_ENABLE_WIFI:Ljava/lang/String; = null

.field private static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_AUTO_JOIN:I = 0xe

.field private static final MENU_ID_BLOCK_NETWORK_NOTIFICATION:I = 0xc

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_DISCONNECT:I = 0xb

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_P2P:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field private static final MENU_ID_SET_FIRST_PRIORITY:I = 0xa

.field private static final MENU_ID_UNBLOCK_NETWORK_NOTIFICATION:I = 0xd

.field private static final MENU_ID_WIFI_CALLING:I = 0xf

.field private static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final RESULT_SKIP:I = 0x1

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "VoWifiSettings"

.field public static final WEP_ERROR:I = 0x14

.field public static final WFC_CONFIG:Ljava/lang/String; = "key_config"

.field public static final WFC_INFO:Ljava/lang/String; = "key_wfcinfo"

.field public static final WFC_NETWORK_ID:Ljava/lang/String; = "key_networkid"

.field public static final WFC_SECURITY:Ljava/lang/String; = "key_security"

.field public static final WFC_SSID:Ljava/lang/String; = "key_ssid"

.field public static final WFC_STATE_NOT_PROVISIONED:I = 0x0

.field public static final WFC_STATE_PROVISIONED_IDLE:I = 0x320

.field public static final WFC_STATE_PROVISIONED_LONG_ACTIVE:I = 0x3e8

.field public static final WFC_STATE_PROVISIONED_MASTER_OFF:I = 0xc8

.field public static final WFC_STATE_PROVISIONED_MASTER_ON_PROFILE_OFF:I = 0x1f4

.field public static final WFC_STATE_PROVISIONED_MASTER_ON_PROFILE_ON_LOSE_SIGNAL:I = 0x2bc

.field public static final WFC_STATE_PROVISIONED_MASTER_ON_PROFILE_ON_NOT_ALLOWED:I = 0x258

.field public static final WFC_STATE_PROVISIONED_MASTER_TURING_OFF:I = 0x12c

.field public static final WFC_STATE_PROVISIONED_MASTER_TURING_ON:I = 0x190

.field public static final WFC_STATE_PROVISIONED_SHORT_ACTIVE:I = 0x384

.field public static final WFC_STATE_PROVISIONING:I = 0x64

.field private static final WIFI_AND_MOBILE_SKIPPED_DIALOG_ID:I = 0x5

.field private static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field private static final WIFI_SKIPPED_DIALOG_ID:I = 0x4

.field private static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3


# instance fields
.field private DEBUG:Z

.field private bRecverregistered:Ljava/lang/Boolean;

.field private cr:Landroid/content/ContentResolver;

.field private m8021xAp:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mAutoFinishOnConnection:Z

.field private mBlockedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

.field private mCWRemoteConnection:Landroid/content/ServiceConnection;

.field private mCWService:Lcom/htc/cw/ICWService;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEasySettingsGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIPTEnabled:Z

.field protected mInXlSetupWizard:Z

.field private mIsBound:Z

.field private mKeyStoreNetworkId:I

.field private mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

.field private mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mShowFlag:Z

.field protected mType:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWFCDBObserver:Landroid/database/ContentObserver;

.field private mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "key_easy_settings"

    sput-object v0, Lcom/android/settings/wifi/VoWifiSettings;->KEY_EASY_SETTINGS:Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.htc.vowifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/VoWifiSettings;->HTC_SETTING_DB_URI:Landroid/net/Uri;

    .line 1229
    const-string v0, "key_enable_wifi"

    sput-object v0, Lcom/android/settings/wifi/VoWifiSettings;->KEY_ENABLE_WIFI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 326
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    iput v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    .line 209
    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    .line 210
    iput-boolean v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIsBound:Z

    .line 211
    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mKeyStoreNetworkId:I

    .line 256
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->DEBUG:Z

    .line 314
    new-instance v0, Lcom/android/settings/wifi/VoWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/VoWifiSettings$1;-><init>(Lcom/android/settings/wifi/VoWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWFCDBObserver:Landroid/database/ContentObserver;

    .line 1769
    iput-boolean v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mShowFlag:Z

    .line 1856
    new-instance v0, Lcom/android/settings/wifi/VoWifiSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/VoWifiSettings$12;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/android/settings/wifi/VoWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/VoWifiSettings$2;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/VoWifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    .line 347
    return-void
.end method

.method private CreatePerferenceFromDB()V
    .locals 10

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1233
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c0b23

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->addCategoryPerfecnce(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    .line 1234
    .local v1, WFCPrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c0b24

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->addCategoryPerfecnce(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    .line 1235
    .local v0, PrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->getWFCDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1236
    .local v3, c:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 1237
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1238
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1239
    new-instance v2, Lcom/android/settings/wifi/WFCAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v2, v7, v3, v8}, Lcom/android/settings/wifi/WFCAccessPoint;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 1240
    .local v2, WFCaccessPoint:Lcom/android/settings/wifi/WFCAccessPoint;
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1241
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_0

    const-string v7, "VoWifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info from DB: ssid/security = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/settings/wifi/WFCAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/settings/wifi/WFCAccessPoint;->security:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1246
    .end local v2           #WFCaccessPoint:Lcom/android/settings/wifi/WFCAccessPoint;
    :cond_1
    if-eqz v3, :cond_2

    .line 1247
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1249
    :cond_2
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 1250
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1251
    .local v4, emptyPreference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7f0c0b22

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1252
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1255
    .end local v4           #emptyPreference:Lcom/htc/preference/HtcPreference;
    :cond_3
    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v5, enablWifiPref:Lcom/htc/preference/HtcPreference;
    sget-object v7, Lcom/android/settings/wifi/VoWifiSettings;->KEY_ENABLE_WIFI:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 1257
    const v7, 0x7f0c0b25

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1258
    iget-object v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    .line 1259
    .local v6, state:I
    const-string v7, "VoWifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifi state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 1261
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1263
    :cond_4
    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1266
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/VoWifiSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/VoWifiSettings;->updateScanningCursor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/VoWifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/VoWifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/VoWifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mShowFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/htc/cw/ICWService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/VoWifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method private addCategoryPerfecnce(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 2
    .parameter "Title"

    .prologue
    .line 1622
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v0, prefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1624
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1625
    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1296
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1929
    iget-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1932
    :cond_0
    return-void
.end method

.method private checkBlockedAPSsid(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1415
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return v2

    .line 1418
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1419
    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " blockedSSID size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1422
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1423
    .local v0, blockedSSID:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_3

    .line 1424
    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " blockedSSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1428
    const/4 v2, 0x1

    goto :goto_0

    .line 1421
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkWepStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1628
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    .line 1631
    const-string v1, "VoWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWepStatus - ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", networkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/VoWifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 1638
    .local v0, accesspoint:Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v1, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    :cond_5
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_6

    .line 1641
    const-string v1, "VoWifiSettings"

    const-string v2, "showWepErrorDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_6
    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1645
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0
.end method

.method private disableAllNetworks()V
    .locals 3

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 2098
    const-string v0, "VoWifiSettings"

    const-string v1, "disableAllNetworks, mWifiManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 2112
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedAccessPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method private findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;
    .locals 5
    .parameter "networkId"
    .parameter "bssid"
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 2084
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 2085
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 2086
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 2087
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2088
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPoint;->matches(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 2093
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :goto_1
    return-object v0

    .line 2084
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2093
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWFCDB(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1212
    const-string v3, "ssid = ?"

    .line 1213
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1214
    .local v4, selArg:[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1215
    const/4 v3, 0x0

    .line 1219
    :goto_0
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "ssid"

    aput-object v0, v2, v1

    const-string v0, "security"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "bssid"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "networkid"

    aput-object v1, v2, v0

    .line 1221
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/wifi/VoWifiSettings;->HTC_SETTING_DB_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1225
    :goto_1
    return-object v6

    .line 1217
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    new-array v4, v5, [Ljava/lang/String;

    .end local v4           #selArg:[Ljava/lang/String;
    aput-object p1, v4, v1

    .restart local v4       #selArg:[Ljava/lang/String;
    goto :goto_0

    .line 1223
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1224
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "VoWifiSettings"

    const-string v1, "fail to get user setting"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWFCState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2293
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->cr:Landroid/content/ContentResolver;

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2294
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 2295
    .local v8, state:I
    if-eqz v6, :cond_1

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2297
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2298
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2299
    .local v7, mString:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2300
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2303
    .end local v7           #mString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2305
    :cond_1
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFC state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return v8
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1458
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->updateWifiState(I)V

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1463
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    .line 1464
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1465
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/VoWifiSettings;->updateScanningCursor(Z)V

    goto :goto_0

    .line 1467
    :cond_3
    const-string v7, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1474
    const-string v7, "newState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/SupplicantState;

    .line 1477
    .local v6, state:Landroid/net/wifi/SupplicantState;
    const-string v7, "newState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/SupplicantState;

    const-string v8, "supplicantError"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "supplicantError"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/wifi/VoWifiSettings;->handleSupplicantStateError(Landroid/net/wifi/SupplicantState;ZI)V

    .line 1483
    iget-object v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1484
    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1486
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1489
    .end local v6           #state:Landroid/net/wifi/SupplicantState;
    :cond_5
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1490
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1492
    .local v4, info:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1493
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->changeNextButtonState(Z)V

    .line 1494
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    .line 1495
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/VoWifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1496
    iget-boolean v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1498
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1499
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1500
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1504
    .end local v1           #activity:Landroid/app/Activity;
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1505
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1506
    :cond_7
    const-string v7, "android.net.wifi.ERROR"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1507
    const-string v7, "errorCode"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1508
    .local v3, errorCode:I
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 1510
    :sswitch_0
    const v7, 0x7f0c007d

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1514
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->checkWepStatus()V

    goto/16 :goto_0

    .line 1517
    .end local v3           #errorCode:I
    :cond_8
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1519
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1521
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1522
    .local v5, netinfo:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sget v8, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->TYPE_USBNET:I

    if-ne v7, v8, :cond_0

    .line 1523
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    .line 1524
    const-string v7, "VoWifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive USBNET connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-boolean v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    if-eqz v7, :cond_0

    .line 1526
    iget-object v7, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v7}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    goto/16 :goto_0

    .line 1508
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSupplicantStateError(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 5
    .parameter "state"
    .parameter "hasError"
    .parameter "supplicantError"

    .prologue
    const/4 v4, 0x0

    .line 1653
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "VoWifiSettings"

    const-string v1, "handleSupplicantStateError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    .line 1694
    :cond_1
    :goto_0
    return-void

    .line 1656
    :cond_2
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 1657
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupplicantState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supplicantError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_3
    if-eqz p2, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/VoWifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1670
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/VoWifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1673
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 1674
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last info security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    .line 1677
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last info security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_5
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 1682
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->showErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    .line 1683
    iput-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1691
    :cond_6
    :goto_1
    iput-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    .line 1684
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    .line 1685
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1686
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->show8021xWarningDialog()V

    goto :goto_1
.end method

.method private isPhone()Z
    .locals 2

    .prologue
    .line 1067
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1069
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScanning(Landroid/net/wifi/SupplicantState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 2245
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_0

    .line 2246
    const/4 v0, 0x1

    .line 2248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchWFCDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 6
    .parameter "WFCaccessPoint"

    .prologue
    .line 2274
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog ssid/security: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2276
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2277
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2278
    .local v2, parcelable:Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    .line 2279
    const-string v3, "key_config"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2281
    :cond_1
    const-string v3, "key_ssid"

    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const-string v3, "key_security"

    iget v4, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2283
    const-string v3, "key_wfcinfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2284
    const-string v3, "com.htc.vowifi"

    const-string v4, "com.htc.vowifi.VoWifiDialog"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2285
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2286
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 2287
    const-string v3, "VoWifiSettings"

    const-string v4, "launch wifidialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_2
    return-void
.end method

.method private registerReceiver(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2315
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2316
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    .line 2318
    :cond_0
    if-eqz p1, :cond_3

    .line 2319
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2320
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2321
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    :goto_1
    move v2, v1

    .line 2335
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 2316
    goto :goto_0

    .line 2323
    :cond_2
    const-string v0, "VoWifiSettings"

    const-string v1, "been regisgtered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2327
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2328
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2329
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->bRecverregistered:Ljava/lang/Boolean;

    goto :goto_1

    .line 2331
    :cond_4
    const-string v0, "VoWifiSettings"

    const-string v1, "been unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setOffMessage()V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0b21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1290
    return-void
.end method

.method private show8021xWarningDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c07f2

    const v4, 0x7f0c07f0

    .line 1772
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1774
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1776
    .local v0, accesspoint:Lcom/android/settings/wifi/AccessPoint;
    iput-object v6, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1778
    const/4 v1, 0x0

    .line 1780
    .local v1, readonly:Z
    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1781
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a5

    new-instance v4, Lcom/android/settings/wifi/VoWifiSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/VoWifiSettings$10;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1790
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1808
    .end local v0           #accesspoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #readonly:Z
    :cond_3
    :goto_0
    return-void

    .line 1793
    .restart local v0       #accesspoint:Lcom/android/settings/wifi/AccessPoint;
    .restart local v1       #readonly:Z
    :cond_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c1004

    new-instance v4, Lcom/android/settings/wifi/VoWifiSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/VoWifiSettings$11;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1804
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1805
    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 990
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->removeDialog(I)V

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 996
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 997
    iput-boolean p2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgEdit:Z

    .line 999
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(I)V

    .line 1000
    return-void
.end method

.method private showErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 4
    .parameter "accessPoint"

    .prologue
    const/4 v3, 0x2

    .line 1697
    const-string v0, "VoWifiSettings"

    const-string v1, "showErrorDialog() - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1700
    :cond_2
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v0, v3, :cond_3

    .line 1701
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1703
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1704
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1729
    :cond_3
    return-void
.end method

.method private showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1078
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1080
    return-void
.end method

.method private showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 1083
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1084
    const-string v0, "VoWifiSettings"

    const-string v1, "showWepInvalidDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1090
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1092
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 1534
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1535
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 1540
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    .line 1545
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1546
    if-eqz p1, :cond_2

    .line 1547
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1550
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_5

    .line 1552
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1553
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 1554
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1555
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1550
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1542
    .end local v1           #i:I
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1559
    .restart local v1       #i:I
    :cond_5
    sget-boolean v3, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v3, :cond_0

    .line 1560
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    if-eqz v3, :cond_6

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1562
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    if-eqz v3, :cond_0

    .line 1563
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private updateEasySettings()V
    .locals 5

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1602
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, actstr:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "com.android.settings.SubSettings"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    sget-boolean v4, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EASY_SETTINGS:Z

    if-eqz v4, :cond_0

    .line 1607
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1608
    .local v2, easySettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1609
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    sget-object v4, Lcom/android/settings/wifi/VoWifiSettings;->KEY_EASY_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 1610
    const v4, 0x7f0c0916

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1611
    const v4, 0x7f0c0917

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1612
    const v4, 0x7f0c0915

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1614
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1618
    .end local v1           #actstr:Ljava/lang/String;
    .end local v2           #easySettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private updateScanningCursor(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getWFCState()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 2265
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 1569
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1570
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1574
    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1575
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 1576
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1580
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1594
    :pswitch_0
    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1595
    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1596
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    .line 1597
    :goto_0
    return-void

    .line 1582
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 1580
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected constructAccessPoints()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 1324
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v5

    .line 1325
    .local v5, enableBlockAp:Z
    iget-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    .line 1327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$Multimap;

    const/4 v11, 0x0

    invoke-direct {v2, p0, v11}, Lcom/android/settings/wifi/VoWifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/VoWifiSettings$1;)V

    .line 1332
    .local v2, apMap:Lcom/android/settings/wifi/VoWifiSettings$Multimap;,"Lcom/android/settings/wifi/VoWifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 1333
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_4

    .line 1334
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 1335
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .line 1336
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/wifi/VoWifiSettings;->isWFCAPN(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1337
    new-instance v0, Lcom/android/settings/wifi/WFCAccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v0, v11, v3, v12}, Lcom/android/settings/wifi/WFCAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 1338
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "use WFCAPN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_1
    iget-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v12, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1344
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    if-eqz v5, :cond_3

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1346
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_0

    .line 1347
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configured result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " set to blocked"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_0
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1357
    :cond_1
    :goto_2
    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/VoWifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1341
    :cond_2
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v0, v11, v3, v12}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    goto :goto_1

    .line 1351
    :cond_3
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_1

    .line 1352
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configured result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not blocked"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1361
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 1362
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_f

    .line 1363
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 1365
    .local v9, result:Landroid/net/wifi/ScanResult;
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "[IBSS]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1369
    iget-boolean v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug scanresults results: ssid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", result.level: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_6
    const/4 v6, 0x0

    .line 1371
    .local v6, found:Z
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/VoWifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1372
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1373
    const/4 v6, 0x1

    .line 1375
    :cond_8
    if-eqz v5, :cond_7

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_7

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1376
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_9

    .line 1377
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " set to blocked"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_9
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    goto :goto_4

    .line 1382
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_a
    if-nez v6, :cond_5

    .line 1383
    const/4 v0, 0x0

    .line 1384
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/wifi/VoWifiSettings;->isWFCAPN(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1385
    new-instance v0, Lcom/android/settings/wifi/WFCAccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v0, v11, v9, v12}, Lcom/android/settings/wifi/WFCAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V

    .line 1386
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "use WFCAPN:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    if-eqz v5, :cond_c

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_c

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1393
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_b

    .line 1394
    const-string v11, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " new result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " set to blocked"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_b
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1399
    :cond_c
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_d

    .line 1402
    :cond_d
    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/VoWifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1389
    :cond_e
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v0, v11, v9, v12}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V

    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    goto :goto_5

    .line 1408
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v6           #found:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #result:Landroid/net/wifi/ScanResult;
    :cond_f
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1409
    return-object v1
.end method

.method forget()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2118
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v3, :cond_0

    .line 2120
    const-string v0, "VoWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :goto_0
    return-void

    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2125
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 2127
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    .line 2130
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    .line 2133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 2157
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 2158
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_0

    .line 2159
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 2161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasSimProblem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1111
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/VoWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1113
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isWFCAPN(Ljava/lang/String;I)Z
    .locals 6
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 1298
    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searched ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/VoWifiSettings;->getWFCDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1300
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1301
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1302
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1303
    const-string v3, "ssid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, wfs_ssid:Ljava/lang/String;
    const-string v3, "security"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1305
    .local v1, wfc_security:I
    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WFCAPN ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    if-ne p2, v1, :cond_0

    .line 1310
    const/4 v3, 0x1

    .line 1318
    .end local v1           #wfc_security:I
    .end local v2           #wfs_ssid:Ljava/lang/String;
    :goto_1
    return v3

    .line 1312
    .restart local v1       #wfc_security:I
    .restart local v2       #wfs_ssid:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1315
    .end local v1           #wfc_security:I
    .end local v2           #wfs_ssid:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 1316
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 433
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mP2pSupported:Z

    .line 436
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 437
    const-string v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mUserManager:Landroid/os/UserManager;

    .line 439
    new-instance v9, Lcom/android/settings/wifi/VoWifiSettings$3;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/VoWifiSettings$3;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 454
    new-instance v9, Lcom/android/settings/wifi/VoWifiSettings$4;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/VoWifiSettings$4;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 469
    new-instance v9, Lcom/android/settings/wifi/VoWifiSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/VoWifiSettings$5;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 484
    if-eqz p1, :cond_0

    const-string v9, "wifi_ap_state"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 486
    const-string v9, "edit_mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgEdit:Z

    .line 487
    const-string v9, "wifi_ap_state"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 491
    .local v3, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 494
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "wifi_auto_finish_on_connect"

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAutoFinishOnConnection:Z

    .line 496
    iget-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v9, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->hasNextButton()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 504
    .local v4, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 506
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/app/Activity;->setResult(I)V

    .line 507
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 608
    .end local v4           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 514
    :cond_2
    const-string v9, "wifi_enable_next_on_connect"

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEnableNextOnConnection:Z

    .line 516
    iget-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEnableNextOnConnection:Z

    if-eqz v9, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->hasNextButton()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 518
    const-string v9, "connectivity"

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 520
    .restart local v4       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_3

    .line 521
    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 523
    .local v5, info:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->changeNextButtonState(Z)V

    .line 528
    .end local v4           #connectivity:Landroid/net/ConnectivityManager;
    .end local v5           #info:Landroid/net/NetworkInfo;
    :cond_3
    const v9, 0x7f06005b

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->addPreferencesFromResource(I)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 530
    .local v0, act:Landroid/app/Activity;
    const-string v9, "VoWifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activity is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v2, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v2, v3}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 563
    .local v2, actionBarSwitch:Lcom/android/settings/framework/widget/HtcToggleButton;
    iget-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSetupWizardMode:Z

    if-nez v9, :cond_7

    .line 564
    new-instance v9, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    invoke-direct {v9, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 567
    instance-of v9, v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v9, :cond_6

    move-object v8, v3

    .line 568
    check-cast v8, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 569
    .local v8, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsHidingHeaders()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsMultiPane()Z

    move-result v9

    if-nez v9, :cond_5

    .line 570
    :cond_4
    invoke-virtual {v8, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 572
    :cond_5
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v8, v9}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->requestHandlers()V

    .line 575
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    .line 576
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 578
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v8           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v9, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindToggleButton(Lcom/android/settings/framework/widget/HtcToggleButton;)V

    .line 579
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v9}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 582
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020004

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 583
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/VoWifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 587
    :cond_8
    iget-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSetupWizardMode:Z

    if-nez v9, :cond_9

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 590
    :cond_9
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/VoWifiSettings;->setHasOptionsMenu(Z)V

    .line 593
    sget-boolean v9, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v9, :cond_a

    .line 594
    new-instance v7, Landroid/os/HandlerThread;

    const-string v9, "WifiSettingsThread"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 595
    .local v7, mainThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 596
    new-instance v9, Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/VoWifiSettings$CWHandler;-><init>(Lcom/android/settings/wifi/VoWifiSettings;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.cw.CWService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v10, v11, v13}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIsBound:Z

    .line 602
    .end local v7           #mainThread:Landroid/os/HandlerThread;
    :cond_a
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 603
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mBlockedList:Ljava/util/List;

    .line 607
    :cond_b
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2152
    iput-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2153
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 2154
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 1935
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1936
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->forget()V

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1940
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/VoWifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1942
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1943
    const-string v0, "VoWifiSettings"

    const-string v1, "sendEmptyMessage MSG_REGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1946
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWUnRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1947
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1949
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1950
    const-string v0, "VoWifiSettings"

    const-string v1, "sendEmptyMessage MSG_UNREGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1955
    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 1956
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_4

    .line 1958
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c08a9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/VoWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c08a8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a3

    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/VoWifiSettings$13;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1972
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 861
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 862
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 937
    :cond_0
    :goto_0
    return v0

    .line 864
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 937
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 866
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    if-eqz v1, :cond_2

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->showIPTAlertDialog()V

    goto :goto_0

    .line 870
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_3

    .line 871
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_4

    .line 875
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 876
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 879
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v1, :cond_5

    .line 886
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 888
    :cond_5
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    const-string v1, "VoWifiSettings"

    const-string v2, "get negative network id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 897
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->setFirstPriority()V

    goto :goto_0

    .line 901
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->disableAllNetworks()V

    goto :goto_0

    .line 906
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 907
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 911
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 912
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 917
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v1, :cond_9

    .line 918
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    if-nez v1, :cond_7

    .line 919
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_6

    const-string v1, "VoWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable auto join network id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/wifi/WifiManagerWrapper;->setVFAutoJoin(Landroid/net/wifi/WifiManager;ZI)V

    goto/16 :goto_0

    .line 923
    :cond_7
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_8

    const-string v1, "VoWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable network id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v1, v4, v2}, Lcom/android/settings/wifi/WifiManagerWrapper;->setVFAutoJoin(Landroid/net/wifi/WifiManager;ZI)V

    goto/16 :goto_0

    .line 927
    :cond_9
    const-string v1, "VoWifiSettings"

    const-string v2, "invalid net id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->launchWFCDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSetupWizardMode:Z

    .line 353
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->cr:Landroid/content/ContentResolver;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->isSupportVoWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 360
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 783
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 788
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/WFCAccessPoint;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 789
    check-cast v0, Lcom/android/settings/wifi/WFCAccessPoint;

    .line 790
    .local v0, WFCaccessPoint:Lcom/android/settings/wifi/WFCAccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WFCAccessPoint;->isCreateByDB()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 791
    const-string v3, "VoWifiSettings"

    const-string v4, "wifi is closed so return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v0           #WFCaccessPoint:Lcom/android/settings/wifi/WFCAccessPoint;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    :goto_0
    return-void

    .line 796
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 797
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    iput-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 798
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 799
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_2

    .line 801
    const/4 v3, 0x7

    const v4, 0x7f0c0d4a

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 803
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v3, :cond_9

    .line 805
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    if-eqz v3, :cond_3

    .line 806
    const/16 v3, 0xb

    const v4, 0x7f0c07ce

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 808
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_4

    .line 810
    const/16 v3, 0x8

    const v4, 0x7f0c0d4b

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 811
    const/16 v3, 0x9

    const v4, 0x7f0c0d4c

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 815
    :cond_4
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->ENABLE_FIRST_PRIORITY:Z

    if-eqz v3, :cond_5

    .line 816
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->isFirstPriority()Z

    move-result v3

    if-nez v3, :cond_5

    .line 817
    const/16 v3, 0xa

    const v4, 0x7f0c0874

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 822
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/CustomUtil;->autoJoinSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 823
    const/16 v3, 0xe

    const v4, 0x7f0c07cf

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 825
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 826
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiManagerWrapper;->getVFAutoJoin(Landroid/net/wifi/WifiManager;I)I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 828
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v6, v3, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    .line 829
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 841
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v3, :cond_7

    .line 842
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v3, :cond_a

    .line 843
    const/16 v3, 0xd

    const v4, 0x7f0c07e8

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 849
    :cond_7
    :goto_2
    const/16 v3, 0xf

    const v4, 0x7f0c0b20

    invoke-interface {p1, v7, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 831
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v7, v3, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    .line 833
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 838
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_9
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_6

    const-string v3, "VoWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting error network id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 845
    :cond_a
    const/16 v3, 0xc

    const v4, 0x7f0c07e7

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f0c0d95

    const v4, 0x7f0c0d94

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1004
    packed-switch p1, :pswitch_data_0

    .line 1063
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1006
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1007
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1009
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/settings/wifi/VoWifiSettings;->mType:I

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1011
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1015
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1016
    new-instance v3, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgEdit:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-direct {v3, v4, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1018
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1016
    goto :goto_1

    .line 1020
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    :pswitch_1
    new-instance v1, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1022
    :pswitch_2
    new-instance v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    goto :goto_0

    .line 1024
    :pswitch_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0d96

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/VoWifiSettings$7;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/VoWifiSettings$6;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1043
    :pswitch_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0d97

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/VoWifiSettings$9;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/VoWifiSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/VoWifiSettings$8;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0x7f0c0d42

    const v6, 0x7f0c05be

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 676
    .local v0, wifiIsEnabled:Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_1

    .line 677
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 681
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 711
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 685
    :cond_1
    const/4 v1, 0x6

    const v2, 0x7f0c0d48

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 689
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 692
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02028d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 696
    const/4 v1, 0x2

    const v2, 0x7f0c0d46

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 700
    iget-boolean v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mP2pSupported:Z

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x3

    const v2, 0x7f0c0d47

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 707
    :cond_2
    const/4 v1, 0x5

    const v2, 0x7f0c0d49

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWHandler:Lcom/android/settings/wifi/VoWifiSettings$CWHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$CWHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 653
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 662
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIsBound:Z

    if-eqz v0, :cond_2

    .line 663
    const-string v0, "VoWifiSettings"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIsBound:Z

    .line 668
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 2235
    iget-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mShowFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 2236
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x5

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 2237
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 2238
    iput-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 2239
    iput-object v4, p0, Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 2240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mShowFlag:Z

    .line 2242
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return v6

    .line 734
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 778
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 736
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(I)V

    move v6, v7

    .line 737
    goto :goto_0

    .line 739
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0dae

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v7

    .line 748
    goto :goto_0

    .line 746
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/VoWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 750
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(I)V

    move v6, v7

    .line 751
    goto :goto_0

    .line 753
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    iget-boolean v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->showIPTAlertDialog()V

    :cond_2
    :goto_2
    move v6, v7

    .line 760
    goto :goto_0

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->forceScan()V

    goto :goto_2

    .line 762
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->onAddNetworkPressed()V

    :cond_4
    move v6, v7

    .line 765
    goto :goto_0

    .line 767
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_5

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d99

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    move v6, v7

    .line 776
    goto/16 :goto_0

    .line 774
    :cond_5
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/VoWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 638
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 640
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onPause()V

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->registerReceiver(Z)Z

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    .line 645
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 944
    instance-of v1, p2, Lcom/android/settings/wifi/WFCAccessPoint;

    if-eqz v1, :cond_0

    .line 945
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 946
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->launchWFCDialog(Lcom/android/settings/wifi/AccessPoint;)V

    move v1, v2

    .line 986
    :goto_0
    return v1

    .line 948
    .restart local p2
    :cond_0
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 949
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iput-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 950
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->launchWFCDialog(Lcom/android/settings/wifi/AccessPoint;)V

    move v1, v2

    .line 952
    goto :goto_0

    .line 955
    :cond_1
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 956
    iget-boolean v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mIPTEnabled:Z

    if-eqz v1, :cond_2

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->showIPTAlertDialog()V

    move v1, v2

    .line 958
    goto :goto_0

    .line 960
    :cond_2
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 971
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/VoWifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v1, v2

    .line 986
    goto :goto_0

    .line 972
    .restart local p2
    :cond_3
    instance-of v1, p2, Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_5

    .line 973
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/wifi/VoWifiSettings;->KEY_ENABLE_WIFI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-ne v1, v2, :cond_4

    .line 976
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 977
    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_4
    move v1, v2

    .line 980
    goto :goto_0

    .line 984
    .end local v0           #key:Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 612
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 616
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onResume()V

    .line 619
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->registerReceiver(Z)Z

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->cr:Landroid/content/ContentResolver;

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    .line 634
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 716
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 724
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 727
    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->pause()V

    .line 2172
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 2145
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    .line 2181
    :cond_0
    return-void
.end method

.method public showIPTAlertDialog()V
    .locals 3

    .prologue
    .line 2066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2067
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/IPTAlertDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2068
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2069
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 2070
    return-void
.end method

.method public showWpsPbcDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)V
    .locals 3
    .parameter "type"
    .parameter "config"

    .prologue
    .line 2057
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2058
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2059
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2060
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    const-string v1, "config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2062
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 2063
    return-void
.end method

.method public startEasyWifiSettings(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    .line 2253
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    .line 2254
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0916

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2260
    :goto_0
    return-void

    .line 2258
    :cond_0
    const-class v0, Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v4}, Lcom/android/settings/wifi/VoWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 1979
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1981
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1982
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_1

    .line 1983
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1985
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 1988
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1989
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1990
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    .line 2050
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2051
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mScanner:Lcom/android/settings/wifi/VoWifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->resume()V

    .line 2053
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    .line 2054
    return-void

    .line 1993
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_8

    .line 1994
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 1995
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1996
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_4

    .line 1997
    const-string v1, "VoWifiSettings"

    const-string v2, "reconnect to SECURITY_WEP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isInvalidPassword()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2001
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2003
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2006
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0

    .line 2009
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2010
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2013
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2014
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2018
    :cond_8
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2019
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 2023
    :cond_9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-eq v1, v2, :cond_a

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2025
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 2029
    :cond_a
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isWepSecurity()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2030
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2032
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2034
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2035
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0

    .line 2039
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 2042
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/VoWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2043
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2044
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0
.end method

.method protected updateAccessPoints()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1125
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1127
    const v9, 0x7f0c0b26

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1130
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getWFCState()I

    move-result v7

    .line 1131
    .local v7, state:I
    const/16 v9, 0x1f4

    if-ge v7, v9, :cond_3

    .line 1132
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/VoWifiSettings;->registerReceiver(Z)Z

    .line 1136
    :goto_1
    iget-object v9, p0, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 1138
    .local v8, wifiState:I
    sparse-switch v7, :sswitch_data_0

    .line 1199
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1134
    .end local v8           #wifiState:I
    :cond_3
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/VoWifiSettings;->registerReceiver(Z)Z

    goto :goto_1

    .line 1142
    .restart local v8       #wifiState:I
    :sswitch_0
    const-string v9, "VoWifiSettings"

    const-string v10, "WFC should be provisioned"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->setOffMessage()V

    .line 1148
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1151
    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1159
    :sswitch_4
    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v3

    .line 1161
    .local v3, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v12, 0x7f0c0b23

    invoke-virtual {v9, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->addCategoryPerfecnce(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    .line 1164
    .local v1, WFCPrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v12, 0x7f0c0b24

    invoke-virtual {v9, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/VoWifiSettings;->addCategoryPerfecnce(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    .line 1165
    .local v0, PrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .line 1166
    .local v2, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1167
    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/os/HtcServiceManager;->getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;

    move-result-object v4

    .line 1170
    .local v4, dm:Lcom/htc/service/DeviceManager3LM;
    if-eqz v4, :cond_5

    move v9, v10

    :goto_3
    iget-object v12, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/htc/service/DeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v9, v12

    if-eqz v9, :cond_4

    .line 1171
    instance-of v9, v2, Lcom/android/settings/wifi/WFCAccessPoint;

    if-eqz v9, :cond_6

    .line 1172
    const-string v9, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add to WFC APN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v9, v11

    .line 1170
    goto :goto_3

    .line 1175
    :cond_6
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1176
    const-string v9, "VoWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add to WFC APN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1180
    .end local v4           #dm:Lcom/htc/service/DeviceManager3LM;
    :cond_7
    instance-of v9, v2, Lcom/android/settings/wifi/WFCAccessPoint;

    if-eqz v9, :cond_8

    .line 1181
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 1183
    :cond_8
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 1187
    .end local v2           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 1188
    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/VoWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v5, emptyPreference:Lcom/htc/preference/HtcPreference;
    const v9, 0x7f0c0b22

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1190
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 1195
    .end local v0           #PrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v1           #WFCPrefCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v5           #emptyPreference:Lcom/htc/preference/HtcPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/VoWifiSettings;->CreatePerferenceFromDB()V

    goto/16 :goto_0

    .line 1138
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method
